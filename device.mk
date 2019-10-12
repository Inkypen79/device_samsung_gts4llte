#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Add common definitions for Qualcomm
$(call soong_config_set,rfs,mpss_firmware_symlink_target,firmware_modem)
$(call inherit-product, hardware/qcom-caf/common/common.mk)

# API levels
PRODUCT_SHIPPING_API_LEVEL := 27

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl.samsung-msm8998 \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    audio.r_submix.default \
    audio.usb.default \

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener

PRODUCT_PACKAGES += \
    libsamsungSoundbooster_plus \
    SoundBoosterStage

$(call soong_config_set,samsungAudioVars,soundbooster_dsp_library,//vendor/samsung/gts4llte:lib_SoundBooster_ver900)

PRODUCT_PACKAGES += \
    SamsungDAP

TARGET_EXCLUDES_AUDIOFX := true

# Audio configs
PRODUCT_COPY_FILES += \
    device/samsung/gts4llte/audio/configs/audio_configs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_configs.xml \
    device/samsung/gts4llte/audio/configs/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    device/samsung/gts4llte/audio/configs/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    device/samsung/gts4llte/audio/configs/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    device/samsung/gts4llte/audio/configs/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    device/samsung/gts4llte/audio/configs/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
    device/samsung/gts4llte/audio/configs/audio_platform_info_i2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_i2s.xml \
    device/samsung/gts4llte/audio/configs/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    device/samsung/gts4llte/audio/configs/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    device/samsung/gts4llte/audio/configs/audio_policy_volumes_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_sec.xml \
    device/samsung/gts4llte/audio/configs/audio_tuning_mixer_tavil.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tavil.txt \
    device/samsung/gts4llte/audio/configs/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    device/samsung/gts4llte/audio/configs/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    device/samsung/gts4llte/audio/configs/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    device/samsung/gts4llte/audio/configs/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
    device/samsung/gts4llte/audio/configs/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
    device/samsung/gts4llte/audio/configs/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    device/samsung/gts4llte/audio/configs/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

# Camera
$(call soong_config_set_bool,samsungCameraVars,needs_sec_reserved_field,true)

PRODUCT_PACKAGES += \
    android.hardware.camera.provider-service.samsung-msm8998

# Charger
PRODUCT_PACKAGES += \
    charger_res_images_vendor

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# Control groups and task profiles
PRODUCT_COPY_FILES += \
    system/core/libprocessgroup/profiles/cgroups_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8998 \
    hwcomposer.qcom

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    vendor.qti.hardware.memtrack-service

# Fastboot
PRODUCT_PACKAGES += \
    fastbootd

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck_ramdisk \
    tune2fs_ramdisk \
    resize2fs_ramdisk

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health-service.samsung \
    android.hardware.health-service.samsung-recovery \

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.samsung

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.can.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    qca6234-service.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.zram \
    init.gts4llte.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.samsung.bsp.rc \
    init.samsung.wifi.rc \
    init.samsung.rc \
    init.target.rc \
    init.recovery.qcom.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/samsung \
    vendor/qcom/opensource/usb/etc

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/gts4llte/gts4llte-vendor.mk)
