# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.vendor.qti.am.reschedule_service=true \
    ro.sys.fw.dex2oat_thread_count=8 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=8

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.job_delay=true \
    persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
    qemu.hw.mainkeys=0 \
    vendor.video.disable.ubwc=1 \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    vendor.hw.fm.init=0 \
    persist.radio.multisim.config=dsds \
    persist.vendor.qcomsysd.enabled=1 \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=false \
    ro.carrier=unknown \
    ro.dalvik.vm.native.bridge=0 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.backup.ntpServer=0.pool.ntp.org \
    sys.vendor.shutdown.waittime=500 \
    ro.build.shutdown_timeout=0 \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp \
    ro.opengles.version=196610 \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.bluetooth.bluetooth_audio_hal.disabled=true \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.audiorec=true \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=false \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.fm.a2dp.conc.disabled=true \
    vendor.audio.noisy.broadcast.delay=600 \
    persist.vendor.audio.hifi.int_codec=true \
    vendor.audio.offload.pstimeout.secs=3 \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.vendor.audio.sos=true \
    ro.vendor.audio.soundtrigger=none \
    ro.vendor.audio.soundtrigger.lowpower=false \
    vendor.audio_hal.in_period_size=144 \
    vendor.audio_hal.period_multiplier=3 \
    vendor.audio.adm.buffering.ms=2 \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sdk.sensors.gestures=false \
    rild.libpath=/system/vendor/lib64/libril-qc-hal-qmi.so \
    ro.vendor.audio.voice.volume.boost=manual \
    sys.autosuspend.timeout=500000 \
	persist.sys.job_delay=true \
	persist.sys.mcd_config_file=/system/etc/mcd_default.conf \
	ro.control_privapp_permissions=log \
	drm.service.enabled=true \
	qemu.hw.mainkeys=0 \
	vendor.video.disable.ubwc=1 \
	dalvik.vm.heapgrowthlimit=256m \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapsize=512m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=8m \
	ro.hardware.nfc_nci=nqx.default \
	vendor.hw.fm.init=0 \
	persist.radio.multisim.config=dsds \
	persist.vendor.qcomsysd.enabled=1 \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=false \
	ro.dalvik.vm.native.bridge=0 \
	ro.vendor.extension_library=libqti-perfd-client.so \
	persist.vendor.radio.apm_sim_not_pwdn=1 \
	persist.vendor.radio.sib16_support=1 \
	persist.vendor.radio.custom_ecc=1 \
	persist.vendor.radio.rat_on=combine \
	persist.backup.ntpServer=0.pool.ntp.org \
	sys.vendor.shutdown.waittime=500 \
	ro.build.shutdown_timeout=0 \
	ro.frp.pst=/dev/block/bootdevice/by-name/frp \
	ro.opengles.version=196610 \
	vendor.qcom.bluetooth.soc=cherokee \
	persist.bluetooth.bluetooth_audio_hal.disabled=true \
	af.fast_track_multiplier=1 \
	vendor.audio_hal.period_size=192 \
	ro.vendor.audio.sdk.fluencetype=none \
	persist.vendor.audio.fluence.voicecall=true \
	persist.vendor.audio.fluence.voicerec=false \
	persist.vendor.audio.fluence.speaker=true \
	vendor.audio.tunnel.encode=false \
	persist.vendor.audio.ras.enabled=false \
	vendor.audio.offload.buffer.size.kb=64 \
	audio.offload.min.duration.secs=30 \
	audio.offload.video=true \
	vendor.audio.offload.track.enable=false \
	audio.deep_buffer.media=true \
	vendor.voice.path.for.pcm.voip=true \
	vendor.audio.offload.multiaac.enable=true \
	vendor.audio.dolby.ds2.enabled=false \
	vendor.audio.dolby.ds2.hardbypass=false \
	vendor.audio.offload.multiple.enabled=false \
	vendor.audio.offload.passthrough=false \
	ro.vendor.audio.sdk.ssr=false \
	vendor.audio.offload.gapless.enabled=true \
	vendor.audio.parser.ip.buffer.size=262144 \
	vendor.audio.flac.sw.decoder.24bit=true \
	persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
	vendor.audio.use.sw.alac.decoder=true \
	vendor.audio.use.sw.ape.decoder=true \
	vendor.audio.hw.aac.encoder=true \
	vendor.fm.a2dp.conc.disabled=true \
	vendor.audio.noisy.broadcast.delay=600 \
	persist.vendor.audio.hifi.int_codec=true \
	vendor.audio.offload.pstimeout.secs=3 \
	ro.af.client_heap_size_kbyte=7168 \
	persist.vendor.audio.hw.binder.size_kbyte=1024 \
	ro.vendor.audio.sos=true \
	ro.vendor.audio.soundtrigger=none \
	ro.vendor.audio.soundtrigger.lowpower=false \
	ro.vendor.sensors.facing=false \
	ro.vendor.sensors.cmc=false \
	ro.vendor.sdk.sensors.gestures=false \
	rild.libpath=/system/vendor/lib64/libril-qc-hal-qmi.so \
	ro.vendor.audio.voice.volume.boost=manual \
	sys.autosuspend.timeout=500000 \
	persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.radio.calls.on.ims=1

# Debug Options
PRODUCT_PROPERTY_OVERRIDES += \
   persist.dbg.ims_volte_enable=1 \
   persist.dbg.volte_avail_ovr=1 \
   persist.dbg.vt_avail_ovr=1 \
   persist.dbg.wfc_avail_ovr=1

# Radio Options
PRODUCT_PROPERTY_OVERRIDES += \
   persist.vendor.radio.rat_on=combine \
   persist.vendor.radio.data_ltd_sys_ind=1 \
   persist.vendor.radio.data_con_rprt=1 \
   persist.radio.calls.on.ims=1

# Volte & Vilte
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.calls.on.ims=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.ims.disableUserAgent=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bokeh.switch.lux=290 \
    persist.camera.auxswitch.threshold=330 \
    persist.camera.imglib.usefdlite=1 \
    persist.camera.depth.focus.cb=0 \
    persist.camera.expose.aux=1 \
    persist.camera.isp.clock.optmz=0 \
    persist.camera.isp.turbo=1 \
    persist.camera.linkpreview=0 \
    persist.camera.mainswitch.threshold=419 \
    persist.camera.set.afd=4 \
    persist.camera.stats.test=0 \
    persist.flash.low.lux=390 \
    persist.flash.light.lux=340 \
    persist.imx376_sunny.low.lux=310 \
    persist.imx376_sunny.light.lux=280 \
    persist.imx376_ofilm.low.lux=310 \
    persist.imx376_ofilm.light.lux=280 \
    persist.sys.exif.make=Xiaomi \
    persist.radio.VT_CAM_INTERFACE=2 \
    ro.eyecare.brightness.threshold=3 \
    ro.eyecare.brightness.level=8 \
    ro.hist.brightness.threshold=5 \
    persist.vendor.camera.multicam.hwsync=TRUE \
    persist.vendor.camera.multicam.fpsmatch=TRUE \
    persist.vendor.camera.enableAdvanceFeatures=0x347 \
    persist.vendor.camera.display.umax=1920x1080 \
    persist.vendor.camera.display.lmax=1280x720 \
    persist.vendor.camera.eis.enable=0 \
    persist.camera.eis.enable=0 \
    persist.vendor.camera.stats.test=0 \
    persist.vendor.camera.linkpreview=0 \
    persist.vendor.camera.awb.sync=2 \
    persist.vendor.camera.fdvideo=1 \
    persist.vendor.camera.mfnrframenum=8 \
    persist.vendor.camera.multicam=TRUE \
    persist.vendor.camera.multicam.framesync=1 \
    persist.vendor.camera.auxswitch.threshold=330 \
    persist.vendor.camera.mainswitch.threshold=419 \
    persist.vendor.ov13855_sunny.low.lux=385 \
    persist.vendor.ov13855_sunny.light.lux=370 \
    persist.vendor.s5k3l8_ofilm.low.lux=379 \
    persist.vendor.s5k3l8_ofilm.light.lux=367 \
    persist.vendor.camera.stats.test=5 \
    persist.vendor.camera.depth.focus.cb=0 \
    persist.vendor.imx376_sunny.low.lux=290 \
    persist.vendor.imx376_sunny.light.lux=275 \
    persist.vendor.imx376_ofilm.low.lux=290 \
    persist.vendor.imx376_ofilm.light.lux=275 \
    persist.vendor.bokeh.switch.lux=290 \
    persist.vendor.camera.exif.make=Xiaomi

# Dual SIM
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.multisim.config=dsds

# DPI
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.display.lcd_density=403

# Paper mode
PRODUCT_PROPERTY_OVERRIDES += \
	sys.jdi_nt36672_offset=9 \
	sys.jdi_nt36672_length=45 \
	sys.paper_mode_max_level=32 \
	sys.tianma_nt36672_offset=12 \
	sys.tianma_nt36672_length=46

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.iwlan.enable=true \
	persist.vendor.radio.data_con_rprt=1