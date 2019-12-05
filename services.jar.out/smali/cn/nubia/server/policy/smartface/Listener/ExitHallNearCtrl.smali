.class public Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;
.super Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
.source "ExitHallNearCtrl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public dealWhenOpenAndStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceScreen()V

    .line 25
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceStatusBar()V

    .line 26
    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V

    .line 27
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->trrigerPhoneWindowFar()V

    .line 28
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->hasGloveFeather()Z

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 30
    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    .line 31
    return-void
.end method

.method public doOperationOnUI()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 20
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->dealWhenOpenAndStop()V

    .line 21
    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
