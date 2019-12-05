.class Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;
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
    name = "AcquirePerformanceLockRunnable"
.end annotation


# instance fields
.field mDuration:J

.field mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PerformanceController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PerformanceController;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 1
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "duration"    # J

    .prologue
    .line 161
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    .line 163
    iput-object p3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    .line 164
    iput p4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    .line 165
    iput-wide p5, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    .line 166
    return-void
.end method

.method private isLaunchLock(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 174
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 181
    const/4 v6, 0x0

    .line 183
    .local v6, "alreadyHasLaunchLock":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    .line 184
    .local v9, "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    iget-object v1, v9, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v9, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    iget v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    if-ne v1, v2, :cond_2

    .line 237
    .end local v9    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_1
    :goto_1
    return-void

    .line 189
    .restart local v9    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_2
    iget v1, v9, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->mType:I

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->isLaunchLock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v6, 0x1

    goto :goto_0

    .line 193
    .end local v9    # "pl":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 194
    iget v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->isLaunchLock(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/appmgmt/QComBoostController;->getAppLaunchDuration(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    .line 198
    if-eqz v6, :cond_4

    .line 199
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcquirePerformanceLockRunnable, skip tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    :cond_4
    iget v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 207
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/QComBoostController;->noteAppLauchForNewProcess(Ljava/lang/String;)V

    .line 211
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    const-string v1, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcquirePerformanceLockRunnable, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_6
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;-><init>(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 217
    .local v0, "lock":Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    new-instance v1, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-direct {v1, v2, v0}, Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;->setCallback(Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock$Callback;)V

    .line 220
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_7
    :goto_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-wide v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 229
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 230
    const-string v1, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_8
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$200(Lcn/nubia/server/appmgmt/PerformanceController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    invoke-direct {v2, v3, v4}, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Landroid/os/IBinder;)V

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->mDuration:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :cond_9
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/PerformanceController;->access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;->this$0:Lcn/nubia/server/appmgmt/PerformanceController;

    # getter for: Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z
    invoke-static {v1}, Lcn/nubia/server/appmgmt/PerformanceController;->access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 223
    const-string v1, "PerformanceController"

    const-string v2, "token is already dead"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
