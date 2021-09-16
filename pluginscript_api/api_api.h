/* Generated by Cython 0.29.24 */

#ifndef __PYX_HAVE_API__pluginscript_api__api
#define __PYX_HAVE_API__pluginscript_api__api
#ifdef __MINGW64__
#define MS_WIN64
#endif
#include "Python.h"

static PyObject *(*__pyx_api_f_16pluginscript_api_3api_set_api_core_pluginscript)(struct godot_gdnative_core_api_struct const *) = 0;
#define set_api_core_pluginscript __pyx_api_f_16pluginscript_api_3api_set_api_core_pluginscript
static godot_pluginscript_language_data *(*__pyx_api_f_16pluginscript_api_3api_init_pluginscript)(void) = 0;
#define init_pluginscript __pyx_api_f_16pluginscript_api_3api_init_pluginscript
static void (*__pyx_api_f_16pluginscript_api_3api_finish_pluginscript)(godot_pluginscript_instance_data *) = 0;
#define finish_pluginscript __pyx_api_f_16pluginscript_api_3api_finish_pluginscript
static void (*__pyx_api_f_16pluginscript_api_3api_add_global_constant_pluginscript)(godot_pluginscript_language_data *, godot_string const *, godot_variant const *) = 0;
#define add_global_constant_pluginscript __pyx_api_f_16pluginscript_api_3api_add_global_constant_pluginscript
static godot_pluginscript_script_manifest (*__pyx_api_f_16pluginscript_api_3api_init_pluginscript_desc)(godot_pluginscript_language_data *, godot_string const *, godot_string const *, godot_error *) = 0;
#define init_pluginscript_desc __pyx_api_f_16pluginscript_api_3api_init_pluginscript_desc
static void (*__pyx_api_f_16pluginscript_api_3api_finish_pluginscript_desc)(godot_pluginscript_script_data *) = 0;
#define finish_pluginscript_desc __pyx_api_f_16pluginscript_api_3api_finish_pluginscript_desc
static godot_pluginscript_instance_data *(*__pyx_api_f_16pluginscript_api_3api_init_pluginscript_instance)(godot_pluginscript_script_data *, godot_object *) = 0;
#define init_pluginscript_instance __pyx_api_f_16pluginscript_api_3api_init_pluginscript_instance
static void (*__pyx_api_f_16pluginscript_api_3api_finish_pluginscript_instance)(godot_pluginscript_instance_data *) = 0;
#define finish_pluginscript_instance __pyx_api_f_16pluginscript_api_3api_finish_pluginscript_instance
static bool (*__pyx_api_f_16pluginscript_api_3api_set_prop_pluginscript_instance)(godot_pluginscript_instance_data *, godot_string const *, godot_variant const *) = 0;
#define set_prop_pluginscript_instance __pyx_api_f_16pluginscript_api_3api_set_prop_pluginscript_instance
static bool (*__pyx_api_f_16pluginscript_api_3api_get_prop_pluginscript_instance)(godot_pluginscript_instance_data *, godot_string const *, godot_variant *) = 0;
#define get_prop_pluginscript_instance __pyx_api_f_16pluginscript_api_3api_get_prop_pluginscript_instance
static godot_variant (*__pyx_api_f_16pluginscript_api_3api_call_method_pluginscript_instance)(godot_pluginscript_instance_data *, godot_string_name const *, godot_variant const **, int, godot_variant_call_error *) = 0;
#define call_method_pluginscript_instance __pyx_api_f_16pluginscript_api_3api_call_method_pluginscript_instance
static PyObject *(*__pyx_api_f_16pluginscript_api_3api_pluginscript_get_template_source_code)(godot_pluginscript_language_data *, godot_string const *, godot_string const *) = 0;
#define pluginscript_get_template_source_code __pyx_api_f_16pluginscript_api_3api_pluginscript_get_template_source_code
static void (*__pyx_api_f_16pluginscript_api_3api_notification_pluginscript_instance)(godot_pluginscript_instance_data *, int) = 0;
#define notification_pluginscript_instance __pyx_api_f_16pluginscript_api_3api_notification_pluginscript_instance
#if !defined(__Pyx_PyIdentifier_FromString)
#if PY_MAJOR_VERSION < 3
  #define __Pyx_PyIdentifier_FromString(s) PyString_FromString(s)
#else
  #define __Pyx_PyIdentifier_FromString(s) PyUnicode_FromString(s)
#endif
#endif

#ifndef __PYX_HAVE_RT_ImportFunction
#define __PYX_HAVE_RT_ImportFunction
static int __Pyx_ImportFunction(PyObject *module, const char *funcname, void (**f)(void), const char *sig) {
    PyObject *d = 0;
    PyObject *cobj = 0;
    union {
        void (*fp)(void);
        void *p;
    } tmp;
    d = PyObject_GetAttrString(module, (char *)"__pyx_capi__");
    if (!d)
        goto bad;
    cobj = PyDict_GetItemString(d, funcname);
    if (!cobj) {
        PyErr_Format(PyExc_ImportError,
            "%.200s does not export expected C function %.200s",
                PyModule_GetName(module), funcname);
        goto bad;
    }
#if PY_VERSION_HEX >= 0x02070000
    if (!PyCapsule_IsValid(cobj, sig)) {
        PyErr_Format(PyExc_TypeError,
            "C function %.200s.%.200s has wrong signature (expected %.500s, got %.500s)",
             PyModule_GetName(module), funcname, sig, PyCapsule_GetName(cobj));
        goto bad;
    }
    tmp.p = PyCapsule_GetPointer(cobj, sig);
#else
    {const char *desc, *s1, *s2;
    desc = (const char *)PyCObject_GetDesc(cobj);
    if (!desc)
        goto bad;
    s1 = desc; s2 = sig;
    while (*s1 != '\0' && *s1 == *s2) { s1++; s2++; }
    if (*s1 != *s2) {
        PyErr_Format(PyExc_TypeError,
            "C function %.200s.%.200s has wrong signature (expected %.500s, got %.500s)",
             PyModule_GetName(module), funcname, sig, desc);
        goto bad;
    }
    tmp.p = PyCObject_AsVoidPtr(cobj);}
#endif
    *f = tmp.fp;
    if (!(*f))
        goto bad;
    Py_DECREF(d);
    return 0;
bad:
    Py_XDECREF(d);
    return -1;
}
#endif


static int import_pluginscript_api__api(void) {
  PyObject *module = 0;
  module = PyImport_ImportModule("pluginscript_api.api");
  if (!module) goto bad;
  if (__Pyx_ImportFunction(module, "set_api_core_pluginscript", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_set_api_core_pluginscript, "PyObject *(struct godot_gdnative_core_api_struct const *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "init_pluginscript", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_init_pluginscript, "godot_pluginscript_language_data *(void)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "finish_pluginscript", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_finish_pluginscript, "void (godot_pluginscript_instance_data *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "add_global_constant_pluginscript", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_add_global_constant_pluginscript, "void (godot_pluginscript_language_data *, godot_string const *, godot_variant const *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "init_pluginscript_desc", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_init_pluginscript_desc, "godot_pluginscript_script_manifest (godot_pluginscript_language_data *, godot_string const *, godot_string const *, godot_error *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "finish_pluginscript_desc", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_finish_pluginscript_desc, "void (godot_pluginscript_script_data *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "init_pluginscript_instance", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_init_pluginscript_instance, "godot_pluginscript_instance_data *(godot_pluginscript_script_data *, godot_object *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "finish_pluginscript_instance", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_finish_pluginscript_instance, "void (godot_pluginscript_instance_data *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "set_prop_pluginscript_instance", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_set_prop_pluginscript_instance, "bool (godot_pluginscript_instance_data *, godot_string const *, godot_variant const *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "get_prop_pluginscript_instance", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_get_prop_pluginscript_instance, "bool (godot_pluginscript_instance_data *, godot_string const *, godot_variant *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "call_method_pluginscript_instance", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_call_method_pluginscript_instance, "godot_variant (godot_pluginscript_instance_data *, godot_string_name const *, godot_variant const **, int, godot_variant_call_error *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "pluginscript_get_template_source_code", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_pluginscript_get_template_source_code, "PyObject *(godot_pluginscript_language_data *, godot_string const *, godot_string const *)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "notification_pluginscript_instance", (void (**)(void))&__pyx_api_f_16pluginscript_api_3api_notification_pluginscript_instance, "void (godot_pluginscript_instance_data *, int)") < 0) goto bad;
  Py_DECREF(module); module = 0;
  return 0;
  bad:
  Py_XDECREF(module);
  return -1;
}

#endif /* !__PYX_HAVE_API__pluginscript_api__api */
