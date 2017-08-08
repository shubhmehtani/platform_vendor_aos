
# Atomic-OS Version 1.5 Changelog
====================================================

08-08-2017
============

#### build/
* 30c428c59 Merge tag 'android-7.1.2_r29' of https://android.googlesource.com/platform/build into HEAD

#### device/qcom/sepolicy/
* 116492f sepolicy: Add qpnp-smbcharger battery supply contexts
* f28ffe6 sepolicy: Add new dc_supply sysfs
* 62e352b sepolicy: Allow untrusted_apps to read usb power supply stats

#### frameworks/av/
* 9fd15f2fa Merge tag 'android-7.1.2_r29' of https://android.googlesource.com/platform/frameworks/av into HEAD

#### frameworks/base/
* 1fba38c68aa SystemUI: add volume tones back [1/2] During the move from VolumePanel to the new VolumeController/Dialog setup, the volume tone logic got removed.
* f7640d604ac Merge tag 'android-7.1.2_r29' of https://android.googlesource.com/platform/frameworks/base into up

#### frameworks/native/
* d29b564ff Merge tag 'android-7.1.2_r29' of https://android.googlesource.com/platform/frameworks/native into HEAD

#### hardware/qcom/audio-caf/msm8916/
* 7fcca3ec Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio-caf/msm8937/
* 9dbd0629 Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio-caf/msm8952/
* 34f4914d Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio-caf/msm8960/
* e2486667 Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio-caf/msm8974/
* 0d8579c5 Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio-caf/msm8994/
* 9dcddd7c Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio-caf/msm8996/
* 5b125476 Fix security vulnerability: Equalizer setParameter memory overflow

#### hardware/qcom/audio/default/
* a4f1bc58 Merge tag 'android-7.1.2_r29' into cm-14.1

#### manifest/
* 91dfa17 Merge branch 'android-7.1.2_r33' of https://android.googlesource.com/… …platform/manifest into n-mr2

#### packages/apps/Settings/
* b54f591b0 Settings: Add volume tones back [2/2] This patch allows the users to choose if they want the audible tone when adjusting the volume
* 5f238e089 Settings: Support color engine

#### system/core/
* bbce9fc7e Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into n-mr2

#### vendor/aos/
* 8ee9a1e Fix extract_utils when not using blob sections
* cc2a37c Add WOM Internet/MMS (CL) apn
* b388d16 qcom: Allow setting custom audio, display, and media HALs
* 36ea870 templates: Update to show usage for new extract_files features
* 731fe1a extract_files: Add support for paths without system/
* f30f5d4 extract_files: Add support for specifying blob sections
* 02885bf vendor: Add templates for proprietary extraction scripts
* b6eb4fb extract_utils: support extracting directly from an ota zip
* 98fe65a extract_utils: Fix locale issue with sort
* 3b9c0cb extract_utils: fix extracting XML files containing binary characters
* 83a1ed4 build: Update smali and baksmali to 2.2.1

08-07-2017
============

#### frameworks/opt/net/wifi/
* cbd6416c Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into aosp-7.1.2
* 20936bc2 Fix misc-macro-parentheses warnings.
* 5d6b66ad Fix google-explicit-constructor warnings in wifi/service.
* 6cfdb430 Check for config before accessing it
* a2dc3f32 Wifi: Reset power save mode after association
* 01273efa Do not show scan result entries for MESH networks
* baa81ead Broadcast networkstatechange indication on exit from ScanModeState

#### system/extras/
* 6649272 Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into aosp-7.1.2

#### system/keymaster/
* 533de35 Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into aosp-7.1.2

#### system/security/
* 68b0869 Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into aosp-7.1.2

08-06-2017
============

#### hardware/qcom/display-caf/apq8084/
* e2f4340ea cec: Fix breakage due to API change

#### hardware/qcom/media-caf/apq8084/
* 02e57500c videopp: fix include paths for lineage

08-05-2017
============

#### frameworks/base/
* b964381a84e Unlock keystore with fingerprint after reboot or SysUI restart
* 540455f1dd2 Fingerprint authentication vibration [1/2]

#### packages/apps/Laboratory/
* 6104fce Lab: Prettify incall vibration toggle
* 5e002c4 incall vibration options [3/3] * Add misc fragment
* 5208fd8 Add Miscellaneous Tab
* 3bbde26 [1/2] Lab: show battery info on lockscreen when charging

08-04-2017
============

#### frameworks/base/
* 4eee29a8282 Introduce color engine.
* 64480152816 TileAdapter: allow styling tile item decoration background

#### hardware/qcom/fm/
* dcad703 Automatic translation import

#### hardware/qcom/media-caf/msm8916/
* ec789248f Merge remote-tracking branch 'caf/LA.BR.1.2.9_rb1.23' into cm-14.1-caf-8916

#### hardware/qcom/media-caf/msm8994/
* 1afe59f2c Merge remote-tracking branch 'caf/LA.BF64.1.2.3_rb1.15' into cm-14.1-caf-8994

#### packages/apps/CarrierConfig/
* 630d3d1 Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into aosp-7.1.2

#### packages/resources/devicesettings/
* 0f88d74 Automatic translation import

#### vendor/aos/
* bd98f7f devices: Add condor

08-03-2017
============

#### packages/apps/Laboratory/
* f308c1c [1/2] Lab: show charging current & voltage on lockscreen

#### system/bt/
* d7c24a7a Merge tag 'LA.UM.5.5.r1-05400-8x96.0' into aosp-7.1.2

08-02-2017
============

#### build/
* 5b43e1afd Revert "Remove Feedback Directed Optimization support"
* 467495ed4 build: sdclang: Sync ldflags and cflags
* 98bcab69c binary: Append cc/cxx wrapper to sdclang
* e1dd9dafe build: sdclang: move the host detection logic
* f0aa005bb build: Do proper optimization during SDCLANG_LTO
* 9dc7b6bde build: ensure QCLD usage when requested
* 8550006b7 build: cleanup SDCLANG logic
* a557e2650 build: QCLD/LTO: support for unsafe filtering
* 0c430079e build: Add support for selective LTO with QCLD
* 24da73b42 build: enhance and extend support for SDCLANG
* c49833ece Revert "binary: Append cc/cxx wrapper to sdclang"

#### external/skia/
* b842785e9 skia: enable LTO for shared lib
* 668f844e8 skia: update support for advanced compiler features
* b885e3870 Skia: enable SDCLANG LTO

#### frameworks/base/
* cfcb5b4ca1f Lockscreen charging info: real time values [2/2]
* 71dc07a442e [2/2] frameworks_base: show battery info on lockscreen when charging
* cc4fb8c1a7e [2/2] frameworks: show charging current & voltage on lockscreen
* f46433268a2 sensors: Create bool to select what timestamp to use (#3)

#### frameworks/native/
* d696d1c27 libs: enable SDCLANG LTO
* ab7cd4f26 SF: Enable SDCLANG LTO
* 40d768425 binder: enable SDCLANG LTO
* a7334d60b Revert "Sensor: Add minimum delay check in SensorDevice"

#### manifest/
* 063d811 manifest: add external/sqlite & sdclang 3.8

#### vendor/aos/
* 9591a90 common: sdclang-lto: filter cortex-a53-835769 workaround flags
* b2fe0e6 common: sdclang-lto: support for unsafe filtering
* deead4a common: sdclang: LTO: filter new no-erratum-fix flag
* 47538c1 common: sdclang: Explicitly enable Automatic Vectorization
* 0e29785 common: sdclang: Enable by default!
* 8db9a2c common: add support for SDCLANG
* 66f4149 Revert "Revert "vendor: cm: sepolicy: Allow rw-access to system_app_data_file""
* ac143bf extract_utils: Fix cleanup variables assigment

08-01-2017
============

#### frameworks/base/
* af3892689f6 QS: Add NFC tile
* 15a9f9b0c05 SystemUI: Add tile for enable/disable HW keys

#### vendor/aos/
* 0035667 Merge pull request #2 from mvaisakh/n-mr2
* d4d31fc Add cedric
* 9d58fb4 Enable ADB authentication.
* 4d884ef Props: Add selinux prop

07-31-2017
============

#### external/sqlite/
* e4a417f sqlite: Enable ATOMIC_WRITE
* 89959cb Enhance the query planner

#### external/zlib/
* 09ff643 Android.mk: enable unaligned memory access
* 1730c41 trees: minor enhancement to put_short() macro
* 44b898d deflate: restructure the loop
* 55e27d7 deflate: rewrite the loops
* 16e9011 Define ZLIB_CONST to add constness.
* 4c7f6b1 Update zlib to 1.2.11
* 4e43071 zlib: crc optimization for arm64
* 9037958 zlib: Degrade Z_BLOCK only when last flush was Z_BLOCK
* 985a381 Cache s->ins_h in a scalar while looping. This makes a big difference on long repeated inputs.
* d2055c0 zlib: enable advanced compiler features
* 669be9b zlib: Simplify Makefile
* fbfdb03 zlib: ensure to unset local variable

#### frameworks/base/
* 0afe3689b8a Fix visibilty of Pulse & Headsup tiles
* 773a2b21f1b incall vibration options [2/3]
* 3c4ce3731b9 aosutils: Add inVoiceCapable in our util
* 6812fbd5c7f Fix NPE with void android.view.VelocityTracker.clear()
* ecd3a337ba6 SystemUI: animate icon when locking a task
* 6ed1c7b1abd Fix NPE when changing Display size in Settings
* 7b5398577d9 Retry opening camera later on if it failed before
* 6e3c5fdb0e7 Fix div by zero for QS tile extreme cases
* 82bdba428ac Adjust quickbar tile gap
* ac416babd93 QS: Remove listeners only if added
* 02275d45491 Unfuck QS tile fail
* 0ed706258d9 Optimize quick qs scroller commit
* 35629c99921 Better QS detail clip animation
* 885f79c2b8e Adjust quickbar tile gap
* 27bd429dcc6 QSAnimator: Fix systemui fc

#### packages/services/Telecomm/
* da4561c8 incall vibration options [1/3] *allow setting vibration when call is connected *allow setting vibration when call is disconnected *allow setting vibration for call waiting *this works with google and aosp dialer :)

#### system/netd/
* 52a5b75 SoftAp: Fix compilation in netd if  LIBWPA_CLIENT_EXISTS undefined.

07-30-2017
============

#### frameworks/base/
* d4fe1915856 Remove fwb navbar drawables, to use DUI drawables

#### manifest/
* 36dada7 manifest: track our fork of caf soundrecorder

#### packages/apps/Bluetooth/
* d711d39b BluetoothOppTransferActivity: fix after ad46f6a52d7240ed1e2127c4263a5cbcf454df09

#### packages/services/Telecomm/
* 9d233853 Fix in call timer bug

07-29-2017
============

#### frameworks/base/
* a1fcf713b8d SystemUI: locked tasks should have a valid view
* e3fcbaf4672 GC in heapDumpFinished to cleanup hprof fd

#### frameworks/native/
* 29badbd56 Fix clang static analyzer warnings.
* b6f196abc Fix clang static anaylzer warnings.

#### packages/apps/Bluetooth/
* 85e548ea Automatic translation import
* 4b2c110a Automatic translation import
* 18991ea3 Merge tag 'android-7.1.2_r17' into aosp-7.1.2

#### packages/apps/CellBroadcastReceiver/
* f8d516a Automatic translation import

#### packages/apps/Contacts/
* 3b44ce9b3 Automatic translation import
* cd743aeb4 Automatic translation import
* 401bf9fce Automatic translation import
* 831326a43 Automatic translation import
* 0ac084943 Automatic translation import
* 32c06b962 Automatic translation import
* 887fdf38d Automatic translation import
* 0295d0a35 Automatic translation import
* eed7001f2 Automatic translation import
* 5c90d0a96 Automatic translation import
* 2db4f8ef0 contacts: Add support for import contacts to local phone storage
* 8d499f184 Automatic translation import
* 7d06ee83f Automatic translation import
* 0423dca1b Automatic translation import
* 046703b71 Contacts: Fix strings
* b44c0a995 Automatic translation import
* 84684b5c6 Automatic translation import

#### packages/apps/ContactsCommon/
* 5b9f4c7a Allow to edit the SIP field of contacts stored locally
* ccc59963 Automatic translation import
* 8c3a3c2f Automatic translation import
* 8eb4adaf Automatic translation import
* 2fc4286c Automatic translation import
* 9cd261d1 SelectAccountActivity : Support local phone account
* c29282c1 Add local phone account as a writable AccountTypes.

#### packages/apps/DeskClock/
* 9a18f9c6 Automatic translation import
* 7bec9fea Use density independent units for the timer digits for sw360dp
* 3a0ab5e7 Automatic translation import
* 53791432 Automatic translation import

#### packages/apps/Dialer/
* d4d34be90 Dialer: Fix compilation warnings

#### packages/apps/PhoneCommon/
* cbfe264 Automatic translation import
* bab9013 Automatic translation import
* 779a795 Automatic translation import
* 4f33115 Automatic translation import
* c282e48 Automatic translation import

#### packages/inputmethods/LatinIME/
* c90fb73b9 Merge tag 'LA.UM.5.5.r1-05300-8x96.0' into aosp-7.1.2

#### packages/providers/DownloadProvider/
* e1ce973 Remove download notification after preview
* b8057f6 Remove permission group no longer used thus fixing warning

#### packages/services/Telecomm/
* b9dd1e66 Automatic translation import
* 45f30a79 Automatic translation import
* 2345cbad Automatic translation import
* 8b9073de Automatic translation import
* 754588cf SensitivePhoneNumbers: Handle lists of MCC codes

#### packages/services/Telephony/
* 278cd034 Automatic translation import
* ca423829 Automatic translation import
* 42d73a4b Automatic translation import
* bdb68070 Automatic translation import
* 6562cc42 Fix Phone Service crash on MSIM devices as Guest user
* ddcbbe60 VoicemailSettingsActivity: Fix some NPEs
* 4ee5e609 Automatic translation import

#### system/core/
* 256ce654d Revert "Revert "Revert "Sched policy: fix the mess made by CAF"""

#### vendor/aos/
* f261c87 apns: correct the mvno_match_data for MasMovil Spain

07-28-2017
============

#### bionic/
* f93f367b7 libm: add Cortex-A73 to AArch32 math instructions list

#### build/
* a5f89ffd7 Run Linux x86_64 once, don't use python for HOST_OS_EXTRA
* ff570eedb Only run Kati twice on a clean build due to clean_steps.mk
* 1dd0fbdf4 Stop calling , remove HOST_JDK_IS_64BIT_VERSION

#### packages/apps/Dialer/
* b99e8b6d2 Show contacts with phone numbers only
* 0a7198c2a Fixed the strange action label issue on VVM Empty List View
* 564b93653 Fixed NPE crash on Dialpad
* d0b4536cd Dialer: InCallUI: Enable Sustained Performance Mode

#### packages/apps/Settings/
* 08de9b9bc Fix kernel version formatting not working
* 75d9eba66 Show refresh as an icon only under Battery stats
* 0be20a8bf RejectedExecutionException  in DataUsageLIst
* d6ca874fb Optimize code on get UidDetail in AppDataUsage
* 434f25fbc Settings: Fix wrong wifi drawable in screen zooming preview
* 53f2e3608 Optimized Code: call direct method to get integer extra

#### system/core/
* 25d1da928 fs_mgr: Skip filesystem check unless fs_type matches

07-27-2017
============

#### frameworks/native/
* 156fce446 Remove ATRACE from SurfaceFlinger

#### prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/
* 0552b04 Add missing symlink for stripper to the kernel toolchain
* 0174673 Update prebuilt GCC to build 4168537.
* 86ad2f1 Update prebuilt GCC to build 3335333.
* a59c881 Update prebuilt GCC to build 2734602.

07-26-2017
============

#### hardware/qcom/fm/
* 7e027bc Automatic translation import

#### packages/apps/Laboratory/
* 34da035 Add lockitems fragment

#### packages/apps/Settings/
* f23978f4f Integrate our about/hub app into Settings

#### packages/resources/devicesettings/
* 1550893 Automatic translation import

#### system/vold/
* dd795b7 Merge tag 'LA.UM.5.5.r1-05300-8x96.0' into aosp-7.1.2

#### vendor/aos/
* e2d3baa config: add caf soundrecorder

07-25-2017
============

#### frameworks/base/
* a1cea743fbb Auto calculate quickbar tiles amount
* e21f6b8de42 All tile scroller for quickbar settings [1/2]
* c7a325c68a6 SystemUI: Update pulse tile icon
* 20ad84e598a QS: Add Pulse Visualizer Tile

#### packages/apps/Laboratory/
* d3f84be All tile scroller for quickbar settings [2/2] - Remove the small QS tiles mod we had before

#### system/bt/
* 47c8a3a0 Merge acf1a67772cabf22e11df0b030304b414c249937 on remote branch

#### vendor/aos/
* 1d5475e versioning: remove "v" from AOS_VERSION

07-24-2017
============

#### build/
* b5203cb9b Squashed revert of TARGET_UNIFIED_DEVICE
* 63fd05bf6 ota_from_target_files: Remove device dependent arguments
* 6cafaaa67 Team Darkness :)
* 8ad74345e core: Makefile: Correct package signature disable

#### frameworks/av/
* c8b195bd7 camera: Ensure native handle isn't null before closing it.
* 1ff20b059 soundtrigger: small fix on spacing
* 9cdd57ff4 cameraservice: device1: Fix "slow" legacy HALs

#### frameworks/base/
* b622b51cf3d Fix service cannot start when service removed from restartList
* 807b1deb636 Init MemoryIntArray#mFd with -1

#### frameworks/native/
* be9dd2af8 surfaceflinger: Validate setposition parameters
* 3be713197 sf: Fix GPU coordinates computation.
* 2a7c4bdcf sf: Limit co-ordinates difference fix for high res panel
* 125211ccc surfaceflinger: Fix continuous SF dump.
* 80b72266e correct the graphic buffer size allocated when rotating the device
* eb739f571 Sensor: Add minimum delay check in SensorDevice
* ddef10a96 Surface: Use async lock/unlock in copyBlt
* 16988a1cd Surface: Ensure synchronisation of copyBlt
* 78a840487 Fix leak of file descriptors and memory.
* 487a107c6 SF: Improve phase/vsync offsets on HWC1
* b24c7946a SF: Minimize completion time for short-running threads
* 4c57be605 SF: Share cputime slices when RT sched priority is identical
* 3ab5fb1c0 SF: Adjust RT sched priorities
* 7f115f78d binder: use sysconf(_SC_PAGESIZE) to get pagesize
* 9081ab3d2 Atrace: Fix Buffer Overflow when checking kernel function

#### packages/apps/SnapdragonCamera/
* e00973cd2 Revert "SnapdragonCamera: Fix torch mode with continuous shot"
* 1613f5aa4 Disable left swipe for Filmstrip while menu being shown or animated

#### system/core/
* 2cf9a1256 Fix memory order and race bugs in Refbase.h & RefBase.cpp
* b68d300ab logcat: Add missing newline to read failure
* 4778ac45d init.rc: setup console-ramoops-0
* 23fad22c1 healthd: check console-ramoops-0
* 610979920 fs_mgr: check console-ramoops-0

#### vendor/aos/
* a74b854 prebuilt: Update MiXplorer Stable v6.16.5

07-23-2017
============

#### external/chromium-webview/
* bf4ec48 webview: Stable: update to version 59.0.3071.125 for arm, arm64 and x86

#### frameworks/base/
* 45b7e5b88f8 lights: Automatically generate an LED color for notifications
* 77475e64fd1 NotificationManager: Allow Settings app to publish a notifications without icon
* faa71db2f3f LED lights customization [1/3]
* 5fe5ff17317 BatteryService: add dash charging support
* 3f1cf9497fb Hide arrows in network traffic indicators [1/2]
* ced9a1dbe11 base: set scrolling to 0.006f
* 77ddf0212c3 Let's cut Max Excape Animation in Half
* 9d4898514c4 VolumeDialog: fix vibrate icon not showing after density change
* f33f0c416ee BootReceiver: check console-ramoops-0
* 3f4b0a923df SystemUI: Fix Notification Background Color Issue
* 74d50802296 SoundPool: decrease binder call when calling SoundPool.play
* 629e88a892e Fix Potential NPE on Msim
* bb54771a5f0 SysUI: Guard against NPE in SignalClusterView
* 6c9b458178d Make sure that the device name is not null before returning it
* 4bde45b845f Redundant waiting time of keyguard unlocking after reboot
* c3f50ca06ca base: Disable Emergency affordance feature in Power Menu
* b32a09ab1b5 FingerprintManager: Suppress logspam
* 2fbda61a6bf Schedule  agentDisconnected() in handler thread
* 0261241019f [PackageManagerService]: Fixes can not boot issue.
* 2bdc5f3ac47 KernelCpuSpeedReader: Account for missing sysfs nodes
* d32e6c98b88 Fix wrong array index bound in NotificationUsageStats
* 5bda378554f jni: MediaPlayer: Improve the handling of lib loading
* 90a5b9ffe9d SystemUI: Fix SystemUI Crash Issue
* 3ca2408f453 Fix a crashed when clicking list item and button meanwhile
* 49d558a9f89 [ams]set the resultTo to null started by a finishing activity
* 376c6770b71 PowerManagerService: add a config to light up buttons only when pressed
* 9d614cc120c Add support for the .opus file format
* 4bf0cd0bfb9 Binder: Be forceful about a forceful exit
* 7035ccb2440 Net monitor: fix arrows not showing when data saver is enabled
* bbd7f0e67bc NetworkTraffic: Hide when not connected to network
* ce1ad146f85 Net monitor: fix visual glitch on statusbar expand when autohide enabled
* 928f7fa2697 Statusbar Network Indicators : Use vectorized arrow icons
* db0371cc344 Make Network traffic meter smaller
* dd864ec5d13 remove network coloring and make network meter play nice with dark mode
* 8e9a0574ac2 Link traffic icon color to text color
* ced3ed463ed [1/2] Statusbar Network Indicators
* 15bb5287a71 Ticker: allow to show music track info on new track being played [1/2]
* 2ec48adc5bd Add DarkIntensity support to statusbar ticker
* 88a1fcce751 Status bar notification ticker

#### frameworks/opt/net/ims/
* 4177ae4 Merge tag 'LA.UM.5.5.r1-05300-8x96.0' into aosp-7.1.2

#### hardware/qcom/fm/
* 41ccba0 Automatic translation import

#### manifest/
* 2de4506 Track  FM Radio and Webview repo from DND

#### packages/apps/CellBroadcastReceiver/
* 63313ff Automatic translation import

#### packages/apps/FMRadio/
* ad4f4e5 FMRadio: Add overlay to enable/disable FM without Headphone

#### packages/apps/Laboratory/
* b594a5d Hide arrows in network traffic indicators [2/2]
* 11ae07c [2/2] Statusbar Network Indicators

#### packages/apps/Settings/
* 66dd0329f lights: Automatically generate an LED color for notifications
* 64e8c7ef0 LED lights customization [2/3] Battery And Notification Light customization (2/3)
* d85bb8864 Settings: enable fast scroll for all app list views
* bd42d8555 Show USB Mode Dialog
* 3271b2148 Automatic translation import
* 140d42a18 Automatic translation import
* 9bae333b3 Automatic translation import

#### packages/apps/SnapdragonCamera/
* 6a32f1cfa Revert some permissions related changes
* 18e3a9c27 Add overlay for restarting camera preview for additional cameras
* 41260817d Automatic translation import
* bd84a6f09 Automatic translation import
* 9446985f5 SnapdragonCamera: Fix ghosting when non-zsl in VGA/QVGA size
* 7c71b8edd SnapdragonCamera: Fix live shot image stretch when recording is 4K
* 524724a74 SnapdragonCamera: Fix photo reversed when enable selfie Mirror
* e488f0a5a SnapdragonCamera: Fix photo reversed when enable selfie Mirror
* ab6f914cd SnapdragonCamera: Fix preview in wrong size
* 2f49573ea SnapdragonCamera: Fix front camera preview flipped
* 6f17e8603 SnapdragonCamera: Fix preview is flipped on 8996
* f9a2fbc6f SnapdragonCamera: Camera1 Selfie Mirror orientation check
* c441fa005 SnapdragonCamera: Fix Camera1 force close when refocusing the picture.
* 415f7890f SnapdragonCamera: Fix crash during UI stress test
* 07e2cfd6a Snap: Sign with platform key
* aa791148b Add orientation correction for landscape devices
* 08c8f5f1e Snap: Simulate back button press when menu back button is pressed
* 2809fa8d0 Automatic translation import

#### packages/resources/devicesettings/
* 1ff6d8c Automatic translation import

#### vendor/aos/
* e9881e3 Merge pull request #1 from manikchathli/patch-1
* 7a5d223 Add Potter

07-22-2017
============

#### bootable/recovery-twrp/
* d59d02e1 twrpTar: Fix uninitialized current_archive_type

#### packages/apps/Laboratory/
* fcbc9af Ticker: allow to show music track info on new track being played [2/2]
* 7823f1e Add toggle for heads up notifications
* 12b44e6 Status bar notification ticker
* efbc559 Lab: add general fragment

#### packages/apps/SoundRecorder/
* 59d3ed8 Automatic translation import

#### packages/services/Telephony/
* c8a2b269 TeleService: Switch telephony-ext to a static library

07-21-2017
============

#### hardware/qcom/media-caf/msm8994/
* a21d861ea Merge "mm-video-v4l2: Protect buffer lifecycle with lock"

#### manifest/
* 507bf76 manifest: ThemeInterfacer is a service
* 5487c27 manifest: remove MusicFX & AudioFX

#### system/sepolicy/
* 8f0d351 interfacer: Allow interfacer to find the content_service

#### vendor/aos/
* 265a6e7 Remove MusicFX & AudioFX

07-20-2017
============

#### bionic/
* 77358d7ba libc: Fix minor issues in memchr NEON implementation
* 48e4fa97b Merge tag 'android-7.1.2_r27' of https://android.googlesource.com/platform/bionic into n-mr2

#### frameworks/base/
* 9e34dbc4aa2 bootanimation: Apply same changes from 13a3509f4a5e1f1b0c1365404147c11c7bfe3d0e to preload_bootanimation

#### manifest/
* 1dbb3c9 manifest: track jdc fork of apache-http
* 8235417 manifest: track vendor/qcom/opensource/dpm from jdc

#### packages/apps/Settings/
* 48595bbef Implement OTA in Settings

#### vendor/aos/
* c5c6490 Magisk: update to v13.3
* ac6e0d8 Overlays: enable Panic Mode
* f0780a2 Common: build tcmiface
* a12ff25 devices: add Z00L
* ed8cbdc script: update with the new exports
* 833d915 versioning: preparing for our first release
* 153a102 aos_devices: bring in tomato
* 7dbafaa prebuilt: update magisk to v13.2
* b9e079d prebuilt: replace amaze with mixplorer
* d8e5107 versioning: add aos_build
* 46e6d3b Build OTA App only in Official builds
* 3ed57cc Add our prebuilt DarknessHub app

