.class Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustPerformanceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/PerformanceController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;Lcn/nubia/server/appmgmt/PerformanceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/PerformanceController$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 245
    :cond_0
    return-void
.end method
