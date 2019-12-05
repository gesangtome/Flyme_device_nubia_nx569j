.class public final Lcn/nubia/server/appmgmt/ApplicationManagerService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;
    }
.end annotation


# static fields
.field private static final DATA_SCHEME:Ljava/lang/String; = "package"

.field private static final DATA_SSP:Ljava/lang/String; = "cn.nubia.security2"

.field public static final TAG:Ljava/lang/String; = "ApplicationManagerService"


# instance fields
.field private mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

.field private mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

.field private mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

.field private mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

.field private mCABCController:Lcn/nubia/server/appmgmt/CABCController;

.field private mContext:Landroid/content/Context;

.field private mFreezeCallback:Lnubia/os/IFreezeCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mListUpgradeReceiver:Lcn/nubia/server/appmgmt/ListUpgradeReceiver;

.field private mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

.field private mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPerfDataManager:Lcn/nubia/server/appmgmt/PerfDataManager;

.field private mPerfUpgradeReceiver:Lcn/nubia/server/appmgmt/PerfUpgradeReceiver;

.field private mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;

.field private mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

.field private mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

.field private final mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

.field private mSyncController:Lcn/nubia/server/appmgmt/SyncController;

.field private mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

.field private mThread:Landroid/os/HandlerThread;

.field private mUnUseAppController:Lcn/nubia/server/appmgmt/UnUseAppController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationManagerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    .line 148
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;-><init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    .line 73
    new-instance v0, Lcn/nubia/server/appmgmt/ListUpgradeReceiver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/ListUpgradeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mListUpgradeReceiver:Lcn/nubia/server/appmgmt/ListUpgradeReceiver;

    .line 74
    new-instance v0, Lcn/nubia/server/appmgmt/PerfUpgradeReceiver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/PerfUpgradeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerfUpgradeReceiver:Lcn/nubia/server/appmgmt/PerfUpgradeReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->updateAllControllersData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/UnUseAppController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mUnUseAppController:Lcn/nubia/server/appmgmt/UnUseAppController;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NetWorkDetectorController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    return-object v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lnubia/os/IFreezeCallback;)Lnubia/os/IFreezeCallback;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Lnubia/os/IFreezeCallback;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PerformanceController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    return-object v0
.end method

.method private createAllControllers()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/SysStateProducer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    .line 105
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPushController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 106
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 107
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/CABCController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    .line 108
    new-instance v0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mActionMutexController:Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    .line 109
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/SyncController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    .line 110
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 111
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/MotionDozeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 112
    new-instance v0, Lcn/nubia/server/appmgmt/PerfDataManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/PerfDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerfDataManager:Lcn/nubia/server/appmgmt/PerfDataManager;

    .line 113
    new-instance v0, Lcn/nubia/server/appmgmt/PerformanceController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/PerformanceController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;

    .line 114
    new-instance v0, Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mNetWorkDetectorController:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    .line 115
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->isProcessFrozenAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IFreezeCallback;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 118
    :cond_0
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .line 119
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->setNetworkController(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    .line 122
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationUtils;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationUtils;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mApplicationUtils:Lcn/nubia/server/appmgmt/ApplicationUtils;

    .line 124
    new-instance v0, Lcn/nubia/server/appmgmt/UnUseAppController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/UnUseAppController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mUnUseAppController:Lcn/nubia/server/appmgmt/UnUseAppController;

    .line 125
    return-void
.end method

.method private dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 559
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump meminfo from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void

    .line 567
    :cond_1
    const/4 v1, 0x0

    .line 568
    .local v1, "opti":I
    :cond_2
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 569
    aget-object v0, p3, v1

    .line 570
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 573
    add-int/lit8 v1, v1, 0x1

    .line 574
    const-string v2, "-list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 575
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpListArray(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 576
    :cond_3
    const-string v2, "-debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 577
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpDebug(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 578
    :cond_4
    const-string v2, "-cwtmickymouse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 579
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-virtual {v2, p2}, Lcn/nubia/server/appmgmt/PerformanceController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 580
    :cond_5
    const-string v2, "-freeze"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    invoke-direct {p0, p2, p3, v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->dumpFreeze(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private dumpDebug(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    .line 635
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "ApplicationManagerService has already set to debug status."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    :goto_0
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->setDebugLogEnabled(Z)V

    .line 642
    const-string v0, "All controllers are already on the debug mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    return-void

    .line 638
    :cond_0
    sput-boolean v1, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    .line 639
    const-string v0, "Set to debug successful."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpFreeze(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "next"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 649
    :cond_0
    return-void
.end method

.method private dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 587
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 593
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 596
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SyncController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 599
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_4

    .line 600
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 602
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_5

    .line 603
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 605
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    if-eqz v0, :cond_6

    .line 606
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 608
    :cond_6
    return-void
.end method

.method public static isProcessFrozenAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ApplicationFreeze"

    const-string v1, "not adapt process frozen"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return v2
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 162
    const-string v1, "cn.nubia.security2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 163
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method private setDebugLogEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 611
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->setDebugLogEnabled(Z)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SyncController;->setDebugLogEnabled(Z)V

    .line 617
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->setDebugLogEnabled(Z)V

    .line 620
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_3

    .line 621
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setDebugLogEnabled(Z)V

    .line 623
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    if-eqz v0, :cond_4

    .line 624
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/MotionDozeController;->setDebugLogEnabled(Z)V

    .line 626
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;

    if-eqz v0, :cond_5

    .line 627
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPerformanceController:Lcn/nubia/server/appmgmt/PerformanceController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PerformanceController;->setDebugLogEnabled(Z)V

    .line 629
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    if-eqz v0, :cond_6

    .line 630
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mSysStateProducer:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->setDebugLogEnabled(Z)V

    .line 632
    :cond_6
    return-void
.end method

.method private updateAllControllersData()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->updateNubiaData()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->updateNubiaData()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/CABCController;->updateNubiaData()V

    .line 137
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->updateNubiaData()V

    .line 140
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->updateNubiaData()V

    .line 143
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->updateNubiaData()V

    .line 146
    :cond_5
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService;->mStub:Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "nubia.application.manager"

    return-object v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->createAllControllers()V

    .line 86
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->registerReceiver()V

    .line 87
    return-void
.end method
