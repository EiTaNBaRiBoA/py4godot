from py4godot_core_holder.core_holder cimport *

gdnative_interface = get_interface()

cdef class PyLanguage(ScriptLanguageExtension):
  cdef new(self):
    pass
  cdef _get_name(self):
    pass

  cdef _init(self):
    pass

  cdef _get_type(self):
    pass

  cdef _get_extension(self):
    pass

  cdef _execute_file(self, String path):
    pass

  cdef _finish(self):
    pass

  cdef _get_reserved_words(self):
    pass

  cdef _is_control_flow_keyword(self, String keyword):
    pass

  cdef _get_comment_delimiters(self):
    pass

  cdef _get_string_delimiters(self):
    pass

  cdef _make_template(self, String template, String class_name, String base_class_name):
    pass

  cdef _get_built_in_templates(self, StringName object):
    pass

  cdef _is_using_templates(self):
    pass

  cdef _validate(self, String script, String path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines):
    pass

  cdef _validate_path(self, String path):
    pass

  cdef _create_script(self):
    pass

  cdef _has_named_classes(self):
    pass

  cdef _supports_builtin_mode(self):
    pass

  cdef _supports_documentation(self):
    pass

  cdef _can_inherit_from_file(self):
    pass

  cdef _find_function(self, String class_name, String function_name):
    pass

  cdef _make_function(self, String class_name, String function_name, PackedStringArray function_args):
    pass

  cdef _open_in_external_editor(self, Script script, int line, int column):
    pass

  cdef _overrides_external_editor(self):
    pass

  cdef _complete_code(self, String code, String path, Object owner):
    pass

  cdef _lookup_code(self, String code, String symbol, String path, Object owner):
    pass

  cdef _auto_indent_code(self, String code, int from_line, int to_line):
    pass

  cdef _add_global_constant(self, StringName name, Variant value):
    pass

  cdef _add_named_global_constant(self, StringName name, Variant value):
    pass

  cdef _remove_named_global_constant(self, StringName name):
    pass

  cdef _thread_enter(self):
    pass

  cdef _thread_exit(self):
    pass

  cdef _debug_get_error(self):
    pass

  cdef _debug_get_stack_level_count(self):
    pass

  cdef _debug_get_stack_level_line(self, int level):
    pass

  cdef _debug_get_stack_level_function(self, int level):
    pass

  cdef _debug_get_stack_level_locals(self, int level, int max_subitems, int max_depth):
    pass

  cdef _debug_get_stack_level_members(self, int level, int max_subitems, int max_depth):
    pass

  cdef _debug_get_globals(self, int max_subitems, int max_depth):
    pass

  cdef _debug_parse_stack_level_expression(self, int level, String expression, int max_subitems, int max_depth):
    pass

  cdef _debug_get_current_stack_info(self):
    pass

  cdef _reload_all_scripts(self):
    pass

  cdef _reload_tool_script(self, Script script, bool soft_reload):
    pass

  cdef _get_recognized_extensions(self):
    pass

  cdef _get_public_functions(self):
    pass

  cdef _get_public_constants(self):
    pass

  cdef _get_public_annotations(self):
    pass

  cdef _profiling_start(self):
    pass

  cdef _profiling_stop(self):
    pass

  cdef _refcount_incremented_instance_binding(self, Object object):
    pass

  cdef _refcount_decremented_instance_binding(self, Object object):
    pass

  cdef _frame(self):
    pass

  cdef _handles_global_class_type(self, String type):
    pass

  cdef _get_global_class_name(self, String path):
    pass


