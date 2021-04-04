# Audio
PRODUCT_PACKAGES += \
PRODUCT_PACKAGES += \
    audiod \
    audiod \
    audio.primary.msm8916 \
    audio.primary.msm8916 \
    libqcompostprocbundle \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvisualizer \
    libqcomvoiceprocessing
    libqcomvoiceprocessing

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    av.streaming.offload.enable=true \
    audio.deep_buffer.media=true \
    audio.offload.buffer.size.kb=64 \
    audio.offload.gapless.enabled=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.pcm.16bit.enable=false \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.video=true \
    use.voice.path.for.pcm.voip=true \
    ro.qc.sensors.wl_dis=true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/unblock_wakelock.sh:system/etc/unblock_wakelock.sh
