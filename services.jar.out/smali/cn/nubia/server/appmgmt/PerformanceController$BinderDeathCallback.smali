.class Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathCallback"
.end annotation


# instance fields
.field mLock:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PerformanceController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)V
    .locals 0
    .param p2, "lock"    # Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .prologue
    .line 146
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;->mLock:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .line 148
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$200(Lcn/nubia/server/appmgmt/PerformanceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathRunnable;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;->mLock:Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method
