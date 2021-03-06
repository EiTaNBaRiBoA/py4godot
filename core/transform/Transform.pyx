from core.transform.transform_binding cimport *

cdef class Transform:

    def __init__(self, godot_transform _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_transform_new(&self._native)

    def new_with_axis_origin(self, Vector3 x_axis, Vector3 y_axis, Vector3 z_axis, Vector3 origin):
        api_core.godot_transform_new_with_axis_origin(&self._native, &x_axis._native, &y_axis._native, &z_axis._native, &origin._native)

    def get_basis(self):
        return Basis(api_core.godot_transform_get_basis(&self._native))

    def set_basis(self, Basis v):
        api_core.godot_transform_set_basis(&self._native, &v._native)

    def get_origin(self):
        return Vector3(api_core.godot_transform_get_origin(&self._native))

    def set_origin(Transform self, Vector3 v):
        api_core.godot_transform_set_origin(&self._native, &v._native)

    def __str__(self):
        return api_core.godot_transform_as_string(&self._native)

    def inverse(self):
        return Transform(api_core.godot_transform_inverse(&self._native))

    def affine_inverse(self):
        return Transform(api_core.godot_transform_affine_inverse(&self._native))

    def orthonormalized(self):
        return Transform(api_core.godot_transform_orthonormalized(&self._native))

    def rotated(self, Vector3 axis, godot_real p_phi):
        return Transform(api_core.godot_transform_rotated(&self._native, &axis._native, phi))

    def scaled(self, Vector3 scale):
        return Transform(api_core.godot_transform_scaled(&self._native, &scale._native))

    def looking_at(self, Vector3 target, Vector3 up):
        return Transform(api_core.godot_transform_looking_at(&self._native, &target._native, &up._native))

    def xform_plane(self, Plane v):
        return Plane(api_core.godot_transform_xform_plane(&self._native, &v._native))

    def xform_inv_plane(self, Plane v):
        return Plane(api_core.godot_transform_inv_plane(&self._native, &v._native))

    def new_identity(self):
        api_core.godot_transform_new_identity(&self._native)

    def __eq__(self, Transform other):
        return api_core.godot_transform_operator_equal(&self._native, &other._native)

    def __mult__(self, Transform b):
        return Transform(api_core.godot_transform_operator_multiply(&self._native, &b._native))

    def transform_xform_vector3(self, Vector3 v):
        return Vector3(api_core.godot_transform_xform_vector3(&self._native, &v._native))

    def transform_xform_inv_vector3(self, Vector3 v):
        return Vector3(api_core.godot_transform_xform_inv_vector3(&self._native, &v._native))

    def xform_aabb(self, AABB v):
        return AABB(api_core.godot_transform_xform_aabb(&self._native, &v._native))

    def xform_inv_aabb(self, AABB v):
        return AABB(api_core.godot_transform_xform_inv_aabb(&self._native, &v._native))
