.class public Lcn/nubia/server/appmgmt/PerformanceController;
.super Ljava/lang/Object;
.source "PerformanceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;,
        Lcn/nubia/server/appmgmt/PerformanceController$BinderDeathCallback;,
        Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceController"


# instance fields
.field private mAdjustPerformanceRunnable:Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;

.field private mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageActivityToBinders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPackageActivityToBinders:Ljava/util/HashMap;

    .line 31
    iput-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    .line 33
    new-instance v2, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;

    invoke-direct {v2, p0, v4}, Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Lcn/nubia/server/appmgmt/PerformanceController$1;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mAdjustPerformanceRunnable:Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;

    .line 35
    iput-object v4, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    .line 39
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PerformanceController;->isHardwareMTK()Z

    move-result v1

    .line 42
    .local v1, "isRunningOnMTK":Z
    if-eqz v1, :cond_1

    .line 43
    const-string v2, "PerformanceController"

    const-string v3, "MTK Hardware. PerformanceHelperForMTK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v2, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;

    invoke-direct {v2}, Lcn/nubia/server/appmgmt/PerformanceHelperForMTK;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    .line 48
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    invoke-interface {v2}, Lcn/nubia/server/appmgmt/IPerformanceHelper;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Lcn/nubia/server/appmgmt/QComBoostController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    invoke-direct {v2, v3, v1}, Lcn/nubia/server/appmgmt/QComBoostController;-><init>(Lcn/nubia/server/appmgmt/IPerformanceHelper;Z)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "cn.nubia.cpudebugtool.broadcast"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcn/nubia/server/appmgmt/PerformanceController$1;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/PerformanceController$1;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance v2, Lcn/nubia/server/appmgmt/PerformanceHelper;

    invoke-direct {v2}, Lcn/nubia/server/appmgmt/PerformanceHelper;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    goto :goto_0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/QComBoostController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/PerformanceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/PerformanceController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/PerformanceController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/IPerformanceHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mPerfHelper:Lcn/nubia/server/appmgmt/IPerformanceHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/PerformanceController;)Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PerformanceController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mAdjustPerformanceRunnable:Lcn/nubia/server/appmgmt/PerformanceController$AdjustPerformanceRunnable;

    return-object v0
.end method

.method private hasQComBoostFrameworkFeature()Z
    .locals 2

    .prologue
    .line 74
    :try_start_0
    const-string v1, "android.util.BoostFramework"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHardwareMTK()Z
    .locals 3

    .prologue
    .line 67
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 68
    .local v0, "hardware":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .prologue
    .line 96
    new-instance v1, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 97
    .local v1, "aplr":Lcn/nubia/server/appmgmt/PerformanceController$AcquirePerformanceLockRunnable;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    .line 428
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/PerformanceController;->setDebugLogEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/QComBoostController;->setDebugLogEnabled(Z)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/QComBoostController;->dump(Ljava/io/PrintWriter;)V

    .line 432
    return-void
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "result":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mCPUControl:Lcn/nubia/server/appmgmt/QComBoostController;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/QComBoostController;->isInNoTransitionAnim(Ljava/lang/String;)Z

    move-result v0

    .line 109
    :cond_0
    return v0
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcn/nubia/server/appmgmt/PerformanceController$PausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcn/nubia/server/appmgmt/PerformanceController$ResumedAppDieRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcn/nubia/server/appmgmt/PerformanceController$ResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 101
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;-><init>(Lcn/nubia/server/appmgmt/PerformanceController;Landroid/os/IBinder;)V

    .line 102
    .local v0, "rplr":Lcn/nubia/server/appmgmt/PerformanceController$ReleasePerformanceLockRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/PerformanceController;->mDumpDebugLog:Z

    .line 64
    return-void
.end method
