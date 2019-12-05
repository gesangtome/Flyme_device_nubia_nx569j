.class public Lcn/nubia/server/appmgmt/freezer/QuitUnfreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "QuitUnfreezeStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 6
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    return v0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
