/*
Copyright (c) 2025 Timur Gafarov.

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
*/
module bindbc.glslang.types;

alias glslang_stage_t = int;
enum
{
    GLSLANG_STAGE_VERTEX,
    GLSLANG_STAGE_TESSCONTROL,
    GLSLANG_STAGE_TESSEVALUATION,
    GLSLANG_STAGE_GEOMETRY,
    GLSLANG_STAGE_FRAGMENT,
    GLSLANG_STAGE_COMPUTE,
    GLSLANG_STAGE_RAYGEN,
    GLSLANG_STAGE_RAYGEN_NV = GLSLANG_STAGE_RAYGEN,
    GLSLANG_STAGE_INTERSECT,
    GLSLANG_STAGE_INTERSECT_NV = GLSLANG_STAGE_INTERSECT,
    GLSLANG_STAGE_ANYHIT,
    GLSLANG_STAGE_ANYHIT_NV = GLSLANG_STAGE_ANYHIT,
    GLSLANG_STAGE_CLOSESTHIT,
    GLSLANG_STAGE_CLOSESTHIT_NV = GLSLANG_STAGE_CLOSESTHIT,
    GLSLANG_STAGE_MISS,
    GLSLANG_STAGE_MISS_NV = GLSLANG_STAGE_MISS,
    GLSLANG_STAGE_CALLABLE,
    GLSLANG_STAGE_CALLABLE_NV = GLSLANG_STAGE_CALLABLE,
    GLSLANG_STAGE_TASK,
    GLSLANG_STAGE_TASK_NV = GLSLANG_STAGE_TASK,
    GLSLANG_STAGE_MESH,
    GLSLANG_STAGE_MESH_NV = GLSLANG_STAGE_MESH
}

alias glslang_stage_mask_t = int;
enum
{
    GLSLANG_STAGE_VERTEX_MASK = (1 << GLSLANG_STAGE_VERTEX),
    GLSLANG_STAGE_TESSCONTROL_MASK = (1 << GLSLANG_STAGE_TESSCONTROL),
    GLSLANG_STAGE_TESSEVALUATION_MASK = (1 << GLSLANG_STAGE_TESSEVALUATION),
    GLSLANG_STAGE_GEOMETRY_MASK = (1 << GLSLANG_STAGE_GEOMETRY),
    GLSLANG_STAGE_FRAGMENT_MASK = (1 << GLSLANG_STAGE_FRAGMENT),
    GLSLANG_STAGE_COMPUTE_MASK = (1 << GLSLANG_STAGE_COMPUTE),
    GLSLANG_STAGE_RAYGEN_MASK = (1 << GLSLANG_STAGE_RAYGEN),
    GLSLANG_STAGE_RAYGEN_NV_MASK = GLSLANG_STAGE_RAYGEN_MASK,
    GLSLANG_STAGE_INTERSECT_MASK = (1 << GLSLANG_STAGE_INTERSECT),
    GLSLANG_STAGE_INTERSECT_NV_MASK = GLSLANG_STAGE_INTERSECT_MASK,
    GLSLANG_STAGE_ANYHIT_MASK = (1 << GLSLANG_STAGE_ANYHIT),
    GLSLANG_STAGE_ANYHIT_NV_MASK = GLSLANG_STAGE_ANYHIT_MASK,
    GLSLANG_STAGE_CLOSESTHIT_MASK = (1 << GLSLANG_STAGE_CLOSESTHIT),
    GLSLANG_STAGE_CLOSESTHIT_NV_MASK = GLSLANG_STAGE_CLOSESTHIT_MASK,
    GLSLANG_STAGE_MISS_MASK = (1 << GLSLANG_STAGE_MISS),
    GLSLANG_STAGE_MISS_NV_MASK = GLSLANG_STAGE_MISS_MASK,
    GLSLANG_STAGE_CALLABLE_MASK = (1 << GLSLANG_STAGE_CALLABLE),
    GLSLANG_STAGE_CALLABLE_NV_MASK = GLSLANG_STAGE_CALLABLE_MASK,
    GLSLANG_STAGE_TASK_MASK = (1 << GLSLANG_STAGE_TASK),
    GLSLANG_STAGE_TASK_NV_MASK = GLSLANG_STAGE_TASK_MASK,
    GLSLANG_STAGE_MESH_MASK = (1 << GLSLANG_STAGE_MESH),
    GLSLANG_STAGE_MESH_NV_MASK = GLSLANG_STAGE_MESH_MASK
}

alias glslang_source_t = int;
enum
{
    GLSLANG_SOURCE_NONE,
    GLSLANG_SOURCE_GLSL,
    GLSLANG_SOURCE_HLSL
}

alias glslang_client_t = int;
enum
{
    GLSLANG_CLIENT_NONE,
    GLSLANG_CLIENT_VULKAN,
    GLSLANG_CLIENT_OPENGL
}

alias glslang_target_language_t = int;
enum
{
    GLSLANG_TARGET_NONE,
    GLSLANG_TARGET_SPV
}

alias glslang_target_client_version_t = int;
enum
{
    GLSLANG_TARGET_VULKAN_1_0 = (1 << 22),
    GLSLANG_TARGET_VULKAN_1_1 = (1 << 22) | (1 << 12),
    GLSLANG_TARGET_VULKAN_1_2 = (1 << 22) | (2 << 12),
    GLSLANG_TARGET_VULKAN_1_3 = (1 << 22) | (3 << 12),
    GLSLANG_TARGET_OPENGL_450 = 450
}

alias glslang_target_language_version_t = int;
enum
{
    GLSLANG_TARGET_SPV_1_0 = (1 << 16),
    GLSLANG_TARGET_SPV_1_1 = (1 << 16) | (1 << 8),
    GLSLANG_TARGET_SPV_1_2 = (1 << 16) | (2 << 8),
    GLSLANG_TARGET_SPV_1_3 = (1 << 16) | (3 << 8),
    GLSLANG_TARGET_SPV_1_4 = (1 << 16) | (4 << 8),
    GLSLANG_TARGET_SPV_1_5 = (1 << 16) | (5 << 8),
    GLSLANG_TARGET_SPV_1_6 = (1 << 16) | (6 << 8)
}

alias glslang_executable_t = int;
enum
{
    GLSLANG_EX_VERTEX_FRAGMENT,
    GLSLANG_EX_FRAGMENT
}

alias glslang_optimization_level_t = int;
enum
{
    GLSLANG_OPT_NO_GENERATION,
    GLSLANG_OPT_NONE,
    GLSLANG_OPT_SIMPLE,
    GLSLANG_OPT_FULL
}

alias glslang_texture_sampler_transform_mode_t = int;
enum
{
    GLSLANG_TEX_SAMP_TRANS_KEEP,
    GLSLANG_TEX_SAMP_TRANS_UPGRADE_TEXTURE_REMOVE_SAMPLER
}

alias glslang_messages_t = int;
enum
{
    GLSLANG_MSG_DEFAULT_BIT                 = 0,
    GLSLANG_MSG_RELAXED_ERRORS_BIT          = (1 << 0),
    GLSLANG_MSG_SUPPRESS_WARNINGS_BIT       = (1 << 1),
    GLSLANG_MSG_AST_BIT                     = (1 << 2),
    GLSLANG_MSG_SPV_RULES_BIT               = (1 << 3),
    GLSLANG_MSG_VULKAN_RULES_BIT            = (1 << 4),
    GLSLANG_MSG_ONLY_PREPROCESSOR_BIT       = (1 << 5),
    GLSLANG_MSG_READ_HLSL_BIT               = (1 << 6),
    GLSLANG_MSG_CASCADING_ERRORS_BIT        = (1 << 7),
    GLSLANG_MSG_KEEP_UNCALLED_BIT           = (1 << 8),
    GLSLANG_MSG_HLSL_OFFSETS_BIT            = (1 << 9),
    GLSLANG_MSG_DEBUG_INFO_BIT              = (1 << 10),
    GLSLANG_MSG_HLSL_ENABLE_16BIT_TYPES_BIT = (1 << 11),
    GLSLANG_MSG_HLSL_LEGALIZATION_BIT       = (1 << 12),
    GLSLANG_MSG_HLSL_DX9_COMPATIBLE_BIT     = (1 << 13),
    GLSLANG_MSG_BUILTIN_SYMBOL_TABLE_BIT    = (1 << 14),
    GLSLANG_MSG_ENHANCED                    = (1 << 15),
    GLSLANG_MSG_ABSOLUTE_PATH               = (1 << 16),
    GLSLANG_MSG_DISPLAY_ERROR_COLUMN        = (1 << 17)
}

alias glslang_reflection_options_t = int;
enum
{
    GLSLANG_REFLECTION_DEFAULT_BIT = 0,
    GLSLANG_REFLECTION_STRICT_ARRAY_SUFFIX_BIT = (1 << 0),
    GLSLANG_REFLECTION_BASIC_ARRAY_SUFFIX_BIT = (1 << 1),
    GLSLANG_REFLECTION_INTERMEDIATE_IOO_BIT = (1 << 2),
    GLSLANG_REFLECTION_SEPARATE_BUFFERS_BIT = (1 << 3),
    GLSLANG_REFLECTION_ALL_BLOCK_VARIABLES_BIT = (1 << 4),
    GLSLANG_REFLECTION_UNWRAP_IO_BLOCKS_BIT = (1 << 5),
    GLSLANG_REFLECTION_ALL_IO_VARIABLES_BIT = (1 << 6),
    GLSLANG_REFLECTION_SHARED_STD140_SSBO_BIT = (1 << 7),
    GLSLANG_REFLECTION_SHARED_STD140_UBO_BIT = (1 << 8)
}

alias glslang_profile_t = int;
enum
{
    GLSLANG_BAD_PROFILE = 0,
    GLSLANG_NO_PROFILE = (1 << 0),
    GLSLANG_CORE_PROFILE = (1 << 1),
    GLSLANG_COMPATIBILITY_PROFILE = (1 << 2),
    GLSLANG_ES_PROFILE = (1 << 3)
}

alias glslang_shader_options_t = int;
enum
{
    GLSLANG_SHADER_DEFAULT_BIT = 0,
    GLSLANG_SHADER_AUTO_MAP_BINDINGS = (1 << 0),
    GLSLANG_SHADER_AUTO_MAP_LOCATIONS = (1 << 1),
    GLSLANG_SHADER_VULKAN_RULES_RELAXED = (1 << 2)
}

alias glslang_resource_type_t = int;
enum
{
    GLSLANG_RESOURCE_TYPE_SAMPLER,
    GLSLANG_RESOURCE_TYPE_TEXTURE,
    GLSLANG_RESOURCE_TYPE_IMAGE,
    GLSLANG_RESOURCE_TYPE_UBO,
    GLSLANG_RESOURCE_TYPE_SSBO,
    GLSLANG_RESOURCE_TYPE_UAV
}

struct glslang_shader_t;
struct glslang_program_t;
struct glslang_mapper_t;
struct glslang_resolver_t;

struct glslang_version_t
{
    int major;
    int minor;
    int patch;
    const(char)* flavor;
}

struct glslang_limits_t
{
    bool non_inductive_for_loops;
    bool while_loops;
    bool do_while_loops;
    bool general_uniform_indexing;
    bool general_attribute_matrix_vector_indexing;
    bool general_varying_indexing;
    bool general_sampler_indexing;
    bool general_variable_indexing;
    bool general_constant_matrix_vector_indexing;
}

struct glslang_resource_t
{
    int max_lights;
    int max_clip_planes;
    int max_texture_units;
    int max_texture_coords;
    int max_vertex_attribs;
    int max_vertex_uniform_components;
    int max_varying_floats;
    int max_vertex_texture_image_units;
    int max_combined_texture_image_units;
    int max_texture_image_units;
    int max_fragment_uniform_components;
    int max_draw_buffers;
    int max_vertex_uniform_vectors;
    int max_varying_vectors;
    int max_fragment_uniform_vectors;
    int max_vertex_output_vectors;
    int max_fragment_input_vectors;
    int min_program_texel_offset;
    int max_program_texel_offset;
    int max_clip_distances;
    int max_compute_work_group_count_x;
    int max_compute_work_group_count_y;
    int max_compute_work_group_count_z;
    int max_compute_work_group_size_x;
    int max_compute_work_group_size_y;
    int max_compute_work_group_size_z;
    int max_compute_uniform_components;
    int max_compute_texture_image_units;
    int max_compute_image_uniforms;
    int max_compute_atomic_counters;
    int max_compute_atomic_counter_buffers;
    int max_varying_components;
    int max_vertex_output_components;
    int max_geometry_input_components;
    int max_geometry_output_components;
    int max_fragment_input_components;
    int max_image_units;
    int max_combined_image_units_and_fragment_outputs;
    int max_combined_shader_output_resources;
    int max_image_samples;
    int max_vertex_image_uniforms;
    int max_tess_control_image_uniforms;
    int max_tess_evaluation_image_uniforms;
    int max_geometry_image_uniforms;
    int max_fragment_image_uniforms;
    int max_combined_image_uniforms;
    int max_geometry_texture_image_units;
    int max_geometry_output_vertices;
    int max_geometry_total_output_components;
    int max_geometry_uniform_components;
    int max_geometry_varying_components;
    int max_tess_control_input_components;
    int max_tess_control_output_components;
    int max_tess_control_texture_image_units;
    int max_tess_control_uniform_components;
    int max_tess_control_total_output_components;
    int max_tess_evaluation_input_components;
    int max_tess_evaluation_output_components;
    int max_tess_evaluation_texture_image_units;
    int max_tess_evaluation_uniform_components;
    int max_tess_patch_components;
    int max_patch_vertices;
    int max_tess_gen_level;
    int max_viewports;
    int max_vertex_atomic_counters;
    int max_tess_control_atomic_counters;
    int max_tess_evaluation_atomic_counters;
    int max_geometry_atomic_counters;
    int max_fragment_atomic_counters;
    int max_combined_atomic_counters;
    int max_atomic_counter_bindings;
    int max_vertex_atomic_counter_buffers;
    int max_tess_control_atomic_counter_buffers;
    int max_tess_evaluation_atomic_counter_buffers;
    int max_geometry_atomic_counter_buffers;
    int max_fragment_atomic_counter_buffers;
    int max_combined_atomic_counter_buffers;
    int max_atomic_counter_buffer_size;
    int max_transform_feedback_buffers;
    int max_transform_feedback_interleaved_components;
    int max_cull_distances;
    int max_combined_clip_and_cull_distances;
    int max_samples;
    int max_mesh_output_vertices_nv;
    int max_mesh_output_primitives_nv;
    int max_mesh_work_group_size_x_nv;
    int max_mesh_work_group_size_y_nv;
    int max_mesh_work_group_size_z_nv;
    int max_task_work_group_size_x_nv;
    int max_task_work_group_size_y_nv;
    int max_task_work_group_size_z_nv;
    int max_mesh_view_count_nv;
    int max_mesh_output_vertices_ext;
    int max_mesh_output_primitives_ext;
    int max_mesh_work_group_size_x_ext;
    int max_mesh_work_group_size_y_ext;
    int max_mesh_work_group_size_z_ext;
    int max_task_work_group_size_x_ext;
    int max_task_work_group_size_y_ext;
    int max_task_work_group_size_z_ext;
    int max_mesh_view_count_ext;
    union
    {
        int max_dual_source_draw_buffers_ext;
        int maxDualSourceDrawBuffersEXT;
    };

    glslang_limits_t limits;
}

struct glsl_include_result_t
{
    const(char)* header_name;
    const(char)* header_data;
    size_t header_length;

}

struct glsl_include_callbacks_t
{
    glsl_include_system_func include_system;
    glsl_include_local_func include_local;
    glsl_free_include_result_func free_include_result;
}

struct glslang_input_t
{
    glslang_source_t language;
    glslang_stage_t stage;
    glslang_client_t client;
    glslang_target_client_version_t client_version;
    glslang_target_language_t target_language;
    glslang_target_language_version_t target_language_version;
    const(char)* code;
    int default_version;
    glslang_profile_t default_profile;
    int force_default_version_and_profile;
    int forward_compatible;
    glslang_messages_t messages;
    const(glslang_resource_t)* resource;
    glsl_include_callbacks_t callbacks;
    void* callbacks_ctx;
}

struct glslang_spv_options_t
{
    bool generate_debug_info;
    bool strip_debug_info;
    bool disable_optimizer;
    bool optimize_size;
    bool disassemble;
    bool validate;
    bool emit_nonsemantic_shader_debug_info;
    bool emit_nonsemantic_shader_debug_source;
    bool compile_only;
    bool optimize_allow_expanded_id_bound;
}

extern(C)
{
    alias glsl_include_local_func = glsl_include_result_t* function(void* ctx, const(char)* header_name, const(char)* includer_name, size_t include_depth);
    alias glsl_include_system_func = glsl_include_result_t* function(void* ctx, const(char)* header_name, const(char)* includer_name, size_t include_depth);
    alias glsl_free_include_result_func = int function(void* ctx, glsl_include_result_t* result);
}
