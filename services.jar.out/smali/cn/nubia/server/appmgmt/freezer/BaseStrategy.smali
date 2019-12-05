.class Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.super Ljava/lang/Object;
.source "BaseStrategy.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/freezer/IStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public preCheck()V
    .locals 0

    .prologue
    .line 5
    return-void
.end method

.method public resetArgs()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method
