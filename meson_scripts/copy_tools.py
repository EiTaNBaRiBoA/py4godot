import shutil
from shutil import copy, copytree, rmtree
import os
import glob
import json

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)


def strip_platform(text):
    text = text[1:]
    return text.lstrip("linux64").lstrip("windows64").lstrip("windows").lstrip("linux")


def run(platform):
    # copying all the files from build to the folder of the addon
    list_dll = []
    if "windows" in platform:
        list_dll = glob.glob("**/*.dll", recursive=True)
    elif "linux" in platform:
        list_dll = glob.glob("**/*.so", recursive=True)

    for entry in list_dll:
        entry = entry.lstrip("/")
        if entry.startswith("build"):
            if "windows" in entry:
                os.makedirs(os.path.dirname(
                    f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(
                        entry.lstrip("build").replace("#", "/"))),
                    exist_ok=True)
                copy(entry,
                     f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(
                         entry.lstrip("build").replace("#", "/")).
                     replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp
            else:
                os.makedirs(os.path.dirname(
                    f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/" + strip_platform(
                        entry.lstrip("build").replace("#", "/"))),
                    exist_ok=True)
                copy(entry,
                     f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/" + strip_platform(
                         entry.lstrip("build").replace("#", "/")).
                     replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp

    if "windows" in platform:
        list_dll = glob.glob("**/*.pdb", recursive=True)
    else:
        return
    for entry in list_dll:
        entry = entry.lstrip("/")
        if entry.startswith("build"):
            os.makedirs(os.path.dirname(
                f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(
                    entry.lstrip("build").replace("#", "/"))),
                exist_ok=True)
            copy(entry,
                 f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(
                     entry.lstrip("build").replace("#", "/")))  # dst can be a folder; use copy2() to preserve timestamp


def copy_main(platform):
    # Todo: check whether python39.dll can be in another path copying the main.pyd inside the python version,
    #  as the pythin39.dll must currently be in the same directory as main.pyd/main.so
    if "windows" in platform:
        copy(f"build/{platform}/main.dll",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/main.dll")
    elif "linux" in platform:
        copy(f"build/{platform}/main.so",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/bin/main.so")


def copy_tests(platform):
    """copy plugin inside godot"""
    core_tests = glob.glob("tests/core/*")
    for core_test in core_tests:
        if os.path.exists(f"{core_test}/addons/{platform}"):
            rmtree(f"{core_test}/addons/{platform}")
        copytree(f"build/final/{platform}", f"{core_test}/addons/{platform}")

    binding_tests = glob.glob("tests/binding/*")
    for binding_test in binding_tests:
        if os.path.exists(f"{binding_test}/addons/{platform}"):
            rmtree(f"{binding_test}/addons/{platform}")
        copytree(f"build/final/{platform}", f"{binding_test}/addons/{platform}")


def copy_stub_files(platform):
    for file in (glob.glob("**/*.pyi", recursive=True)):
        if not file.startswith("py4godot"):
            continue
        if "windows" in platform:
            os.makedirs(os.path.dirname(
                f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + file),
                exist_ok=True)
            copy(file,
                 f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + file)
        else:
            os.makedirs(os.path.dirname(
                f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/" + file),
                exist_ok=True)
            copy(file,
                 f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/" + file)


def copy_experimental(platform):
    for file in ["py4godot/pluginscript_api/utils/experimental.py",
                 "py4godot/pluginscript_api/utils/annotation_tools.py"]:
        if "windows" in platform:
            copy(file,
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + file)
        else:
            copy(file,
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/" + file)


def onerror(func, path, exc_info):
    """
    Error handler for ``shutil.rmtree``.

    If the error is due to an access error (read only file)
    it attempts to add write permission and then retries.

    If the error is for another reason it re-raises the error.

    Usage : ``shutil.rmtree(path, onerror=onerror)``
    """
    import stat
    # Is the error an access error?
    if not os.access(path, os.W_OK):
        os.chmod(path, stat.S_IWUSR)
        func(path)
    else:
        raise


def clear_build():
    if os.path.isdir("build/final"):
        shutil.rmtree(os.path.dirname(
            f"build/final/"), onerror=onerror)


if __name__ == "__main__":
    # copy_c_into_cache("windows64")
    copy_stub_files("windows64")
