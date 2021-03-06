from core.rect2.rect2_binding cimport *

cdef class Rect2:

    def __init__(self, godot_rect2 _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_rect2_new(&self._native)

    def new_with_position_and_size(self, Vector2 pos, Vector2 size):
        api_core.godot_rect_2_new_with_position_and_size(&self._native, &pos._native, &size._native)

    def __str__(self):
        return api_core.godot_rect2_as_string(&self._native)

    def get_area(self):
        return api_core.godot_rect2_get_area(&self._native)

    def intersects(self, Rect2 b):
        return api_core.godot_rect2_intersects(&self._native, &b._native)

    def encloses(self, Rect2 b):
        return api_core.godot_rect2_enclosed(&self._native, &b._native)

    def has_no_area(self):
        return api_coreo.godot_rect2_has_no_area(&self._native)

    def clip(self, Rect2 b):
        return Rect2(api_core.godot_rect2_clip(&self._native, &b._native))

    def merge(self, Rect2 b):
        return Rect2(api_core.godot_rect2_merge(&self._native, &b._native))

    def has_point(self, Vector2 point):
        return api_core.godot_rect2_has_point(&self._native, &point._native)

    def grow(self, godot_real by):
        return Rect2(api_core.godot_rect2_grow(&self._native, by))

    def expand(self, Vector2 to):
        return Rect2(api_core.godot_rect2_expand(&self._native, &to._native))

    def __eq__(self, Rect2 b):
        return api_core.godot_rect2_operator_equal(&self._native, &b._native)

    def get_position(self):
        return Vector2(api_core.godot_rect2_get_position(&self._native))

    def get_size(self):
        return Vector2(api_core.godot_rect2_get_size(&self._native))

    def set_position(self, Vector2 pos):
        api_core.godot_rect2_set_position(&pos._native)

    def set_size(self, Vector2 size):
        api_core.godot_rect2_set_size(&size._native)