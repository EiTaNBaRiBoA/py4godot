from classes.PhysicsBody cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicalbone__direct_state_changed
cdef godot_method_bind *bind_physicalbone_apply_central_impulse
cdef godot_method_bind *bind_physicalbone_apply_impulse
cdef godot_method_bind *bind_physicalbone_get_body_offset
cdef godot_method_bind *bind_physicalbone_get_bone_id
cdef godot_method_bind *bind_physicalbone_get_bounce
cdef godot_method_bind *bind_physicalbone_get_friction
cdef godot_method_bind *bind_physicalbone_get_gravity_scale
cdef godot_method_bind *bind_physicalbone_get_joint_offset
cdef godot_method_bind *bind_physicalbone_get_joint_type
cdef godot_method_bind *bind_physicalbone_get_mass
cdef godot_method_bind *bind_physicalbone_get_simulate_physics
cdef godot_method_bind *bind_physicalbone_get_weight
cdef godot_method_bind *bind_physicalbone_is_simulating_physics
cdef godot_method_bind *bind_physicalbone_is_static_body
cdef godot_method_bind *bind_physicalbone_set_body_offset
cdef godot_method_bind *bind_physicalbone_set_bounce
cdef godot_method_bind *bind_physicalbone_set_friction
cdef godot_method_bind *bind_physicalbone_set_gravity_scale
cdef godot_method_bind *bind_physicalbone_set_joint_offset
cdef godot_method_bind *bind_physicalbone_set_joint_type
cdef godot_method_bind *bind_physicalbone_set_mass
cdef godot_method_bind *bind_physicalbone_set_weight
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicalbone__direct_state_changed = api_core.godot_method_bind_get_method('PhysicalBone', '_direct_state_changed')
  bind_physicalbone_apply_central_impulse = api_core.godot_method_bind_get_method('PhysicalBone', 'apply_central_impulse')
  bind_physicalbone_apply_impulse = api_core.godot_method_bind_get_method('PhysicalBone', 'apply_impulse')
  bind_physicalbone_get_body_offset = api_core.godot_method_bind_get_method('PhysicalBone', 'get_body_offset')
  bind_physicalbone_get_bone_id = api_core.godot_method_bind_get_method('PhysicalBone', 'get_bone_id')
  bind_physicalbone_get_bounce = api_core.godot_method_bind_get_method('PhysicalBone', 'get_bounce')
  bind_physicalbone_get_friction = api_core.godot_method_bind_get_method('PhysicalBone', 'get_friction')
  bind_physicalbone_get_gravity_scale = api_core.godot_method_bind_get_method('PhysicalBone', 'get_gravity_scale')
  bind_physicalbone_get_joint_offset = api_core.godot_method_bind_get_method('PhysicalBone', 'get_joint_offset')
  bind_physicalbone_get_joint_type = api_core.godot_method_bind_get_method('PhysicalBone', 'get_joint_type')
  bind_physicalbone_get_mass = api_core.godot_method_bind_get_method('PhysicalBone', 'get_mass')
  bind_physicalbone_get_simulate_physics = api_core.godot_method_bind_get_method('PhysicalBone', 'get_simulate_physics')
  bind_physicalbone_get_weight = api_core.godot_method_bind_get_method('PhysicalBone', 'get_weight')
  bind_physicalbone_is_simulating_physics = api_core.godot_method_bind_get_method('PhysicalBone', 'is_simulating_physics')
  bind_physicalbone_is_static_body = api_core.godot_method_bind_get_method('PhysicalBone', 'is_static_body')
  bind_physicalbone_set_body_offset = api_core.godot_method_bind_get_method('PhysicalBone', 'set_body_offset')
  bind_physicalbone_set_bounce = api_core.godot_method_bind_get_method('PhysicalBone', 'set_bounce')
  bind_physicalbone_set_friction = api_core.godot_method_bind_get_method('PhysicalBone', 'set_friction')
  bind_physicalbone_set_gravity_scale = api_core.godot_method_bind_get_method('PhysicalBone', 'set_gravity_scale')
  bind_physicalbone_set_joint_offset = api_core.godot_method_bind_get_method('PhysicalBone', 'set_joint_offset')
  bind_physicalbone_set_joint_type = api_core.godot_method_bind_get_method('PhysicalBone', 'set_joint_type')
  bind_physicalbone_set_mass = api_core.godot_method_bind_get_method('PhysicalBone', 'set_mass')
  bind_physicalbone_set_weight = api_core.godot_method_bind_get_method('PhysicalBone', 'set_weight')

############################Generated class###################################
cdef class PhysicalBone(PhysicsBody):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicalBone")())
##################################Generated Properties#########################################
  @property
  def body_offset(self): 
    return self.get_body_offset()
  @body_offset.setter 
  def body_offset(self,value): 
    self.set_body_offset(value)
  @property
  def bounce(self): 
    return self.get_bounce()
  @bounce.setter 
  def bounce(self,value): 
    self.set_bounce(value)
  @property
  def friction(self): 
    return self.get_friction()
  @friction.setter 
  def friction(self,value): 
    self.set_friction(value)
  @property
  def gravity_scale(self): 
    return self.get_gravity_scale()
  @gravity_scale.setter 
  def gravity_scale(self,value): 
    self.set_gravity_scale(value)
  @property
  def joint_offset(self): 
    return self.get_joint_offset()
  @joint_offset.setter 
  def joint_offset(self,value): 
    self.set_joint_offset(value)
  @property
  def joint_type(self): 
    return self.get_joint_type()
  @joint_type.setter 
  def joint_type(self,value): 
    self.set_joint_type(value)
  @property
  def mass(self): 
    return self.get_mass()
  @mass.setter 
  def mass(self,value): 
    self.set_mass(value)
  @property
  def weight(self): 
    return self.get_weight()
  @weight.setter 
  def weight(self,value): 
    self.set_weight(value)

##################################Generated Methods#########################################
  def  _direct_state_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone__direct_state_changed,self.godot_owner,[NULL,],NULL)
  def  apply_central_impulse(self, impulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_apply_central_impulse,self.godot_owner,[NULL,],NULL)
  def  apply_impulse(self, positionimpulse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_apply_impulse,self.godot_owner,[NULL,],NULL)
  def  get_body_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_body_offset,self.godot_owner,[NULL,],&ret)
  def  get_bone_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_bone_id,self.godot_owner,[NULL,],&ret)
  def  get_bounce(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_bounce,self.godot_owner,[NULL,],&ret)
  def  get_friction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_friction,self.godot_owner,[NULL,],&ret)
  def  get_gravity_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_gravity_scale,self.godot_owner,[NULL,],&ret)
  def  get_joint_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_joint_offset,self.godot_owner,[NULL,],&ret)
  def  get_joint_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicalBone::JointType ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_joint_type,self.godot_owner,[NULL,],&ret)
  def  get_mass(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_mass,self.godot_owner,[NULL,],&ret)
  def  get_simulate_physics(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_simulate_physics,self.godot_owner,[NULL,],&ret)
  def  get_weight(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_get_weight,self.godot_owner,[NULL,],&ret)
  def  is_simulating_physics(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_is_simulating_physics,self.godot_owner,[NULL,],&ret)
  def  is_static_body(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicalbone_is_static_body,self.godot_owner,[NULL,],&ret)
  def  set_body_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_body_offset,self.godot_owner,[NULL,],NULL)
  def  set_bounce(self, bounce):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_bounce,self.godot_owner,[NULL,],NULL)
  def  set_friction(self, friction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_friction,self.godot_owner,[NULL,],NULL)
  def  set_gravity_scale(self, gravity_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_gravity_scale,self.godot_owner,[NULL,],NULL)
  def  set_joint_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_joint_offset,self.godot_owner,[NULL,],NULL)
  def  set_joint_type(self, joint_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_joint_type,self.godot_owner,[NULL,],NULL)
  def  set_mass(self, mass):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_mass,self.godot_owner,[NULL,],NULL)
  def  set_weight(self, weight):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicalbone_set_weight,self.godot_owner,[NULL,],NULL)
