LOCAL_PATH := $(call my-dir)

ifneq ($(filter xiaomi,$(BOARD_VENDOR)),)

CAM_LIBS := libAvatarEngine.so libttffmpeg.so libjni_sound_effect.so libmotion_photo_c++_shared.so libPSNPE.so libvvc++_shared.so libvvmediaeditor.so libcamera_960_mpbase.so libfenshen.so libjni_wideselfie.so libmiuidiffpatcher.so libMiuiGalleryNSGIF.so libmiuinative.so libmorpho_memory_allocator.so libmotion_photo.so libsnpe_adsp.so libsnpe_dsp_domains.so libsnpe_dsp_domains_v2.so libtt_jni.so libttvideorecorder.so libarcsoft_deflicker.so libcamera_arcsoft_handgesture.so libmillet_comm.so libmimoji_avatarengine.so libsnpe_dsp_v66_domains_v2_skel.so libvideo_extra_interpolator.so libarcsoft_supernight_jni.so libcamera_arcsoft_beautyshot.so libsnpe_dsp_v65_domains_v2_skel.so libarcsoft_single_chart_calibration.so libarcsoft_sn_mtk_apu.so libcamera_mialgo_ambilight.so libheif.so libjni_pacprocessor.so libvideo_extra_color_converter.so libArcsoft_Avatar_Jni.so libcamera_chroma_nr.so libcamera_scene.so libjni_arcsoft_beautyshot.so libmorpho_sensor_fusion.so libsymphony-cpu.so libtt_effect.so libc++_shared.so libhandengine.arcsoft.so libsnpe_dsp_domains_v2_system.so libjni_imagecodec.so libmimoji_tracking.so libarcsoft_super_night_raw_mtk.so libcamera_ambilight_utils.so libCameraEffectJNI.so libmimoji_bokeh_845_video.so libmimoji_video2gif.so libsnpe_dsp_skel.so libarcsoft_wideselfie.so libcamera_ambilight_ambt.so libcamera_wideselfie_mpbase.so libcamera2ndk.so libarcsoft_super_night_raw_mpbase.so libcamera_beauty_mpbase.so libcamera_client.so libcamera_handgesture_mpbase.so libcamera_metadata.so libmimoji_jni.so libmimoji_soundsupport.so libmisoundcamerasupport.so libmorpho_panorama_gp3.so libmotion_photo_mace.so libsubtitle_jni.so libttvebase.so libarc_layer_sgl.so libcamera_sound_effect.so libdeflicker_jni.so libSNPE.so libsnpe_dsp_domains_system.so libttvideoeditor.so libdoc_photo.so librefocus.so libmiffmpeg.so libdoc_photo_c++_shared.so libgallery_arcsoft_portrait_lighting.so libgallery_arcsoft_portrait_lighting_c.so libgallery_block_sdk.so libgallery_mpbase.so librefocus_mibokeh.so libgallery_arcsoft_dualcam_refocus.so libmibokeh_gallery.so libttyuv.so libclone_c++_shared.so libcom.xiaomi.camera.algojni.so libcom.xiaomi.camera.mianodejni.so libcom.xiaomi.camera.requestutil.so libDocumentProcess_qcom.so libffmpeg.so libjni_jpegutil_xiaomi.so libmulti-wakeup-engine.so librecord_video.so libDocumentProcess.so
CAM_SYMLINKS := $(addprefix $(PRODUCT_OUT)/system/priv-app/ANXCamera/lib/arm64/,$(notdir $(CAM_LIBS)))
$(CAM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cam lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CAM_SYMLINKS)

endif
