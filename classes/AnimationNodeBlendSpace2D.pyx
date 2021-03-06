from classes.AnimationRootNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodeblendspace2d__add_blend_point
cdef godot_method_bind *bind_animationnodeblendspace2d__get_triangles
cdef godot_method_bind *bind_animationnodeblendspace2d__set_triangles
cdef godot_method_bind *bind_animationnodeblendspace2d__tree_changed
cdef godot_method_bind *bind_animationnodeblendspace2d__update_triangles
cdef godot_method_bind *bind_animationnodeblendspace2d_add_blend_point
cdef godot_method_bind *bind_animationnodeblendspace2d_add_triangle
cdef godot_method_bind *bind_animationnodeblendspace2d_get_auto_triangles
cdef godot_method_bind *bind_animationnodeblendspace2d_get_blend_mode
cdef godot_method_bind *bind_animationnodeblendspace2d_get_blend_point_count
cdef godot_method_bind *bind_animationnodeblendspace2d_get_blend_point_node
cdef godot_method_bind *bind_animationnodeblendspace2d_get_blend_point_position
cdef godot_method_bind *bind_animationnodeblendspace2d_get_max_space
cdef godot_method_bind *bind_animationnodeblendspace2d_get_min_space
cdef godot_method_bind *bind_animationnodeblendspace2d_get_snap
cdef godot_method_bind *bind_animationnodeblendspace2d_get_triangle_count
cdef godot_method_bind *bind_animationnodeblendspace2d_get_triangle_point
cdef godot_method_bind *bind_animationnodeblendspace2d_get_x_label
cdef godot_method_bind *bind_animationnodeblendspace2d_get_y_label
cdef godot_method_bind *bind_animationnodeblendspace2d_remove_blend_point
cdef godot_method_bind *bind_animationnodeblendspace2d_remove_triangle
cdef godot_method_bind *bind_animationnodeblendspace2d_set_auto_triangles
cdef godot_method_bind *bind_animationnodeblendspace2d_set_blend_mode
cdef godot_method_bind *bind_animationnodeblendspace2d_set_blend_point_node
cdef godot_method_bind *bind_animationnodeblendspace2d_set_blend_point_position
cdef godot_method_bind *bind_animationnodeblendspace2d_set_max_space
cdef godot_method_bind *bind_animationnodeblendspace2d_set_min_space
cdef godot_method_bind *bind_animationnodeblendspace2d_set_snap
cdef godot_method_bind *bind_animationnodeblendspace2d_set_x_label
cdef godot_method_bind *bind_animationnodeblendspace2d_set_y_label
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodeblendspace2d__add_blend_point = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', '_add_blend_point')
  bind_animationnodeblendspace2d__get_triangles = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', '_get_triangles')
  bind_animationnodeblendspace2d__set_triangles = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', '_set_triangles')
  bind_animationnodeblendspace2d__tree_changed = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', '_tree_changed')
  bind_animationnodeblendspace2d__update_triangles = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', '_update_triangles')
  bind_animationnodeblendspace2d_add_blend_point = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'add_blend_point')
  bind_animationnodeblendspace2d_add_triangle = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'add_triangle')
  bind_animationnodeblendspace2d_get_auto_triangles = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_auto_triangles')
  bind_animationnodeblendspace2d_get_blend_mode = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_blend_mode')
  bind_animationnodeblendspace2d_get_blend_point_count = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_blend_point_count')
  bind_animationnodeblendspace2d_get_blend_point_node = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_blend_point_node')
  bind_animationnodeblendspace2d_get_blend_point_position = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_blend_point_position')
  bind_animationnodeblendspace2d_get_max_space = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_max_space')
  bind_animationnodeblendspace2d_get_min_space = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_min_space')
  bind_animationnodeblendspace2d_get_snap = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_snap')
  bind_animationnodeblendspace2d_get_triangle_count = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_triangle_count')
  bind_animationnodeblendspace2d_get_triangle_point = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_triangle_point')
  bind_animationnodeblendspace2d_get_x_label = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_x_label')
  bind_animationnodeblendspace2d_get_y_label = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'get_y_label')
  bind_animationnodeblendspace2d_remove_blend_point = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'remove_blend_point')
  bind_animationnodeblendspace2d_remove_triangle = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'remove_triangle')
  bind_animationnodeblendspace2d_set_auto_triangles = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_auto_triangles')
  bind_animationnodeblendspace2d_set_blend_mode = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_blend_mode')
  bind_animationnodeblendspace2d_set_blend_point_node = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_blend_point_node')
  bind_animationnodeblendspace2d_set_blend_point_position = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_blend_point_position')
  bind_animationnodeblendspace2d_set_max_space = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_max_space')
  bind_animationnodeblendspace2d_set_min_space = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_min_space')
  bind_animationnodeblendspace2d_set_snap = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_snap')
  bind_animationnodeblendspace2d_set_x_label = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_x_label')
  bind_animationnodeblendspace2d_set_y_label = api_core.godot_method_bind_get_method('AnimationNodeBlendSpace2D', 'set_y_label')

############################Generated class###################################
cdef class AnimationNodeBlendSpace2D(AnimationRootNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeBlendSpace2D")())
##################################Generated Properties#########################################
  @property
  def auto_triangles(self): 
    return self.get_auto_triangles()
  @auto_triangles.setter 
  def auto_triangles(self,value): 
    self.set_auto_triangles(value)
  @property
  def blend_mode(self): 
    return self.get_blend_mode()
  @blend_mode.setter 
  def blend_mode(self,value): 
    self.set_blend_mode(value)
  @property
  def blend_point_0_node(self): 
    return self.get_blend_point_0_node()
  @blend_point_0_node.setter 
  def blend_point_0_node(self,value): 
    self.set_blend_point_0_node(value)
  @property
  def blend_point_0_pos(self): 
    return self.get_blend_point_0_pos()
  @blend_point_0_pos.setter 
  def blend_point_0_pos(self,value): 
    self.set_blend_point_0_pos(value)
  @property
  def blend_point_1_node(self): 
    return self.get_blend_point_1_node()
  @blend_point_1_node.setter 
  def blend_point_1_node(self,value): 
    self.set_blend_point_1_node(value)
  @property
  def blend_point_1_pos(self): 
    return self.get_blend_point_1_pos()
  @blend_point_1_pos.setter 
  def blend_point_1_pos(self,value): 
    self.set_blend_point_1_pos(value)
  @property
  def blend_point_10_node(self): 
    return self.get_blend_point_10_node()
  @blend_point_10_node.setter 
  def blend_point_10_node(self,value): 
    self.set_blend_point_10_node(value)
  @property
  def blend_point_10_pos(self): 
    return self.get_blend_point_10_pos()
  @blend_point_10_pos.setter 
  def blend_point_10_pos(self,value): 
    self.set_blend_point_10_pos(value)
  @property
  def blend_point_11_node(self): 
    return self.get_blend_point_11_node()
  @blend_point_11_node.setter 
  def blend_point_11_node(self,value): 
    self.set_blend_point_11_node(value)
  @property
  def blend_point_11_pos(self): 
    return self.get_blend_point_11_pos()
  @blend_point_11_pos.setter 
  def blend_point_11_pos(self,value): 
    self.set_blend_point_11_pos(value)
  @property
  def blend_point_12_node(self): 
    return self.get_blend_point_12_node()
  @blend_point_12_node.setter 
  def blend_point_12_node(self,value): 
    self.set_blend_point_12_node(value)
  @property
  def blend_point_12_pos(self): 
    return self.get_blend_point_12_pos()
  @blend_point_12_pos.setter 
  def blend_point_12_pos(self,value): 
    self.set_blend_point_12_pos(value)
  @property
  def blend_point_13_node(self): 
    return self.get_blend_point_13_node()
  @blend_point_13_node.setter 
  def blend_point_13_node(self,value): 
    self.set_blend_point_13_node(value)
  @property
  def blend_point_13_pos(self): 
    return self.get_blend_point_13_pos()
  @blend_point_13_pos.setter 
  def blend_point_13_pos(self,value): 
    self.set_blend_point_13_pos(value)
  @property
  def blend_point_14_node(self): 
    return self.get_blend_point_14_node()
  @blend_point_14_node.setter 
  def blend_point_14_node(self,value): 
    self.set_blend_point_14_node(value)
  @property
  def blend_point_14_pos(self): 
    return self.get_blend_point_14_pos()
  @blend_point_14_pos.setter 
  def blend_point_14_pos(self,value): 
    self.set_blend_point_14_pos(value)
  @property
  def blend_point_15_node(self): 
    return self.get_blend_point_15_node()
  @blend_point_15_node.setter 
  def blend_point_15_node(self,value): 
    self.set_blend_point_15_node(value)
  @property
  def blend_point_15_pos(self): 
    return self.get_blend_point_15_pos()
  @blend_point_15_pos.setter 
  def blend_point_15_pos(self,value): 
    self.set_blend_point_15_pos(value)
  @property
  def blend_point_16_node(self): 
    return self.get_blend_point_16_node()
  @blend_point_16_node.setter 
  def blend_point_16_node(self,value): 
    self.set_blend_point_16_node(value)
  @property
  def blend_point_16_pos(self): 
    return self.get_blend_point_16_pos()
  @blend_point_16_pos.setter 
  def blend_point_16_pos(self,value): 
    self.set_blend_point_16_pos(value)
  @property
  def blend_point_17_node(self): 
    return self.get_blend_point_17_node()
  @blend_point_17_node.setter 
  def blend_point_17_node(self,value): 
    self.set_blend_point_17_node(value)
  @property
  def blend_point_17_pos(self): 
    return self.get_blend_point_17_pos()
  @blend_point_17_pos.setter 
  def blend_point_17_pos(self,value): 
    self.set_blend_point_17_pos(value)
  @property
  def blend_point_18_node(self): 
    return self.get_blend_point_18_node()
  @blend_point_18_node.setter 
  def blend_point_18_node(self,value): 
    self.set_blend_point_18_node(value)
  @property
  def blend_point_18_pos(self): 
    return self.get_blend_point_18_pos()
  @blend_point_18_pos.setter 
  def blend_point_18_pos(self,value): 
    self.set_blend_point_18_pos(value)
  @property
  def blend_point_19_node(self): 
    return self.get_blend_point_19_node()
  @blend_point_19_node.setter 
  def blend_point_19_node(self,value): 
    self.set_blend_point_19_node(value)
  @property
  def blend_point_19_pos(self): 
    return self.get_blend_point_19_pos()
  @blend_point_19_pos.setter 
  def blend_point_19_pos(self,value): 
    self.set_blend_point_19_pos(value)
  @property
  def blend_point_2_node(self): 
    return self.get_blend_point_2_node()
  @blend_point_2_node.setter 
  def blend_point_2_node(self,value): 
    self.set_blend_point_2_node(value)
  @property
  def blend_point_2_pos(self): 
    return self.get_blend_point_2_pos()
  @blend_point_2_pos.setter 
  def blend_point_2_pos(self,value): 
    self.set_blend_point_2_pos(value)
  @property
  def blend_point_20_node(self): 
    return self.get_blend_point_20_node()
  @blend_point_20_node.setter 
  def blend_point_20_node(self,value): 
    self.set_blend_point_20_node(value)
  @property
  def blend_point_20_pos(self): 
    return self.get_blend_point_20_pos()
  @blend_point_20_pos.setter 
  def blend_point_20_pos(self,value): 
    self.set_blend_point_20_pos(value)
  @property
  def blend_point_21_node(self): 
    return self.get_blend_point_21_node()
  @blend_point_21_node.setter 
  def blend_point_21_node(self,value): 
    self.set_blend_point_21_node(value)
  @property
  def blend_point_21_pos(self): 
    return self.get_blend_point_21_pos()
  @blend_point_21_pos.setter 
  def blend_point_21_pos(self,value): 
    self.set_blend_point_21_pos(value)
  @property
  def blend_point_22_node(self): 
    return self.get_blend_point_22_node()
  @blend_point_22_node.setter 
  def blend_point_22_node(self,value): 
    self.set_blend_point_22_node(value)
  @property
  def blend_point_22_pos(self): 
    return self.get_blend_point_22_pos()
  @blend_point_22_pos.setter 
  def blend_point_22_pos(self,value): 
    self.set_blend_point_22_pos(value)
  @property
  def blend_point_23_node(self): 
    return self.get_blend_point_23_node()
  @blend_point_23_node.setter 
  def blend_point_23_node(self,value): 
    self.set_blend_point_23_node(value)
  @property
  def blend_point_23_pos(self): 
    return self.get_blend_point_23_pos()
  @blend_point_23_pos.setter 
  def blend_point_23_pos(self,value): 
    self.set_blend_point_23_pos(value)
  @property
  def blend_point_24_node(self): 
    return self.get_blend_point_24_node()
  @blend_point_24_node.setter 
  def blend_point_24_node(self,value): 
    self.set_blend_point_24_node(value)
  @property
  def blend_point_24_pos(self): 
    return self.get_blend_point_24_pos()
  @blend_point_24_pos.setter 
  def blend_point_24_pos(self,value): 
    self.set_blend_point_24_pos(value)
  @property
  def blend_point_25_node(self): 
    return self.get_blend_point_25_node()
  @blend_point_25_node.setter 
  def blend_point_25_node(self,value): 
    self.set_blend_point_25_node(value)
  @property
  def blend_point_25_pos(self): 
    return self.get_blend_point_25_pos()
  @blend_point_25_pos.setter 
  def blend_point_25_pos(self,value): 
    self.set_blend_point_25_pos(value)
  @property
  def blend_point_26_node(self): 
    return self.get_blend_point_26_node()
  @blend_point_26_node.setter 
  def blend_point_26_node(self,value): 
    self.set_blend_point_26_node(value)
  @property
  def blend_point_26_pos(self): 
    return self.get_blend_point_26_pos()
  @blend_point_26_pos.setter 
  def blend_point_26_pos(self,value): 
    self.set_blend_point_26_pos(value)
  @property
  def blend_point_27_node(self): 
    return self.get_blend_point_27_node()
  @blend_point_27_node.setter 
  def blend_point_27_node(self,value): 
    self.set_blend_point_27_node(value)
  @property
  def blend_point_27_pos(self): 
    return self.get_blend_point_27_pos()
  @blend_point_27_pos.setter 
  def blend_point_27_pos(self,value): 
    self.set_blend_point_27_pos(value)
  @property
  def blend_point_28_node(self): 
    return self.get_blend_point_28_node()
  @blend_point_28_node.setter 
  def blend_point_28_node(self,value): 
    self.set_blend_point_28_node(value)
  @property
  def blend_point_28_pos(self): 
    return self.get_blend_point_28_pos()
  @blend_point_28_pos.setter 
  def blend_point_28_pos(self,value): 
    self.set_blend_point_28_pos(value)
  @property
  def blend_point_29_node(self): 
    return self.get_blend_point_29_node()
  @blend_point_29_node.setter 
  def blend_point_29_node(self,value): 
    self.set_blend_point_29_node(value)
  @property
  def blend_point_29_pos(self): 
    return self.get_blend_point_29_pos()
  @blend_point_29_pos.setter 
  def blend_point_29_pos(self,value): 
    self.set_blend_point_29_pos(value)
  @property
  def blend_point_3_node(self): 
    return self.get_blend_point_3_node()
  @blend_point_3_node.setter 
  def blend_point_3_node(self,value): 
    self.set_blend_point_3_node(value)
  @property
  def blend_point_3_pos(self): 
    return self.get_blend_point_3_pos()
  @blend_point_3_pos.setter 
  def blend_point_3_pos(self,value): 
    self.set_blend_point_3_pos(value)
  @property
  def blend_point_30_node(self): 
    return self.get_blend_point_30_node()
  @blend_point_30_node.setter 
  def blend_point_30_node(self,value): 
    self.set_blend_point_30_node(value)
  @property
  def blend_point_30_pos(self): 
    return self.get_blend_point_30_pos()
  @blend_point_30_pos.setter 
  def blend_point_30_pos(self,value): 
    self.set_blend_point_30_pos(value)
  @property
  def blend_point_31_node(self): 
    return self.get_blend_point_31_node()
  @blend_point_31_node.setter 
  def blend_point_31_node(self,value): 
    self.set_blend_point_31_node(value)
  @property
  def blend_point_31_pos(self): 
    return self.get_blend_point_31_pos()
  @blend_point_31_pos.setter 
  def blend_point_31_pos(self,value): 
    self.set_blend_point_31_pos(value)
  @property
  def blend_point_32_node(self): 
    return self.get_blend_point_32_node()
  @blend_point_32_node.setter 
  def blend_point_32_node(self,value): 
    self.set_blend_point_32_node(value)
  @property
  def blend_point_32_pos(self): 
    return self.get_blend_point_32_pos()
  @blend_point_32_pos.setter 
  def blend_point_32_pos(self,value): 
    self.set_blend_point_32_pos(value)
  @property
  def blend_point_33_node(self): 
    return self.get_blend_point_33_node()
  @blend_point_33_node.setter 
  def blend_point_33_node(self,value): 
    self.set_blend_point_33_node(value)
  @property
  def blend_point_33_pos(self): 
    return self.get_blend_point_33_pos()
  @blend_point_33_pos.setter 
  def blend_point_33_pos(self,value): 
    self.set_blend_point_33_pos(value)
  @property
  def blend_point_34_node(self): 
    return self.get_blend_point_34_node()
  @blend_point_34_node.setter 
  def blend_point_34_node(self,value): 
    self.set_blend_point_34_node(value)
  @property
  def blend_point_34_pos(self): 
    return self.get_blend_point_34_pos()
  @blend_point_34_pos.setter 
  def blend_point_34_pos(self,value): 
    self.set_blend_point_34_pos(value)
  @property
  def blend_point_35_node(self): 
    return self.get_blend_point_35_node()
  @blend_point_35_node.setter 
  def blend_point_35_node(self,value): 
    self.set_blend_point_35_node(value)
  @property
  def blend_point_35_pos(self): 
    return self.get_blend_point_35_pos()
  @blend_point_35_pos.setter 
  def blend_point_35_pos(self,value): 
    self.set_blend_point_35_pos(value)
  @property
  def blend_point_36_node(self): 
    return self.get_blend_point_36_node()
  @blend_point_36_node.setter 
  def blend_point_36_node(self,value): 
    self.set_blend_point_36_node(value)
  @property
  def blend_point_36_pos(self): 
    return self.get_blend_point_36_pos()
  @blend_point_36_pos.setter 
  def blend_point_36_pos(self,value): 
    self.set_blend_point_36_pos(value)
  @property
  def blend_point_37_node(self): 
    return self.get_blend_point_37_node()
  @blend_point_37_node.setter 
  def blend_point_37_node(self,value): 
    self.set_blend_point_37_node(value)
  @property
  def blend_point_37_pos(self): 
    return self.get_blend_point_37_pos()
  @blend_point_37_pos.setter 
  def blend_point_37_pos(self,value): 
    self.set_blend_point_37_pos(value)
  @property
  def blend_point_38_node(self): 
    return self.get_blend_point_38_node()
  @blend_point_38_node.setter 
  def blend_point_38_node(self,value): 
    self.set_blend_point_38_node(value)
  @property
  def blend_point_38_pos(self): 
    return self.get_blend_point_38_pos()
  @blend_point_38_pos.setter 
  def blend_point_38_pos(self,value): 
    self.set_blend_point_38_pos(value)
  @property
  def blend_point_39_node(self): 
    return self.get_blend_point_39_node()
  @blend_point_39_node.setter 
  def blend_point_39_node(self,value): 
    self.set_blend_point_39_node(value)
  @property
  def blend_point_39_pos(self): 
    return self.get_blend_point_39_pos()
  @blend_point_39_pos.setter 
  def blend_point_39_pos(self,value): 
    self.set_blend_point_39_pos(value)
  @property
  def blend_point_4_node(self): 
    return self.get_blend_point_4_node()
  @blend_point_4_node.setter 
  def blend_point_4_node(self,value): 
    self.set_blend_point_4_node(value)
  @property
  def blend_point_4_pos(self): 
    return self.get_blend_point_4_pos()
  @blend_point_4_pos.setter 
  def blend_point_4_pos(self,value): 
    self.set_blend_point_4_pos(value)
  @property
  def blend_point_40_node(self): 
    return self.get_blend_point_40_node()
  @blend_point_40_node.setter 
  def blend_point_40_node(self,value): 
    self.set_blend_point_40_node(value)
  @property
  def blend_point_40_pos(self): 
    return self.get_blend_point_40_pos()
  @blend_point_40_pos.setter 
  def blend_point_40_pos(self,value): 
    self.set_blend_point_40_pos(value)
  @property
  def blend_point_41_node(self): 
    return self.get_blend_point_41_node()
  @blend_point_41_node.setter 
  def blend_point_41_node(self,value): 
    self.set_blend_point_41_node(value)
  @property
  def blend_point_41_pos(self): 
    return self.get_blend_point_41_pos()
  @blend_point_41_pos.setter 
  def blend_point_41_pos(self,value): 
    self.set_blend_point_41_pos(value)
  @property
  def blend_point_42_node(self): 
    return self.get_blend_point_42_node()
  @blend_point_42_node.setter 
  def blend_point_42_node(self,value): 
    self.set_blend_point_42_node(value)
  @property
  def blend_point_42_pos(self): 
    return self.get_blend_point_42_pos()
  @blend_point_42_pos.setter 
  def blend_point_42_pos(self,value): 
    self.set_blend_point_42_pos(value)
  @property
  def blend_point_43_node(self): 
    return self.get_blend_point_43_node()
  @blend_point_43_node.setter 
  def blend_point_43_node(self,value): 
    self.set_blend_point_43_node(value)
  @property
  def blend_point_43_pos(self): 
    return self.get_blend_point_43_pos()
  @blend_point_43_pos.setter 
  def blend_point_43_pos(self,value): 
    self.set_blend_point_43_pos(value)
  @property
  def blend_point_44_node(self): 
    return self.get_blend_point_44_node()
  @blend_point_44_node.setter 
  def blend_point_44_node(self,value): 
    self.set_blend_point_44_node(value)
  @property
  def blend_point_44_pos(self): 
    return self.get_blend_point_44_pos()
  @blend_point_44_pos.setter 
  def blend_point_44_pos(self,value): 
    self.set_blend_point_44_pos(value)
  @property
  def blend_point_45_node(self): 
    return self.get_blend_point_45_node()
  @blend_point_45_node.setter 
  def blend_point_45_node(self,value): 
    self.set_blend_point_45_node(value)
  @property
  def blend_point_45_pos(self): 
    return self.get_blend_point_45_pos()
  @blend_point_45_pos.setter 
  def blend_point_45_pos(self,value): 
    self.set_blend_point_45_pos(value)
  @property
  def blend_point_46_node(self): 
    return self.get_blend_point_46_node()
  @blend_point_46_node.setter 
  def blend_point_46_node(self,value): 
    self.set_blend_point_46_node(value)
  @property
  def blend_point_46_pos(self): 
    return self.get_blend_point_46_pos()
  @blend_point_46_pos.setter 
  def blend_point_46_pos(self,value): 
    self.set_blend_point_46_pos(value)
  @property
  def blend_point_47_node(self): 
    return self.get_blend_point_47_node()
  @blend_point_47_node.setter 
  def blend_point_47_node(self,value): 
    self.set_blend_point_47_node(value)
  @property
  def blend_point_47_pos(self): 
    return self.get_blend_point_47_pos()
  @blend_point_47_pos.setter 
  def blend_point_47_pos(self,value): 
    self.set_blend_point_47_pos(value)
  @property
  def blend_point_48_node(self): 
    return self.get_blend_point_48_node()
  @blend_point_48_node.setter 
  def blend_point_48_node(self,value): 
    self.set_blend_point_48_node(value)
  @property
  def blend_point_48_pos(self): 
    return self.get_blend_point_48_pos()
  @blend_point_48_pos.setter 
  def blend_point_48_pos(self,value): 
    self.set_blend_point_48_pos(value)
  @property
  def blend_point_49_node(self): 
    return self.get_blend_point_49_node()
  @blend_point_49_node.setter 
  def blend_point_49_node(self,value): 
    self.set_blend_point_49_node(value)
  @property
  def blend_point_49_pos(self): 
    return self.get_blend_point_49_pos()
  @blend_point_49_pos.setter 
  def blend_point_49_pos(self,value): 
    self.set_blend_point_49_pos(value)
  @property
  def blend_point_5_node(self): 
    return self.get_blend_point_5_node()
  @blend_point_5_node.setter 
  def blend_point_5_node(self,value): 
    self.set_blend_point_5_node(value)
  @property
  def blend_point_5_pos(self): 
    return self.get_blend_point_5_pos()
  @blend_point_5_pos.setter 
  def blend_point_5_pos(self,value): 
    self.set_blend_point_5_pos(value)
  @property
  def blend_point_50_node(self): 
    return self.get_blend_point_50_node()
  @blend_point_50_node.setter 
  def blend_point_50_node(self,value): 
    self.set_blend_point_50_node(value)
  @property
  def blend_point_50_pos(self): 
    return self.get_blend_point_50_pos()
  @blend_point_50_pos.setter 
  def blend_point_50_pos(self,value): 
    self.set_blend_point_50_pos(value)
  @property
  def blend_point_51_node(self): 
    return self.get_blend_point_51_node()
  @blend_point_51_node.setter 
  def blend_point_51_node(self,value): 
    self.set_blend_point_51_node(value)
  @property
  def blend_point_51_pos(self): 
    return self.get_blend_point_51_pos()
  @blend_point_51_pos.setter 
  def blend_point_51_pos(self,value): 
    self.set_blend_point_51_pos(value)
  @property
  def blend_point_52_node(self): 
    return self.get_blend_point_52_node()
  @blend_point_52_node.setter 
  def blend_point_52_node(self,value): 
    self.set_blend_point_52_node(value)
  @property
  def blend_point_52_pos(self): 
    return self.get_blend_point_52_pos()
  @blend_point_52_pos.setter 
  def blend_point_52_pos(self,value): 
    self.set_blend_point_52_pos(value)
  @property
  def blend_point_53_node(self): 
    return self.get_blend_point_53_node()
  @blend_point_53_node.setter 
  def blend_point_53_node(self,value): 
    self.set_blend_point_53_node(value)
  @property
  def blend_point_53_pos(self): 
    return self.get_blend_point_53_pos()
  @blend_point_53_pos.setter 
  def blend_point_53_pos(self,value): 
    self.set_blend_point_53_pos(value)
  @property
  def blend_point_54_node(self): 
    return self.get_blend_point_54_node()
  @blend_point_54_node.setter 
  def blend_point_54_node(self,value): 
    self.set_blend_point_54_node(value)
  @property
  def blend_point_54_pos(self): 
    return self.get_blend_point_54_pos()
  @blend_point_54_pos.setter 
  def blend_point_54_pos(self,value): 
    self.set_blend_point_54_pos(value)
  @property
  def blend_point_55_node(self): 
    return self.get_blend_point_55_node()
  @blend_point_55_node.setter 
  def blend_point_55_node(self,value): 
    self.set_blend_point_55_node(value)
  @property
  def blend_point_55_pos(self): 
    return self.get_blend_point_55_pos()
  @blend_point_55_pos.setter 
  def blend_point_55_pos(self,value): 
    self.set_blend_point_55_pos(value)
  @property
  def blend_point_56_node(self): 
    return self.get_blend_point_56_node()
  @blend_point_56_node.setter 
  def blend_point_56_node(self,value): 
    self.set_blend_point_56_node(value)
  @property
  def blend_point_56_pos(self): 
    return self.get_blend_point_56_pos()
  @blend_point_56_pos.setter 
  def blend_point_56_pos(self,value): 
    self.set_blend_point_56_pos(value)
  @property
  def blend_point_57_node(self): 
    return self.get_blend_point_57_node()
  @blend_point_57_node.setter 
  def blend_point_57_node(self,value): 
    self.set_blend_point_57_node(value)
  @property
  def blend_point_57_pos(self): 
    return self.get_blend_point_57_pos()
  @blend_point_57_pos.setter 
  def blend_point_57_pos(self,value): 
    self.set_blend_point_57_pos(value)
  @property
  def blend_point_58_node(self): 
    return self.get_blend_point_58_node()
  @blend_point_58_node.setter 
  def blend_point_58_node(self,value): 
    self.set_blend_point_58_node(value)
  @property
  def blend_point_58_pos(self): 
    return self.get_blend_point_58_pos()
  @blend_point_58_pos.setter 
  def blend_point_58_pos(self,value): 
    self.set_blend_point_58_pos(value)
  @property
  def blend_point_59_node(self): 
    return self.get_blend_point_59_node()
  @blend_point_59_node.setter 
  def blend_point_59_node(self,value): 
    self.set_blend_point_59_node(value)
  @property
  def blend_point_59_pos(self): 
    return self.get_blend_point_59_pos()
  @blend_point_59_pos.setter 
  def blend_point_59_pos(self,value): 
    self.set_blend_point_59_pos(value)
  @property
  def blend_point_6_node(self): 
    return self.get_blend_point_6_node()
  @blend_point_6_node.setter 
  def blend_point_6_node(self,value): 
    self.set_blend_point_6_node(value)
  @property
  def blend_point_6_pos(self): 
    return self.get_blend_point_6_pos()
  @blend_point_6_pos.setter 
  def blend_point_6_pos(self,value): 
    self.set_blend_point_6_pos(value)
  @property
  def blend_point_60_node(self): 
    return self.get_blend_point_60_node()
  @blend_point_60_node.setter 
  def blend_point_60_node(self,value): 
    self.set_blend_point_60_node(value)
  @property
  def blend_point_60_pos(self): 
    return self.get_blend_point_60_pos()
  @blend_point_60_pos.setter 
  def blend_point_60_pos(self,value): 
    self.set_blend_point_60_pos(value)
  @property
  def blend_point_61_node(self): 
    return self.get_blend_point_61_node()
  @blend_point_61_node.setter 
  def blend_point_61_node(self,value): 
    self.set_blend_point_61_node(value)
  @property
  def blend_point_61_pos(self): 
    return self.get_blend_point_61_pos()
  @blend_point_61_pos.setter 
  def blend_point_61_pos(self,value): 
    self.set_blend_point_61_pos(value)
  @property
  def blend_point_62_node(self): 
    return self.get_blend_point_62_node()
  @blend_point_62_node.setter 
  def blend_point_62_node(self,value): 
    self.set_blend_point_62_node(value)
  @property
  def blend_point_62_pos(self): 
    return self.get_blend_point_62_pos()
  @blend_point_62_pos.setter 
  def blend_point_62_pos(self,value): 
    self.set_blend_point_62_pos(value)
  @property
  def blend_point_63_node(self): 
    return self.get_blend_point_63_node()
  @blend_point_63_node.setter 
  def blend_point_63_node(self,value): 
    self.set_blend_point_63_node(value)
  @property
  def blend_point_63_pos(self): 
    return self.get_blend_point_63_pos()
  @blend_point_63_pos.setter 
  def blend_point_63_pos(self,value): 
    self.set_blend_point_63_pos(value)
  @property
  def blend_point_7_node(self): 
    return self.get_blend_point_7_node()
  @blend_point_7_node.setter 
  def blend_point_7_node(self,value): 
    self.set_blend_point_7_node(value)
  @property
  def blend_point_7_pos(self): 
    return self.get_blend_point_7_pos()
  @blend_point_7_pos.setter 
  def blend_point_7_pos(self,value): 
    self.set_blend_point_7_pos(value)
  @property
  def blend_point_8_node(self): 
    return self.get_blend_point_8_node()
  @blend_point_8_node.setter 
  def blend_point_8_node(self,value): 
    self.set_blend_point_8_node(value)
  @property
  def blend_point_8_pos(self): 
    return self.get_blend_point_8_pos()
  @blend_point_8_pos.setter 
  def blend_point_8_pos(self,value): 
    self.set_blend_point_8_pos(value)
  @property
  def blend_point_9_node(self): 
    return self.get_blend_point_9_node()
  @blend_point_9_node.setter 
  def blend_point_9_node(self,value): 
    self.set_blend_point_9_node(value)
  @property
  def blend_point_9_pos(self): 
    return self.get_blend_point_9_pos()
  @blend_point_9_pos.setter 
  def blend_point_9_pos(self,value): 
    self.set_blend_point_9_pos(value)
  @property
  def max_space(self): 
    return self.get_max_space()
  @max_space.setter 
  def max_space(self,value): 
    self.set_max_space(value)
  @property
  def min_space(self): 
    return self.get_min_space()
  @min_space.setter 
  def min_space(self,value): 
    self.set_min_space(value)
  @property
  def snap(self): 
    return self.get_snap()
  @snap.setter 
  def snap(self,value): 
    self.set_snap(value)
  @property
  def triangles(self): 
    return self.get_triangles()
  @triangles.setter 
  def triangles(self,value): 
    self.set_triangles(value)
  @property
  def x_label(self): 
    return self.get_x_label()
  @x_label.setter 
  def x_label(self,value): 
    self.set_x_label(value)
  @property
  def y_label(self): 
    return self.get_y_label()
  @y_label.setter 
  def y_label(self,value): 
    self.set_y_label(value)

##################################Generated Methods#########################################
  def  _add_blend_point(self, indexnode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d__add_blend_point,self.godot_owner,[NULL,],NULL)
  def  _get_triangles(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d__get_triangles,self.godot_owner,[NULL,],&ret)
  def  _set_triangles(self, triangles):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d__set_triangles,self.godot_owner,[NULL,],NULL)
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d__tree_changed,self.godot_owner,[NULL,],NULL)
  def  _update_triangles(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d__update_triangles,self.godot_owner,[NULL,],NULL)
  def  add_blend_point(self, nodeposat_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_add_blend_point,self.godot_owner,[NULL,],NULL)
  def  add_triangle(self, xyzat_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_add_triangle,self.godot_owner,[NULL,],NULL)
  def  get_auto_triangles(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_auto_triangles,self.godot_owner,[NULL,],&ret)
  def  get_blend_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNodeBlendSpace2D::BlendMode ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_blend_mode,self.godot_owner,[NULL,],&ret)
  def  get_blend_point_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_blend_point_count,self.godot_owner,[NULL,],&ret)
  def  get_blend_point_node(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationRootNode ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_blend_point_node,self.godot_owner,[NULL,],&ret)
  def  get_blend_point_position(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_blend_point_position,self.godot_owner,[NULL,],&ret)
  def  get_max_space(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_max_space,self.godot_owner,[NULL,],&ret)
  def  get_min_space(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_min_space,self.godot_owner,[NULL,],&ret)
  def  get_snap(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_snap,self.godot_owner,[NULL,],&ret)
  def  get_triangle_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_triangle_count,self.godot_owner,[NULL,],&ret)
  def  get_triangle_point(self, trianglepoint):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_triangle_point,self.godot_owner,[NULL,],&ret)
  def  get_x_label(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_x_label,self.godot_owner,[NULL,],&ret)
  def  get_y_label(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_get_y_label,self.godot_owner,[NULL,],&ret)
  def  remove_blend_point(self, point):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_remove_blend_point,self.godot_owner,[NULL,],NULL)
  def  remove_triangle(self, triangle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_remove_triangle,self.godot_owner,[NULL,],NULL)
  def  set_auto_triangles(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_auto_triangles,self.godot_owner,[NULL,],NULL)
  def  set_blend_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_blend_mode,self.godot_owner,[NULL,],NULL)
  def  set_blend_point_node(self, pointnode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_blend_point_node,self.godot_owner,[NULL,],NULL)
  def  set_blend_point_position(self, pointpos):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_blend_point_position,self.godot_owner,[NULL,],NULL)
  def  set_max_space(self, max_space):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_max_space,self.godot_owner,[NULL,],NULL)
  def  set_min_space(self, min_space):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_min_space,self.godot_owner,[NULL,],NULL)
  def  set_snap(self, snap):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_snap,self.godot_owner,[NULL,],NULL)
  def  set_x_label(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_x_label,self.godot_owner,[NULL,],NULL)
  def  set_y_label(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendspace2d_set_y_label,self.godot_owner,[NULL,],NULL)
