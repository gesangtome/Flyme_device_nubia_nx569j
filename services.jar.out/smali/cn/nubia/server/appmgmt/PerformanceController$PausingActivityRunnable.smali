.class Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;
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
    name = "PausingActivityRunnable"
.end annotation


# instance fields
.field mActivityName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PerformanceController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 401
    iput-object p3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->mActivityName:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 406
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "PerformanceController"

    const-string v4, "PausingActivityRunnable"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .line 411
    .local v2, "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    iget v3, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 414
    iget-object v3, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PausingActivityRunnable, remove lock for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->access$500(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/PerformanceController;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 424
    .end local v2    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_4
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$200(Lcn/nubia/server/appmgmt/PerformanceController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mAdjustPerformanceRunnable:Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$700(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method
