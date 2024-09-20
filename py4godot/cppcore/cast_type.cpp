#include "py4godot/cppcore/cast_type.h"
#include <cassert>

constexpr unsigned int str2int(const char* str, int h = 0)
{
    return !str[h] ? 5381 : (str2int(str, h+1) * 33) ^ str[h];
}

void init_casting(){

    import_py4godot__core__variant4__cast_helpers();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        const char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        assert(false);
        return;
    }
}

PyObject* cast_to_type(char* classname, PyObject* object_to_cast){
    switch(str2int(classname)){
        case str2int("StyleBox"):
            return cast_to_stylebox(object_to_cast);
        case str2int("RegExMatch"):
            return cast_to_regexmatch(object_to_cast);
        case str2int("PhysicsRayQueryParameters3D"):
            return cast_to_physicsrayqueryparameters3d(object_to_cast);
        case str2int("ArrayMesh"):
            return cast_to_arraymesh(object_to_cast);
        case str2int("ButtonGroup"):
            return cast_to_buttongroup(object_to_cast);
        case str2int("ENetPacketPeer"):
            return cast_to_enetpacketpeer(object_to_cast);
        case str2int("GLTFSkin"):
            return cast_to_gltfskin(object_to_cast);
        case str2int("RenderSceneData"):
            return cast_to_renderscenedata(object_to_cast);
        case str2int("ScrollBar"):
            return cast_to_scrollbar(object_to_cast);
        case str2int("InputEventWithModifiers"):
            return cast_to_inputeventwithmodifiers(object_to_cast);
        case str2int("CanvasLayer"):
            return cast_to_canvaslayer(object_to_cast);
        case str2int("SkinReference"):
            return cast_to_skinreference(object_to_cast);
        case str2int("Font"):
            return cast_to_font(object_to_cast);
        case str2int("RDPipelineColorBlendStateAttachment"):
            return cast_to_rdpipelinecolorblendstateattachment(object_to_cast);
        case str2int("KinematicCollision3D"):
            return cast_to_kinematiccollision3d(object_to_cast);
        case str2int("Resource"):
            return cast_to_resource(object_to_cast);
        case str2int("CallbackTweener"):
            return cast_to_callbacktweener(object_to_cast);
        case str2int("PhysicsShapeQueryParameters3D"):
            return cast_to_physicsshapequeryparameters3d(object_to_cast);
        case str2int("GLTFState"):
            return cast_to_gltfstate(object_to_cast);
        case str2int("MultiplayerAPI"):
            return cast_to_multiplayerapi(object_to_cast);
        case str2int("CameraFeed"):
            return cast_to_camerafeed(object_to_cast);
        case str2int("GLTFAccessor"):
            return cast_to_gltfaccessor(object_to_cast);
        case str2int("Animation"):
            return cast_to_animation(object_to_cast);
        case str2int("Camera3D"):
            return cast_to_camera3d(object_to_cast);
        case str2int("GLTFCamera"):
            return cast_to_gltfcamera(object_to_cast);
        case str2int("PopupMenu"):
            return cast_to_popupmenu(object_to_cast);
        case str2int("PhysicsBody2D"):
            return cast_to_physicsbody2d(object_to_cast);
        case str2int("Compositor"):
            return cast_to_compositor(object_to_cast);
        case str2int("SceneTree"):
            return cast_to_scenetree(object_to_cast);
        case str2int("MainLoop"):
            return cast_to_mainloop(object_to_cast);
        case str2int("Range"):
            return cast_to_range(object_to_cast);
        case str2int("Material"):
            return cast_to_material(object_to_cast);
        case str2int("Tween"):
            return cast_to_tween(object_to_cast);
        case str2int("PhysicsBody3D"):
            return cast_to_physicsbody3d(object_to_cast);
        case str2int("PhysicsDirectSpaceState2D"):
            return cast_to_physicsdirectspacestate2d(object_to_cast);
        case str2int("PhysicsPointQueryParameters2D"):
            return cast_to_physicspointqueryparameters2d(object_to_cast);
        case str2int("Object"):
            return cast_to_object(object_to_cast);
        case str2int("Container"):
            return cast_to_container(object_to_cast);
        case str2int("GLTFMesh"):
            return cast_to_gltfmesh(object_to_cast);
        case str2int("SceneState"):
            return cast_to_scenestate(object_to_cast);
        case str2int("Node3DGizmo"):
            return cast_to_node3dgizmo(object_to_cast);
        case str2int("AnimationPlayer"):
            return cast_to_animationplayer(object_to_cast);
        case str2int("CollisionObject3D"):
            return cast_to_collisionobject3d(object_to_cast);
        case str2int("PropertyTweener"):
            return cast_to_propertytweener(object_to_cast);
        case str2int("ConcavePolygonShape3D"):
            return cast_to_concavepolygonshape3d(object_to_cast);
        case str2int("Sky"):
            return cast_to_sky(object_to_cast);
        case str2int("VBoxContainer"):
            return cast_to_vboxcontainer(object_to_cast);
        case str2int("Texture3D"):
            return cast_to_texture3d(object_to_cast);
        case str2int("InputEventFromWindow"):
            return cast_to_inputeventfromwindow(object_to_cast);
        case str2int("Shape2D"):
            return cast_to_shape2d(object_to_cast);
        case str2int("KinematicCollision2D"):
            return cast_to_kinematiccollision2d(object_to_cast);
        case str2int("World2D"):
            return cast_to_world2d(object_to_cast);
        case str2int("GLTFTexture"):
            return cast_to_gltftexture(object_to_cast);
        case str2int("RefCounted"):
            return cast_to_refcounted(object_to_cast);
        case str2int("TextureLayered"):
            return cast_to_texturelayered(object_to_cast);
        case str2int("Node2D"):
            return cast_to_node2d(object_to_cast);
        case str2int("RenderSceneBuffers"):
            return cast_to_renderscenebuffers(object_to_cast);
        case str2int("Skeleton3D"):
            return cast_to_skeleton3d(object_to_cast);
        case str2int("Area2D"):
            return cast_to_area2d(object_to_cast);
        case str2int("Camera2D"):
            return cast_to_camera2d(object_to_cast);
        case str2int("Tree"):
            return cast_to_tree(object_to_cast);
        case str2int("Texture2D"):
            return cast_to_texture2d(object_to_cast);
        case str2int("Area3D"):
            return cast_to_area3d(object_to_cast);
        case str2int("Control"):
            return cast_to_control(object_to_cast);
        case str2int("VisualInstance3D"):
            return cast_to_visualinstance3d(object_to_cast);
        case str2int("ImporterMesh"):
            return cast_to_importermesh(object_to_cast);
        case str2int("Shape3D"):
            return cast_to_shape3d(object_to_cast);
        case str2int("CollisionObject2D"):
            return cast_to_collisionobject2d(object_to_cast);
        case str2int("RDVertexAttribute"):
            return cast_to_rdvertexattribute(object_to_cast);
        case str2int("HScrollBar"):
            return cast_to_hscrollbar(object_to_cast);
        case str2int("IntervalTweener"):
            return cast_to_intervaltweener(object_to_cast);
        case str2int("ScriptEditorBase"):
            return cast_to_scripteditorbase(object_to_cast);
        case str2int("RenderSceneBuffersConfiguration"):
            return cast_to_renderscenebuffersconfiguration(object_to_cast);
        case str2int("GLTFAnimation"):
            return cast_to_gltfanimation(object_to_cast);
        case str2int("BoxContainer"):
            return cast_to_boxcontainer(object_to_cast);
        case str2int("ViewportTexture"):
            return cast_to_viewporttexture(object_to_cast);
        case str2int("Input"):
            return cast_to_input(object_to_cast);
        case str2int("EditorSyntaxHighlighter"):
            return cast_to_editorsyntaxhighlighter(object_to_cast);
        case str2int("World3D"):
            return cast_to_world3d(object_to_cast);
        case str2int("AnimationMixer"):
            return cast_to_animationmixer(object_to_cast);
        case str2int("PhysicsPointQueryParameters3D"):
            return cast_to_physicspointqueryparameters3d(object_to_cast);
        case str2int("MultiMesh"):
            return cast_to_multimesh(object_to_cast);
        case str2int("PackedScene"):
            return cast_to_packedscene(object_to_cast);
        case str2int("Texture"):
            return cast_to_texture(object_to_cast);
        case str2int("Window"):
            return cast_to_window(object_to_cast);
        case str2int("BaseButton"):
            return cast_to_basebutton(object_to_cast);
        case str2int("GLTFBufferView"):
            return cast_to_gltfbufferview(object_to_cast);
        case str2int("PhysicsRayQueryParameters2D"):
            return cast_to_physicsrayqueryparameters2d(object_to_cast);
        case str2int("GLTFSkeleton"):
            return cast_to_gltfskeleton(object_to_cast);
        case str2int("Script"):
            return cast_to_script(object_to_cast);
        case str2int("RenderData"):
            return cast_to_renderdata(object_to_cast);
        case str2int("CameraAttributes"):
            return cast_to_cameraattributes(object_to_cast);
        case str2int("ShaderMaterial"):
            return cast_to_shadermaterial(object_to_cast);
        case str2int("Viewport"):
            return cast_to_viewport(object_to_cast);
        case str2int("ConvexPolygonShape3D"):
            return cast_to_convexpolygonshape3d(object_to_cast);
        case str2int("Theme"):
            return cast_to_theme(object_to_cast);
        case str2int("BoneAttachment3D"):
            return cast_to_boneattachment3d(object_to_cast);
        case str2int("Light3D"):
            return cast_to_light3d(object_to_cast);
        case str2int("InputEventMouseMotion"):
            return cast_to_inputeventmousemotion(object_to_cast);
        case str2int("InputEventMouse"):
            return cast_to_inputeventmouse(object_to_cast);
        case str2int("Popup"):
            return cast_to_popup(object_to_cast);
        case str2int("TriangleMesh"):
            return cast_to_trianglemesh(object_to_cast);
        case str2int("MultiplayerPeer"):
            return cast_to_multiplayerpeer(object_to_cast);
        case str2int("RDAttachmentFormat"):
            return cast_to_rdattachmentformat(object_to_cast);
        case str2int("MethodTweener"):
            return cast_to_methodtweener(object_to_cast);
        case str2int("PhysicsShapeQueryParameters2D"):
            return cast_to_physicsshapequeryparameters2d(object_to_cast);
        case str2int("SceneTreeTimer"):
            return cast_to_scenetreetimer(object_to_cast);
        case str2int("CompositorEffect"):
            return cast_to_compositoreffect(object_to_cast);
        case str2int("VScrollBar"):
            return cast_to_vscrollbar(object_to_cast);
        case str2int("TextEdit"):
            return cast_to_textedit(object_to_cast);
        case str2int("GLTFTextureSampler"):
            return cast_to_gltftexturesampler(object_to_cast);
        case str2int("Mesh"):
            return cast_to_mesh(object_to_cast);
        case str2int("RDUniform"):
            return cast_to_rduniform(object_to_cast);
        case str2int("AnimationLibrary"):
            return cast_to_animationlibrary(object_to_cast);
        case str2int("Node"):
            return cast_to_node(object_to_cast);
        case str2int("Shader"):
            return cast_to_shader(object_to_cast);
        case str2int("Node3D"):
            return cast_to_node3d(object_to_cast);
        case str2int("Environment"):
            return cast_to_environment(object_to_cast);
        case str2int("PhysicsDirectSpaceState3D"):
            return cast_to_physicsdirectspacestate3d(object_to_cast);
        case str2int("CanvasItem"):
            return cast_to_canvasitem(object_to_cast);
        case str2int("RDFramebufferPass"):
            return cast_to_rdframebufferpass(object_to_cast);
        case str2int("SyntaxHighlighter"):
            return cast_to_syntaxhighlighter(object_to_cast);
        case str2int("CameraAttributesPhysical"):
            return cast_to_cameraattributesphysical(object_to_cast);
        case str2int("Skin"):
            return cast_to_skin(object_to_cast);
        case str2int("Tweener"):
            return cast_to_tweener(object_to_cast);
        case str2int("GLTFLight"):
            return cast_to_gltflight(object_to_cast);
        case str2int("PacketPeer"):
            return cast_to_packetpeer(object_to_cast);
        case str2int("Shortcut"):
            return cast_to_shortcut(object_to_cast);
        case str2int("InputEventMouseButton"):
            return cast_to_inputeventmousebutton(object_to_cast);
        case str2int("InputEvent"):
            return cast_to_inputevent(object_to_cast);
        case str2int("GLTFNode"):
            return cast_to_gltfnode(object_to_cast);
        case str2int("TreeItem"):
            return cast_to_treeitem(object_to_cast);
        case str2int("Image"):
            return cast_to_image(object_to_cast);
        case str2int("RDPipelineSpecializationConstant"):
            return cast_to_rdpipelinespecializationconstant(object_to_cast);

        default:
            assert(false); // object not supported for conversion TODO
    }
    return object_to_cast;
}