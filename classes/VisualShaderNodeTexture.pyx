from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodetexture_get_source
cdef godot_method_bind *bind_visualshadernodetexture_get_texture
cdef godot_method_bind *bind_visualshadernodetexture_get_texture_type
cdef godot_method_bind *bind_visualshadernodetexture_set_source
cdef godot_method_bind *bind_visualshadernodetexture_set_texture
cdef godot_method_bind *bind_visualshadernodetexture_set_texture_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodetexture_get_source = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'get_source')
  bind_visualshadernodetexture_get_texture = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'get_texture')
  bind_visualshadernodetexture_get_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'get_texture_type')
  bind_visualshadernodetexture_set_source = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'set_source')
  bind_visualshadernodetexture_set_texture = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'set_texture')
  bind_visualshadernodetexture_set_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'set_texture_type')

############################Generated class###################################
cdef class VisualShaderNodeTexture(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeTexture")())
##################################Generated Properties#########################################
  @property
  def source(self): 
    return self.get_source()
  @source.setter 
  def source(self,value): 
    self.set_source(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)
  @property
  def texture_type(self): 
    return self.get_texture_type()
  @texture_type.setter 
  def texture_type(self,value): 
    self.set_texture_type(value)

##################################Generated Methods#########################################
  def  get_source(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeTexture::Source ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_get_source,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_texture_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeTexture::TextureType ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_get_texture_type,self.godot_owner,[NULL,],&ret)
  def  set_source(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_set_source,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_texture_type(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_set_texture_type,self.godot_owner,[NULL,],NULL)
