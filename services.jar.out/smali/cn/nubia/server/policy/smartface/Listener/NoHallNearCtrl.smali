.class public Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;
.super Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;
.source "NoHallNearCtrl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private awaken()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 26
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->isScreenOn()Z

    move-result v0

    .line 27
    .local v0, "isScreenOn":Z
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    :cond_0
    sput-boolean v2, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->triggerUnLockFlag:Z

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->openUnLockScreen(Z)V

    .line 33
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->userActivity()V

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mPowerCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->turnOnScreen()V

    goto :goto_0
.end method

.method private handleKeyguardDismiss(Z)V
    .locals 3
    .param p1, "isScreenChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isOpenUnLockFunctionEnable(Landroid/content/Context;)Z

    move-result v0

    .line 52
    .local v0, "dismissWhenLocked":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerWapper;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerWapper;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerWapper;->dismissKeyguardLw()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-nez p1, :cond_2

    sget-boolean v1, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->isScreenOnByAuto:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->getIsDismissKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerWapper;->dismissKeyguardLw()V

    .line 59
    invoke-virtual {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->setScreenOnByAuto(Z)V

    .line 60
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doOperationOnUI()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 21
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->awaken()V

    .line 22
    invoke-super {p0}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;->doOperationOnUI()V

    .line 23
    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public openUnLockScreen(Z)V
    .locals 2
    .param p1, "isScreenChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 40
    sget-boolean v0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->triggerUnLockFlag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->mEverSmratNearFlag:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->handleKeyguardDismiss(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->setScreenOnByAuto(Z)V

    .line 46
    :goto_0
    sput-boolean v1, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->triggerUnLockFlag:Z

    .line 47
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;->setScreenOnByAuto(Z)V

    goto :goto_0
.end method
