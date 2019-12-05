.class Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;
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
    name = "ResumedAppDieRunnable"
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
    .line 322
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->mPackageName:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->mActivityName:Ljava/lang/String;

    .line 325
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "fullActivityName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .line 332
    .local v3, "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    iget v4, v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 335
    iget-object v4, v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    const-string v4, "PerformanceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResumedAppDieRunnable, tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    :try_start_0
    # getter for: Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->access$500(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_3
    :goto_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 352
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 357
    .end local v3    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_4
    return-void

    .line 345
    .restart local v3    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    const-string v4, "PerformanceController"

    const-string v5, "unable to unlinkToDeath"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
