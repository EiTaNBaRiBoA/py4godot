import re
import warnings

string_to_parse = """
        void (*godot_pool_byte_array_new)(godot_pool_byte_array *r_dest);
        void (*godot_pool_byte_array_new_copy)(godot_pool_byte_array *r_dest, const godot_pool_byte_array *p_src);
        void (*godot_pool_byte_array_new_with_array)(godot_pool_byte_array *r_dest, const godot_array *p_a);
        void (*godot_pool_byte_array_append)(godot_pool_byte_array *p_self, const uint8_t p_data);
        void (*godot_pool_byte_array_append_array)(godot_pool_byte_array *p_self, const godot_pool_byte_array *p_array);
        godot_error (*godot_pool_byte_array_insert)(godot_pool_byte_array *p_self, const godot_int p_idx, const uint8_t p_data);
        void (*godot_pool_byte_array_invert)(godot_pool_byte_array *p_self);
        void (*godot_pool_byte_array_push_back)(godot_pool_byte_array *p_self, const uint8_t p_data);
        void (*godot_pool_byte_array_remove)(godot_pool_byte_array *p_self, const godot_int p_idx);
        void (*godot_pool_byte_array_resize)(godot_pool_byte_array *p_self, const godot_int p_size);
        godot_pool_byte_array_read_access *(*godot_pool_byte_array_read)(const godot_pool_byte_array *p_self);
        godot_pool_byte_array_write_access *(*godot_pool_byte_array_write)(godot_pool_byte_array *p_self);
        void (*godot_pool_byte_array_set)(godot_pool_byte_array *p_self, const godot_int p_idx, const uint8_t p_data);
        uint8_t (*godot_pool_byte_array_get)(const godot_pool_byte_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_byte_array_size)(const godot_pool_byte_array *p_self);
        void (*godot_pool_byte_array_destroy)(godot_pool_byte_array *p_self);
        """
class_ = "godot_pool_byte_array"
dict_core = {"godot_pool_byte_array": "PoolByteArray"}


def generate_args(line):
    # generating def append_array(self, const godot_pool_byte_array *p_array):
    result = ""
    line = line.lstrip()
    res_expression = re.match("(.+?).*?\(\*(.+?)\)\((.+?)\)", line)
    # print(res_expression)
    if res_expression is not None:
        result += f"def {res_expression.group(2).replace(class_ + '_', '')}"
        result += "("
        self_set = False
        for arg in res_expression.group(3).split(", "):
            if "p_self" in arg:
                result += "self, "
                self_set = True
            else:
                if not self_set:
                    #TODO: Improve this expression
                    break
                result += arg + ", "
        result = result.rstrip(", ")
        result += "):\n"
    else:
        warnings.warn("Following line could not be generated:",line)
    return result

def generate_method_body(line):
    # generating def append_array(self, const godot_pool_byte_array *p_array):
    result = ""
    line = line.lstrip()
    res_expression = re.match("(.+).*?\(\*(.+?)\)\((.+?)\)", line)
    result += f"  {'return ' if res_expression.group(1).strip() != 'void' else ''}api_core.{res_expression.group(2)}"
    result+="("
    for arg in res_expression.group(3).split(", "):
        if "p_self" in arg:
            result += "&self._native, "
        else:
            result += arg.split(" ")[-1] + ", "
    result = result.rstrip(", ")
    result +=")\n"
    return result


generated_file = ""
for line in string_to_parse.split("\n"):
    if line.strip() == "":
        continue
    generated_file += generate_args(line)
    generated_file += generate_method_body(line)

print(generated_file)