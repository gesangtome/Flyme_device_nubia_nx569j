.class public Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "WidgetUnFreezeStrategy.java"


# instance fields
.field private mCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "check"    # Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 14
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .line 15
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->hasWidgets(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .prologue
    .line 7
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
