.class Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;
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
    name = "SystemReadyRunnalbe"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/MotionDozeController$1;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 379
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$100(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 380
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 384
    .local v7, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 387
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mDumpDebugLog:Z
    invoke-static {v9}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 388
    const-string v9, "MotionDozeController"

    const-string v10, "system ready. check motion apps"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2
    const/4 v2, 0x0

    .line 392
    .local v2, "hasMotionApp":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 393
    .local v8, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 397
    iget-object v1, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, v1, v4

    .line 398
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1200(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 399
    :try_start_0
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mMotionApps:Ljava/util/HashSet;
    invoke-static {v9}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1300(Lcn/nubia/server/appmgmt/MotionDozeController;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 400
    const/4 v2, 0x1

    .line 401
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_3

    .line 411
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # setter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mRunningMotionApp:Z
    invoke-static {v9, v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$1402(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 412
    iget-object v9, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcn/nubia/server/appmgmt/MotionDozeController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # getter for: Lcn/nubia/server/appmgmt/MotionDozeController;->mAdjustStateRunnable:Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;
    invoke-static {v10}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 403
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v8    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    :try_start_1
    monitor-exit v10

    .line 397
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 403
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
