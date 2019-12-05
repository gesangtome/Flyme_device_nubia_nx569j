.class public final Lcom/android/server/policy/FeatureFunctionManager;
.super Ljava/lang/Object;
.source "FeatureFunctionManager.java"


# instance fields
.field private mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

.field private mBreathingLightCtrl:Lcn/nubia/server/policy/BreathingLightCtrl;

.field private mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

.field private final mContext:Landroid/content/Context;

.field final mDispatchingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/IKeyBeforeDispatchingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

.field private mFactoryTestDisableKeys:Lcn/nubia/server/policy/FactoryTestDisableKeys;

.field private mFreeSnapshotCtrl:Lcom/android/server/policy/FreeSnapshotCtrl;

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

.field private mPreFingerprintCtrl:Lcn/nubia/server/policy/PreFingerprintCtrl;

.field final mQueueingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/IKeyBeforeQueueingHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

.field private mSplitscreenCtrl:Lcn/nubia/server/policy/SplitscreenCtrl;

.field private mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

.field private mVolleyGestureCtrl:Lcn/nubia/server/policy/VolleyGestureCtrl;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 58
    iput-object p3, p0, Lcom/android/server/policy/FeatureFunctionManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 59
    invoke-direct {p0}, Lcom/android/server/policy/FeatureFunctionManager;->initCtrls()V

    .line 60
    return-void
.end method

.method private initCtrls()V
    .locals 10

    .prologue
    .line 65
    new-instance v7, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;-><init>(Lcom/android/server/policy/FeatureFunctionManager;Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 67
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v7, Lcom/android/server/policy/FreeSnapshotCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/FreeSnapshotCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/server/policy/FreeSnapshotCtrl;

    .line 71
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/server/policy/FreeSnapshotCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v7, Lcn/nubia/server/policy/FactoryTestDisableKeys;

    invoke-direct {v7}, Lcn/nubia/server/policy/FactoryTestDisableKeys;-><init>()V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/server/policy/FactoryTestDisableKeys;

    .line 75
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/server/policy/FactoryTestDisableKeys;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/server/policy/FactoryTestDisableKeys;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v7, Lcn/nubia/server/policy/BreathingLightCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v7, v8}, Lcn/nubia/server/policy/BreathingLightCtrl;-><init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/server/policy/BreathingLightCtrl;

    .line 80
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/server/policy/BreathingLightCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v7, "1"

    const-string v8, "persist.sys.singlehand"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    new-instance v7, Lcom/android/server/policy/SingleUICtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/SingleUICtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

    .line 85
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    new-instance v7, Lcn/nubia/server/policy/CameraCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v7, v8, v9}, Lcn/nubia/server/policy/CameraCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

    .line 90
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v5, Lcom/android/server/policy/TouchGestureFuncsCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v8}, Lcom/android/server/policy/TouchGestureFuncsCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    .line 96
    .local v5, "touchGestureFuncsCtrl":Lcom/android/server/policy/TouchGestureFuncsCtrl;
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v7, Lcn/nubia/server/policy/VolleyGestureCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcn/nubia/server/policy/VolleyGestureCtrl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/server/policy/VolleyGestureCtrl;

    .line 100
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/server/policy/VolleyGestureCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/tp/easy_wakeup_gesture"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "gestureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    new-instance v0, Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v8}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    .line 107
    .local v0, "doubleClickScreenCtrl":Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Lcom/android/server/policy/PalmCoverCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/android/server/policy/PalmCoverCtrl;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "palmCoverCtrl":Lcom/android/server/policy/PalmCoverCtrl;
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v0    # "doubleClickScreenCtrl":Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    .end local v2    # "palmCoverCtrl":Lcom/android/server/policy/PalmCoverCtrl;
    :cond_1
    const-string v7, "1"

    const-string v8, "ro.nubia.pre.fingerprint.enable"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 116
    .local v3, "preFingerEnable":Z
    if-nez v3, :cond_2

    .line 117
    new-instance v6, Lcn/nubia/server/policy/TouchHomeLightCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v6, v7, v8}, Lcn/nubia/server/policy/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    .line 118
    .local v6, "touchHomeLightCtrl":Lcn/nubia/server/policy/TouchHomeLightCtrl;
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "touchHomeLightCtrl":Lcn/nubia/server/policy/TouchHomeLightCtrl;
    :cond_2
    sget-boolean v7, Lnubia/smartkey/Utils;->sHasSmartKey:Z

    if-eqz v7, :cond_3

    .line 124
    new-instance v4, Lcom/android/server/policy/SmartKeyCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v4, v7}, Lcom/android/server/policy/SmartKeyCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 125
    .local v4, "smartKeyCtrl":Lcom/android/server/policy/SmartKeyCtrl;
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v4    # "smartKeyCtrl":Lcom/android/server/policy/SmartKeyCtrl;
    :cond_3
    new-instance v7, Lcn/nubia/server/policy/AntiMisOperationCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v9}, Lcn/nubia/server/policy/AntiMisOperationCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    .line 129
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v7, Lcn/nubia/server/policy/SplitscreenCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcn/nubia/server/policy/SplitscreenCtrl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/server/policy/SplitscreenCtrl;

    .line 131
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/server/policy/SplitscreenCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v7, Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/SystemKeysCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    .line 134
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/SystemKeysCtrl;->setSingleUICtrl(Lcom/android/server/policy/SingleUICtrl;)V

    .line 135
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v7, "1"

    const-string v8, "persist.sys.singlehand"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_4
    const-string v7, "1"

    const-string v8, "ro.nubia.pre.fingerprint.enable"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    new-instance v7, Lcn/nubia/server/policy/PreFingerprintCtrl;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcn/nubia/server/policy/PreFingerprintCtrl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPreFingerprintCtrl:Lcn/nubia/server/policy/PreFingerprintCtrl;

    .line 146
    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPreFingerprintCtrl:Lcn/nubia/server/policy/PreFingerprintCtrl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_5
    return-void
.end method


# virtual methods
.method interceptBottomKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/server/policy/SplitscreenCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/SplitscreenCtrl;->interceptBottomKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public interceptFreeSnapshot()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/server/policy/FreeSnapshotCtrl;

    invoke-virtual {v0}, Lcom/android/server/policy/FreeSnapshotCtrl;->doFreeSnapshot()Z

    move-result v0

    return v0
.end method

.method interceptMotionAfterPressKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/server/policy/SplitscreenCtrl;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/SplitscreenCtrl;->interceptMotionAfterPressKey(I)Z

    move-result v0

    return v0
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "keyguardOn"    # Z

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 180
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 184
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method systemBooted()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->systemBooted()V

    .line 167
    :cond_0
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->initScreenSaverService()V

    .line 154
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/server/policy/BreathingLightCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/BreathingLightCtrl;->systemReady()V

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/server/policy/SplitscreenCtrl;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/SplitscreenCtrl;->systemReady(Landroid/os/Handler;)V

    .line 161
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "sys.perf.activate"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/server/policy/VolleyGestureCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    if-eqz v0, :cond_0

    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mEdgeGesturePolicy:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method
