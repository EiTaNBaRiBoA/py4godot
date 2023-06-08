from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.pluginscript_api.utils.PropertyDescription cimport *
cdef uint32_t id_counter = 0
cdef inc_id_counter()
cdef class MethodDescription:

    cdef StringName name;
    cdef PropertyDescription return_value;
    cdef uint32_t flags; # Bitfield of `GDExtensionClassMethodFlags`.
    cdef int32_t id;

    # Arguments: `default_arguments` is an array of size `argument_count`.
    cdef uint32_t argument_count;
    cdef list arguments;

    # Default arguments: `default_arguments` is an array of size `default_argument_count`.
    cdef uint32_t default_argument_count;
    cdef list default_arguments;

    cdef GDExtensionMethodInfo method_info

    cdef void to_c(self)