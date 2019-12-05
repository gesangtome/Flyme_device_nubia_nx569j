.class public Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;
.super Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
.source "WindowHallNearCtrl.java"


# static fields
.field private static final KEEP_SCREEN_ON_TIME:J = 0x2710L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private doCloseLeather()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setNeedTurnOffScreen(Z)V

    .line 30
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->showSmartFaceMain()V

    .line 33
    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->getPhoneState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceStatusBar(Z)V

    .line 37
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->showInCallScreen()V

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->triggerPhoneWindowNear()V

    .line 41
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->hasGloveFeather()Z

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 42
    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    .line 43
    return-void
.end method

.method private showSmartFaceMain()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "smartFace"

    const-string v1, "showSmartFaceMain: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceScreen()V

    .line 48
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceStatusBar(Z)V

    .line 49
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2710

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->goToSleep(J)V

    .line 50
    return-void

    .line 49
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doOperationOnUI()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;->doCloseLeather()V

    .line 26
    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
