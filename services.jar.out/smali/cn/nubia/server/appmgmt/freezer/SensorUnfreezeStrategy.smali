.class public Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "SensorUnfreezeStrategy.java"


# instance fields
.field private mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIsScreenChange:Z

.field private mIsScreenOn:Z


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/SensorCheck;)V
    .locals 1
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "check"    # Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenOn:Z

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenChange:Z

    .line 11
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 12
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    .line 13
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenChange:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->hasUnfreezeSensor(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public preCheck()V
    .locals 2

    .prologue
    .line 16
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v0

    .line 17
    .local v0, "isScreenOn":Z
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenOn:Z

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenChange:Z

    .line 18
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;->mIsScreenOn:Z

    .line 19
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
