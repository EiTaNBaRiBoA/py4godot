from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_capsuleshape2d_get_height
cdef godot_method_bind *bind_capsuleshape2d_get_radius
cdef godot_method_bind *bind_capsuleshape2d_set_height
cdef godot_method_bind *bind_capsuleshape2d_set_radius
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_capsuleshape2d_get_height = api_core.godot_method_bind_get_method('CapsuleShape2D', 'get_height')
  bind_capsuleshape2d_get_radius = api_core.godot_method_bind_get_method('CapsuleShape2D', 'get_radius')
  bind_capsuleshape2d_set_height = api_core.godot_method_bind_get_method('CapsuleShape2D', 'set_height')
  bind_capsuleshape2d_set_radius = api_core.godot_method_bind_get_method('CapsuleShape2D', 'set_radius')

############################Generated class###################################
cdef class CapsuleShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CapsuleShape2D")())
##################################Generated Properties#########################################
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def radius(self): 
    return self.get_radius()
  @radius.setter 
  def radius(self,value): 
    self.set_radius(value)

##################################Generated Methods#########################################
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_capsuleshape2d_get_height,self.godot_owner,[NULL,],&ret)
  def  get_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_capsuleshape2d_get_radius,self.godot_owner,[NULL,],&ret)
  def  set_height(self, height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_capsuleshape2d_set_height,self.godot_owner,[NULL,],NULL)
  def  set_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_capsuleshape2d_set_radius,self.godot_owner,[NULL,],NULL)
