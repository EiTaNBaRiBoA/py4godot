from classes.Camera cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_clippedcamera_add_exception
cdef godot_method_bind *bind_clippedcamera_add_exception_rid
cdef godot_method_bind *bind_clippedcamera_clear_exceptions
cdef godot_method_bind *bind_clippedcamera_get_clip_offset
cdef godot_method_bind *bind_clippedcamera_get_collision_mask
cdef godot_method_bind *bind_clippedcamera_get_collision_mask_bit
cdef godot_method_bind *bind_clippedcamera_get_margin
cdef godot_method_bind *bind_clippedcamera_get_process_mode
cdef godot_method_bind *bind_clippedcamera_is_clip_to_areas_enabled
cdef godot_method_bind *bind_clippedcamera_is_clip_to_bodies_enabled
cdef godot_method_bind *bind_clippedcamera_remove_exception
cdef godot_method_bind *bind_clippedcamera_remove_exception_rid
cdef godot_method_bind *bind_clippedcamera_set_clip_to_areas
cdef godot_method_bind *bind_clippedcamera_set_clip_to_bodies
cdef godot_method_bind *bind_clippedcamera_set_collision_mask
cdef godot_method_bind *bind_clippedcamera_set_collision_mask_bit
cdef godot_method_bind *bind_clippedcamera_set_margin
cdef godot_method_bind *bind_clippedcamera_set_process_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_clippedcamera_add_exception = api_core.godot_method_bind_get_method('ClippedCamera', 'add_exception')
  bind_clippedcamera_add_exception_rid = api_core.godot_method_bind_get_method('ClippedCamera', 'add_exception_rid')
  bind_clippedcamera_clear_exceptions = api_core.godot_method_bind_get_method('ClippedCamera', 'clear_exceptions')
  bind_clippedcamera_get_clip_offset = api_core.godot_method_bind_get_method('ClippedCamera', 'get_clip_offset')
  bind_clippedcamera_get_collision_mask = api_core.godot_method_bind_get_method('ClippedCamera', 'get_collision_mask')
  bind_clippedcamera_get_collision_mask_bit = api_core.godot_method_bind_get_method('ClippedCamera', 'get_collision_mask_bit')
  bind_clippedcamera_get_margin = api_core.godot_method_bind_get_method('ClippedCamera', 'get_margin')
  bind_clippedcamera_get_process_mode = api_core.godot_method_bind_get_method('ClippedCamera', 'get_process_mode')
  bind_clippedcamera_is_clip_to_areas_enabled = api_core.godot_method_bind_get_method('ClippedCamera', 'is_clip_to_areas_enabled')
  bind_clippedcamera_is_clip_to_bodies_enabled = api_core.godot_method_bind_get_method('ClippedCamera', 'is_clip_to_bodies_enabled')
  bind_clippedcamera_remove_exception = api_core.godot_method_bind_get_method('ClippedCamera', 'remove_exception')
  bind_clippedcamera_remove_exception_rid = api_core.godot_method_bind_get_method('ClippedCamera', 'remove_exception_rid')
  bind_clippedcamera_set_clip_to_areas = api_core.godot_method_bind_get_method('ClippedCamera', 'set_clip_to_areas')
  bind_clippedcamera_set_clip_to_bodies = api_core.godot_method_bind_get_method('ClippedCamera', 'set_clip_to_bodies')
  bind_clippedcamera_set_collision_mask = api_core.godot_method_bind_get_method('ClippedCamera', 'set_collision_mask')
  bind_clippedcamera_set_collision_mask_bit = api_core.godot_method_bind_get_method('ClippedCamera', 'set_collision_mask_bit')
  bind_clippedcamera_set_margin = api_core.godot_method_bind_get_method('ClippedCamera', 'set_margin')
  bind_clippedcamera_set_process_mode = api_core.godot_method_bind_get_method('ClippedCamera', 'set_process_mode')

############################Generated class###################################
cdef class ClippedCamera(Camera):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ClippedCamera")())
##################################Generated Properties#########################################
  @property
  def clip_to_areas(self): 
    return self.get_clip_to_areas()
  @clip_to_areas.setter 
  def clip_to_areas(self,value): 
    self.set_clip_to_areas(value)
  @property
  def clip_to_bodies(self): 
    return self.get_clip_to_bodies()
  @clip_to_bodies.setter 
  def clip_to_bodies(self,value): 
    self.set_clip_to_bodies(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def margin(self): 
    return self.get_margin()
  @margin.setter 
  def margin(self,value): 
    self.set_margin(value)
  @property
  def process_mode(self): 
    return self.get_process_mode()
  @process_mode.setter 
  def process_mode(self,value): 
    self.set_process_mode(value)

##################################Generated Methods#########################################
  def  add_exception(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_add_exception,self.godot_owner,[NULL,],NULL)
  def  add_exception_rid(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_add_exception_rid,self.godot_owner,[NULL,],NULL)
  def  clear_exceptions(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_clear_exceptions,self.godot_owner,[NULL,],NULL)
  def  get_clip_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_clip_offset,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_margin,self.godot_owner,[NULL,],&ret)
  def  get_process_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ClippedCamera::ProcessMode ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_get_process_mode,self.godot_owner,[NULL,],&ret)
  def  is_clip_to_areas_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_is_clip_to_areas_enabled,self.godot_owner,[NULL,],&ret)
  def  is_clip_to_bodies_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_is_clip_to_bodies_enabled,self.godot_owner,[NULL,],&ret)
  def  remove_exception(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_remove_exception,self.godot_owner,[NULL,],NULL)
  def  remove_exception_rid(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_remove_exception_rid,self.godot_owner,[NULL,],NULL)
  def  set_clip_to_areas(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_clip_to_areas,self.godot_owner,[NULL,],NULL)
  def  set_clip_to_bodies(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_clip_to_bodies,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_margin,self.godot_owner,[NULL,],NULL)
  def  set_process_mode(self, process_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_clippedcamera_set_process_mode,self.godot_owner,[NULL,],NULL)
