
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptconstructor_get_constructor
cdef godot_method_bind *bind_visualscriptconstructor_get_constructor_type
cdef godot_method_bind *bind_visualscriptconstructor_set_constructor
cdef godot_method_bind *bind_visualscriptconstructor_set_constructor_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptconstructor_get_constructor = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'get_constructor')
  bind_visualscriptconstructor_get_constructor_type = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'get_constructor_type')
  bind_visualscriptconstructor_set_constructor = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'set_constructor')
  bind_visualscriptconstructor_set_constructor_type = api_core.godot_method_bind_get_method('VisualScriptConstructor', 'set_constructor_type')

############################Generated class###################################
cdef class VisualScriptConstructor(classes.VisualScriptNode.VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptConstructor")())
##################################Generated Properties#########################################
  @property
  def constructor(self): 
    return self.get_constructor()
  @constructor.setter 
  def constructor(self,value): 
    self.set_constructor(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_constructor(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_get_constructor,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_constructor_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Type* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_get_constructor_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_constructor(self,  Dictionary constructor):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &constructor._native
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_set_constructor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_constructor_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstructor_set_constructor_type,self.godot_owner,args,NULL)
    hello('hallo2')
