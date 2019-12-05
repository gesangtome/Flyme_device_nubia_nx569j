.class public abstract Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
.super Ljava/lang/Object;
.source "HallNearCtrl.java"


# static fields
.field protected static DEBUG:Z = false

.field private static final SENSOR_STATUS_IN_LATTICE:I = 0x2

.field protected static isScreenOnByAuto:Z

.field private static mBrightness:I

.field private static mBrightnessMode:I

.field private static mEnableCtrlMode:Z

.field protected static mEverSmratNearFlag:Z

.field protected static triggerUnLockFlag:Z


# instance fields
.field protected mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

.field protected mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

.field protected mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->triggerUnLockFlag:Z

    .line 28
    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mEverSmratNearFlag:Z

    .line 29
    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->isScreenOnByAuto:Z

    .line 38
    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mEnableCtrlMode:Z

    .line 39
    const-string v0, "smartFace"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .line 45
    return-void
.end method

.method private adjustBrightness(Z)V
    .locals 2
    .param p1, "near"    # Z

    .prologue
    .line 140
    sget-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mEnableCtrlMode:Z

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 142
    :cond_0
    if-eqz p1, :cond_3

    .line 143
    sget v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mBrightnessMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setBrightnessMode(Landroid/content/Context;I)V

    .line 147
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->isShowLattice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSysScreenBrightness(Landroid/content/Context;I)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mBrightness:I

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSysScreenBrightness(Landroid/content/Context;I)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->restoreBrightness()V

    goto :goto_0
.end method

.method private isShowLattice()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 162
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreBrightness()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mBrightnessMode:I

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setBrightnessMode(Landroid/content/Context;I)V

    .line 167
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mBrightness:I

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSysScreenBrightness(Landroid/content/Context;I)V

    .line 168
    return-void
.end method

.method private updateSleepModeState()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->isSleepMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->isShowLattice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mEnableCtrlMode:Z

    .line 90
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSysScreenBrightness(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mBrightness:I

    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getBrightnessMode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mBrightnessMode:I

    .line 92
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract doOperationOnUI()V
.end method

.method public abstract getSmartFaceDisplayFlag()I
.end method

.method protected goToSleep(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    const/16 v2, 0xb

    .line 61
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->isScreenOn()Z

    move-result v0

    .line 62
    .local v0, "isScreenOn":Z
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    :cond_1
    return-void
.end method

.method protected hasGloveFeather()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.nubia.smartface.feature.glovemode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasSceenSlideFeather()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.nubia.smartface.feature.lattice_screenslding"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSleepMode()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManagerWapper;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "wapper"    # Lcom/android/server/policy/PhoneWindowManagerWapper;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .line 135
    iput-object p2, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mHandler:Landroid/os/Handler;

    .line 136
    iput-object p3, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    .line 137
    return-void
.end method

.method protected setScreenOnByAuto(Z)V
    .locals 0
    .param p1, "isAuto"    # Z

    .prologue
    .line 129
    sput-boolean p1, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->isScreenOnByAuto:Z

    .line 130
    return-void
.end method

.method protected setSmartFaceDisplayFlag(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 72
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->updateSingleUIFunction(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->dealSingleUI(Landroid/content/Context;Z)V

    .line 77
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->updateSleepModeState()V

    .line 79
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->adjustBrightness(Z)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->adjustBrightness(Z)V

    goto :goto_0
.end method

.method protected setSmartFaceDisplayFlagWallper(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl$1;-><init>(Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method protected triggerPhoneWindowNear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 119
    sput-boolean v1, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mEverSmratNearFlag:Z

    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->triggerUnLockFlag:Z

    .line 121
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->updateRotation(Z)V

    .line 122
    return-void
.end method

.method protected trrigerPhoneWindowFar()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
