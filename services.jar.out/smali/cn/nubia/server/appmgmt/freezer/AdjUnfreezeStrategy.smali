.class public Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "AdjUnfreezeStrategy.java"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 13
    return-void
.end method

.method private isImportance(I)Z
    .locals 1
    .param p1, "adj"    # I

    .prologue
    .line 22
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(I)Z
    .locals 1
    .param p1, "adj"    # I

    .prologue
    const/4 v0, 0x1

    .line 26
    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->isImportance(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v0

    .line 17
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->isVisible(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
