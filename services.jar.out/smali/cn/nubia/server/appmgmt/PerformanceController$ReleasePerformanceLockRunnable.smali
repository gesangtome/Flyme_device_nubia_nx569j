.class Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;
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
    name = "ReleasePerformanceLockRunnable"
.end annotation


# instance fields
.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PerformanceController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 251
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    .line 253
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 257
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .line 258
    .local v2, "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    # getter for: Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->access$500(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    if-ne v3, v4, :cond_0

    .line 259
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    const-string v3, "PerformanceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReleasePerformanceLockRunnable, tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mDuration:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    :try_start_0
    # getter for: Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->access$500(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_2
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 275
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 280
    .end local v2    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_3
    return-void

    .line 268
    .restart local v2    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v3}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    const-string v3, "PerformanceController"

    const-string v4, "unable to unlinkToDeath"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
