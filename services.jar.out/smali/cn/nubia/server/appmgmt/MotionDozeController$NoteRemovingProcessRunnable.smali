.class Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "MotionDozeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mUid:I

    .line 333
    iput-object p3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 334
    iput-object p4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mProcess:Ljava/lang/String;

    .line 335
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "count":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    add-int/lit8 v0, v0, -0x1

    .line 343
    if-nez v0, :cond_4

    .line 344
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 352
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApps:Ljava/util/HashSet;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1500(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "hasMotionApp":Z
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 358
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 359
    const/4 v1, 0x1

    .line 360
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    .line 366
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1400(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;
    invoke-static {v5}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    const/4 v5, 0x0

    # setter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z
    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 370
    const-string v4, "MotionDozeController"

    const-string v5, "mRunningMotionApp = false"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v1    # "hasMotionApp":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void

    .line 347
    :cond_4
    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    .restart local v1    # "hasMotionApp":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
