.class Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;
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
    name = "ResumingActivityRunnable"
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
    .line 364
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->mActivityName:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 371
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "PerformanceController"

    const-string v3, "ResumingActivityRunnable"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    const/4 v2, 0x0

    .line 375
    .local v2, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcn/nubia/server/appmgmt/QComBoostController;->getAppLockParameterTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/nubia/server/appmgmt/QComBoostController;->isMinClusterFirst(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$600(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/IPerformanceHelper;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcn/nubia/server/appmgmt/IPerformanceHelper;->setRootClusster(I)I

    .line 383
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 384
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 385
    .local v1, "token":Landroid/os/Binder;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    const-string v0, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResumingActivityRunnable, add lock for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/PerformanceController;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 391
    .end local v1    # "token":Landroid/os/Binder;
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$200(Lcn/nubia/server/appmgmt/PerformanceController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mAdjustPerformanceRunnable:Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$700(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void

    .line 380
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/PerformanceController;->access$600(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/IPerformanceHelper;

    move-result-object v0

    const/4 v3, -0x1

    invoke-interface {v0, v3}, Lcn/nubia/server/appmgmt/IPerformanceHelper;->setRootClusster(I)I

    goto :goto_0
.end method
