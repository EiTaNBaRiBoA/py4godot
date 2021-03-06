from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionshape__shape_changed
cdef godot_method_bind *bind_collisionshape__update_debug_shape
cdef godot_method_bind *bind_collisionshape_get_shape
cdef godot_method_bind *bind_collisionshape_is_disabled
cdef godot_method_bind *bind_collisionshape_make_convex_from_brothers
cdef godot_method_bind *bind_collisionshape_resource_changed
cdef godot_method_bind *bind_collisionshape_set_disabled
cdef godot_method_bind *bind_collisionshape_set_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionshape__shape_changed = api_core.godot_method_bind_get_method('CollisionShape', '_shape_changed')
  bind_collisionshape__update_debug_shape = api_core.godot_method_bind_get_method('CollisionShape', '_update_debug_shape')
  bind_collisionshape_get_shape = api_core.godot_method_bind_get_method('CollisionShape', 'get_shape')
  bind_collisionshape_is_disabled = api_core.godot_method_bind_get_method('CollisionShape', 'is_disabled')
  bind_collisionshape_make_convex_from_brothers = api_core.godot_method_bind_get_method('CollisionShape', 'make_convex_from_brothers')
  bind_collisionshape_resource_changed = api_core.godot_method_bind_get_method('CollisionShape', 'resource_changed')
  bind_collisionshape_set_disabled = api_core.godot_method_bind_get_method('CollisionShape', 'set_disabled')
  bind_collisionshape_set_shape = api_core.godot_method_bind_get_method('CollisionShape', 'set_shape')

############################Generated class###################################
cdef class CollisionShape(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionShape")())
##################################Generated Properties#########################################
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def shape(self): 
    return self.get_shape()
  @shape.setter 
  def shape(self,value): 
    self.set_shape(value)

##################################Generated Methods#########################################
  def  _shape_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape__shape_changed,self.godot_owner,[NULL,],NULL)
  def  _update_debug_shape(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape__update_debug_shape,self.godot_owner,[NULL,],NULL)
  def  get_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape ret
    api_core.godot_method_bind_ptrcall(bind_collisionshape_get_shape,self.godot_owner,[NULL,],&ret)
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionshape_is_disabled,self.godot_owner,[NULL,],&ret)
  def  make_convex_from_brothers(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape_make_convex_from_brothers,self.godot_owner,[NULL,],NULL)
  def  resource_changed(self, resource):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape_resource_changed,self.godot_owner,[NULL,],NULL)
  def  set_disabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape_set_disabled,self.godot_owner,[NULL,],NULL)
  def  set_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape_set_shape,self.godot_owner,[NULL,],NULL)
