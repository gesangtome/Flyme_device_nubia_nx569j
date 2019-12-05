.class Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;
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
    name = "NoteStartingProcessRunnable"
.end annotation


# instance fields
.field private mHostingType:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mUid:I

    .line 296
    iput-object p3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 297
    iput-object p4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mProcess:Ljava/lang/String;

    .line 298
    iput-object p5, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mHostingType:Ljava/lang/String;

    .line 299
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 303
    const/4 v0, 0x1

    .line 304
    .local v0, "count":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 306
    .local v1, "oldCount":I
    add-int/2addr v0, v1

    .line 308
    .end local v1    # "oldCount":I
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1000(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mPackageProcessUids:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1100(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    iget v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    if-le v0, v5, :cond_1

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 316
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    const/4 v4, 0x1

    # setter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z
    invoke-static {v2, v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 318
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApps:Ljava/util/HashSet;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1500(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v2, "MotionDozeController"

    const-string v4, "mRunningMotionApp = true"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/MotionDozeController$NoteStartingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
