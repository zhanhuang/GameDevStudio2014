//Maya ASCII 2014 scene
//Name: spiral.ma
//Last modified: Mon, Feb 24, 2014 01:30:01 AM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.13 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.33331279428776606 12.973948567144124 -3.036892526567589 ;
	setAttr ".r" -type "double3" -67.200000000033725 -491.99999999993906 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-16 0 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 7.0578842456438752e-16 -4.768310737579883e-16 -1.7259827796336699e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 11.565079723156853;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.9972012105220442 2.3125277251801037 -0.038084247053319586 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.08380392333381087 4.3052950946954605 0.32474820095482226 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 0.28100185207451001;
	setAttr ".ow" 23.748156386231887;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.08380392333381087 4.3052950946954605 0.043746348880312258 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.018289349025710323 4.3052950946954605 0.083011777045337395 ;
	setAttr ".rpt" -type "double3" -3.1047297107936167e-19 -7.7902551357463245e-18 7.5526028840996971e-18 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 0.039265428165025151;
	setAttr ".ow" 29.860266770975318;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.018289349025710323 4.3052950946954605 0.043746348880312258 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pHelix1";
	setAttr ".t" -type "double3" 2.9971906604999194 2.6904401273331193 -0.03806320661371343 ;
createNode mesh -n "pHelixShape1" -p "pHelix1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 805 ".pt";
	setAttr ".pt[1]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[12]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[17]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[22]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[25]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[29]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[30]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[33]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[36]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[37]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[38]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[41]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[44]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[45]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[46]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[49]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[52]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[53]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[54]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[57]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[60]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[62]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[65]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[68]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[69]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[70]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[73]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[76]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[77]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[78]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[81]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[84]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[85]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[86]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[89]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[92]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[93]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[94]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[97]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[100]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[101]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[102]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[105]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[108]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[109]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[110]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[113]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[116]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[117]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[118]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[121]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[124]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[125]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[126]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[129]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[132]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[133]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[134]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[137]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[140]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[141]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[142]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[145]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[148]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[149]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[150]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[153]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[156]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[157]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[158]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[161]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[164]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[165]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[166]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[169]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[172]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[173]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[174]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[177]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[180]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[181]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[182]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[185]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[188]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[189]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[190]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[193]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[196]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[197]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[198]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[201]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[204]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[205]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[206]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[209]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[212]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[213]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[214]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[217]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[220]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[221]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[222]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[225]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[228]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[229]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[230]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[233]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[236]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[237]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[238]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[241]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[244]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[245]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[246]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[249]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[252]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[253]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[254]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[257]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[260]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[261]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[262]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[265]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[268]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[269]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[270]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[273]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[276]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[277]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[278]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[281]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[284]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[285]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[286]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[289]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[292]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[293]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[294]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[297]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[300]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[301]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[302]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[305]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[309]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[313]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[317]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[321]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[324]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[325]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[326]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[329]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[332]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[333]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[334]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[337]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[340]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[341]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[342]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[345]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[348]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[349]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[350]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[353]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[356]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[357]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[358]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[361]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[364]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[365]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[366]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[369]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[372]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[373]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[374]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[377]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[380]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[381]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[382]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[385]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[388]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[389]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[390]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[393]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[396]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[397]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[398]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[401]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[404]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[405]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[406]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[409]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[412]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[413]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[414]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[417]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[420]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[421]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[422]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[425]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[428]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[429]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[430]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[433]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[436]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[437]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[438]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[441]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[444]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[445]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[446]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[449]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[452]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[453]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[454]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[457]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[460]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[461]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[462]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[465]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[468]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[469]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[470]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[473]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[476]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[477]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[478]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[481]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[484]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[485]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[486]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[489]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[492]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[493]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[494]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[497]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[500]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[501]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[502]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[505]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[508]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[509]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[510]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[513]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[516]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[517]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[518]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[521]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[524]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[525]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[526]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[529]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[532]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[533]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[534]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[537]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[540]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[541]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[542]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[545]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[548]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[549]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[550]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[553]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[556]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[557]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[558]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[561]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[564]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[565]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[566]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[569]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[572]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[573]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[574]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[577]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[580]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[581]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[582]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[585]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[588]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[589]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[590]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[593]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[596]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[597]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[598]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[601]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[604]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[605]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[606]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[609]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[612]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[613]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[614]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[617]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[620]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[621]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[622]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[625]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[628]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[629]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[630]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[633]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[636]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[637]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[638]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[641]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[644]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[645]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[646]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[649]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[652]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[653]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[654]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[657]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[660]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[661]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[662]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[665]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[668]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[669]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[670]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[673]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[676]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[677]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[678]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[681]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[684]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[685]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[686]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[689]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[692]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[693]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[694]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[697]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[700]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[701]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[702]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[705]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[708]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[709]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[710]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[713]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[716]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[717]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[718]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[721]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[724]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[725]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[726]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[729]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[732]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[733]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[734]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[737]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[740]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[741]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[742]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[745]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[748]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[749]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[750]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[753]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[756]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[757]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[758]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[761]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[764]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[765]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[766]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[769]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[772]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[773]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[774]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[777]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[780]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[781]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[782]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[785]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[788]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[789]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[790]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[793]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[796]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[797]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[798]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[801]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[804]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[805]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[806]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[809]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[812]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[813]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[814]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[817]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[820]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[821]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[822]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[825]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[828]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[829]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[830]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[833]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[836]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[837]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[838]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[841]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[844]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[845]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[846]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[849]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[852]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[853]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[854]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[857]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[860]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[861]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[862]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[865]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[868]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[869]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[870]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[873]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[876]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[877]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[878]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[881]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[884]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[885]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[886]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[889]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[892]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[893]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[894]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[897]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[900]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[901]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[902]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[905]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[908]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[909]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[910]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[913]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[916]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[917]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[918]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[921]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[924]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[925]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[926]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[929]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[932]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[933]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[934]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[937]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[940]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[941]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[942]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[945]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[948]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[949]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[950]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[953]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[956]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[957]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[958]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[961]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[964]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[965]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[966]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[969]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[972]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[973]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[974]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[977]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[980]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[981]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[982]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[985]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[988]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[989]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[990]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[993]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[996]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[997]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[998]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1001]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1004]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1005]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1006]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1009]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1012]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1013]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1014]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1017]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1020]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1021]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1022]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1025]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1028]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1029]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1030]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1033]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1036]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1037]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1038]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1041]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1044]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1045]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1046]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1049]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1052]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1053]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1054]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1057]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1060]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1061]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1062]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1065]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1068]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1069]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1070]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1073]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1076]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1077]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1078]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1081]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1084]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1085]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1086]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1089]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1092]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1093]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1094]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1097]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1100]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1101]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1102]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1105]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1108]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1109]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1110]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1113]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1116]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1117]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1118]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1121]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1124]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1125]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1126]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1129]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1132]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1133]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1134]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1137]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1140]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1141]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1142]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1145]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1148]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1149]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1150]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1153]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1156]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1157]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1158]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1161]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1164]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1165]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1166]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1169]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1172]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1173]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1174]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1177]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1180]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1181]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1182]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1185]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1188]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1189]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1190]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1193]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1196]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1197]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1198]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1201]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1204]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1205]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1206]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1209]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1212]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1213]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1214]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1217]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1220]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1221]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1222]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1225]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1228]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1229]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1230]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1233]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1236]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1237]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1238]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1241]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1244]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1245]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1246]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1248]" -type "float3" 0 -0.0040181875 0 ;
	setAttr ".pt[1249]" -type "float3" 0 -0.042014472 0 ;
	setAttr ".pt[1252]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1253]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1254]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1257]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1260]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1261]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1262]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1265]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1268]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1269]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1270]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1273]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1276]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1277]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1278]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1281]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1284]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1285]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1286]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1289]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1292]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1293]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1294]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1297]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1300]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1301]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1302]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1305]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1308]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1309]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1310]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1313]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1316]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1317]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1318]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1321]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1324]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1325]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1326]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1329]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1332]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1333]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1334]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1337]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1340]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1341]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1342]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1345]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1348]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1349]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1350]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1353]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1356]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1357]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1358]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1361]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1364]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1365]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1366]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1369]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1372]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1373]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1374]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1377]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1380]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1381]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1382]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1385]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1388]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1389]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1390]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1393]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1396]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1397]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1398]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1401]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1404]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1405]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1406]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1409]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1412]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1413]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1414]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1417]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1420]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1421]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1422]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1425]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1428]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1429]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1430]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1433]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1436]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1437]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1438]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1441]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1444]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1445]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1446]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1449]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1452]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1453]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1454]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1457]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1460]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1461]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1462]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1465]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1468]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1469]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1470]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1473]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1476]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1477]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1478]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1481]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1484]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1485]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1486]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1489]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1492]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1493]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1494]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1497]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1500]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1501]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1502]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1505]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1508]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1509]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1510]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1513]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1516]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1517]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1518]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1521]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1524]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1525]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1526]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1529]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1532]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1533]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1534]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1537]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1540]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1541]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1542]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1545]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1548]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1549]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1550]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1553]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1556]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1557]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1558]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1561]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1564]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1565]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1566]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1569]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1572]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1573]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1574]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1577]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1580]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1581]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1582]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1585]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1588]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1589]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1590]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1593]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1596]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1597]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1598]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1601]" -type "float3" 0 -0.03799627 0 ;
	setAttr ".pt[1604]" -type "float3" 0 -0.48308203 0 ;
	setAttr ".pt[1605]" -type "float3" 0 -0.7779088 0 ;
	setAttr ".pt[1606]" -type "float3" 0 -0.48308203 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyHelix -n "polyHelix1";
	setAttr ".h" 5;
	setAttr ".w" 2.9423751255460657;
	setAttr ".cuv" 3;
createNode brush -n "art3dPaintLastPaintBrush";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/vancehuang/Documents/maya/projects/default//sourceimages/3dPaintTextures/spiral/pHelixShape1_color.png";
createNode place2dTexture -n "place2dTexture1";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyHelix1.out" "pHelixShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "pHelixShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of spiral.ma
