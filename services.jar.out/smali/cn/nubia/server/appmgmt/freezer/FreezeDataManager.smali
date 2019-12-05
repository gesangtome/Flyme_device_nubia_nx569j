.class Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;
.super Ljava/lang/Object;
.source "FreezeDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;
    }
.end annotation


# static fields
.field private static final ALLOW_ALL_BUILD_IN_FREZON:Z = false

.field private static final FREEZE_ACTION_COLUMN:Ljava/lang/String; = "action"

.field private static final FREEZE_ACTION_FILE:Ljava/lang/String; = "freeze_action_list.xml"

.field private static final FREEZE_ACTION_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_action_table"

.field private static final FREEZE_PARAMS_COLUMN:Ljava/lang/String; = "params"

.field private static final FREEZE_PARAMS_FILE:Ljava/lang/String; = "freeze_params_list.xml"

.field private static final FREEZE_PARAMS_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_params_table"

.field private static final FREEZE_STRATEGY_COLUMN:Ljava/lang/String; = "strategy"

.field private static final FREEZE_TYPE_COLUMN:Ljava/lang/String; = "type"

.field static NONE_ALLOWED:Z = false

.field private static final PKG_COLUMN:Ljava/lang/String; = "pkg_name"

.field private static final TAG:Ljava/lang/String; = "FreezeDataManager"

.field private static final TYPE_APPLICATION_THREAD:Ljava/lang/String; = "app_thread"

.field private static final TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TYPE_CONFIG_CHANGED:Ljava/lang/String; = "config_changed"

.field private static final TYPE_IGNORE_SENSORS:Ljava/lang/String; = "ignore_sensors"

.field private static final TYPE_SOCIAL_APP:Ljava/lang/String; = "social_app"

.field private static final UNFREEZE_APP_FILE:Ljava/lang/String; = "freeze_app_white_list.xml"

.field private static final UNFREEZE_APP_URI:Ljava/lang/String; = "content://cn.nubia.security.power/app_freeze_white_list_table"

.field private static final UNFREEZE_GPS_FILE:Ljava/lang/String; = "freeze_gps_white_list.xml"

.field private static final UNFREEZE_GPS_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_gps_table"

.field private static final UNFREEZE_TCP_FILE:Ljava/lang/String; = "freeze_tcp_white_list.xml"

.field private static final UNFREEZE_TCP_URI:Ljava/lang/String; = "content://cn.nubia.security.power/freeze_tcp_table"


# instance fields
.field mAdjHoldTime:J

.field private mBuildAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildInAppBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;

.field mFreezeAgainTime:J

.field private mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSensors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptActionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInterceptApplicatonThreadList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptBroadcastList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptConfigChangeFlag:I

.field private mLoadBuildAppRunnable:Ljava/lang/Runnable;

.field mMusicCheckTime:J

.field private mNoFreezeGpsAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;

.field mProcessFreezeStepTime:J

.field mProcessMaxFreezeTime:J

.field mProcessScheduleThrottleTime:J

.field mProcessUnfreezeTime:J

.field private mQueryFreezeAppRunnable:Ljava/lang/Runnable;

.field private mSensorBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrategyParamsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTCPWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdAppWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTrafficCalInterval:J

.field mTrafficFreezeThreshold:J

.field private mUnFreezeAppXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

.field private mUnFreezeGpsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

.field private mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->NONE_ALLOWED:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    .line 39
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    .line 41
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptConfigChangeFlag:I

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildAppList:Ljava/util/HashSet;

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSensorBlackList:Ljava/util/HashSet;

    .line 52
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    .line 53
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    .line 91
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mAdjHoldTime:J

    .line 92
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mMusicCheckTime:J

    .line 93
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeAgainTime:J

    .line 94
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessFreezeStepTime:J

    .line 95
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessUnfreezeTime:J

    .line 96
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessMaxFreezeTime:J

    .line 97
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessScheduleThrottleTime:J

    .line 98
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficFreezeThreshold:J

    .line 99
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficCalInterval:J

    .line 101
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$1;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$2;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mLoadBuildAppRunnable:Ljava/lang/Runnable;

    .line 274
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$3;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mQueryFreezeAppRunnable:Ljava/lang/Runnable;

    .line 116
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mPM:Landroid/content/pm/PackageManager;

    .line 118
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    .line 119
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->initXmlOperator()V

    .line 120
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->initData()V

    .line 121
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;Landroid/os/Handler;)V

    .line 122
    .local v0, "observer":Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager$FreezeAppObserver;->observe()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->updateData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadBuildApp()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mQueryFreezeAppRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadPkgList()V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 140
    const-string v3, "freeze_app_white_list.xml"

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeAppXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 142
    .local v2, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 143
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    monitor-enter v4

    .line 144
    :try_start_0
    iput-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    .line 145
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-string v3, "freeze_gps_white_list.xml"

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeGpsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 153
    .restart local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 154
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    monitor-enter v4

    .line 155
    :try_start_1
    iput-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    .line 156
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    const-string v3, "freeze_tcp_white_list.xml"

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 163
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 164
    .restart local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 165
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    monitor-enter v4

    .line 166
    :try_start_2
    iput-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    .line 167
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    const-string v3, "freeze_params_list.xml"

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 174
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 175
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    .line 176
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 177
    :try_start_3
    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    .line 178
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 179
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->initStrategyParams()V

    .line 185
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    :goto_3
    const-string v3, "freeze_action_list.xml"

    invoke-static {v3}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 187
    .local v1, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_4

    .line 188
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 189
    :try_start_4
    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    .line 190
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 191
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->initInterceptData()V

    .line 197
    .end local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :cond_4
    :goto_4
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mLoadBuildAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mLoadBuildAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadSensorBlackList()V

    .line 200
    return-void

    .line 145
    .restart local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 148
    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadPkgList()V

    goto :goto_0

    .line 156
    .restart local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 159
    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadGpsList()V

    goto :goto_1

    .line 167
    .restart local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 170
    .end local v2    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadTcpList()V

    goto :goto_2

    .line 178
    .restart local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 182
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadStrategyParameter()V

    goto :goto_3

    .line 190
    .restart local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :catchall_4
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .line 194
    .end local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :cond_9
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadInterceptData()V

    goto :goto_4
.end method

.method private initInterceptData()V
    .locals 7

    .prologue
    .line 215
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v6, "broadcast"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    iput-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    .line 216
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    if-nez v5, :cond_0

    .line 217
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    .line 219
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v6, "social_app"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    iput-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    .line 220
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    if-nez v5, :cond_1

    .line 221
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    .line 223
    :cond_1
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v6, "config_changed"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 224
    .local v1, "configChangedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 225
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "configChangedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 227
    .restart local v1    # "configChangedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v6, "app_thread"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 228
    .local v0, "applicatonThreadList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 229
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "applicatonThreadList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    .restart local v0    # "applicatonThreadList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    const-string v6, "ignore_sensors"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 232
    .local v2, "ignoreSensorsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_4

    .line 233
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "ignoreSensorsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 237
    .restart local v2    # "ignoreSensorsList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 238
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 239
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptConfigChangeFlag:I

    goto :goto_0

    .line 242
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 243
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 244
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private initStrategyParams()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "adj_hold"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mAdjHoldTime:J

    .line 204
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "music_check"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mMusicCheckTime:J

    .line 205
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "freeze_again"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeAgainTime:J

    .line 206
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "process_freeze_step"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessFreezeStepTime:J

    .line 207
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "process_unfreeze"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessUnfreezeTime:J

    .line 208
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "process_max_freeze"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessMaxFreezeTime:J

    .line 209
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "process_schedule_throttle"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessScheduleThrottleTime:J

    .line 210
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "traffic_freeze_threshold"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficFreezeThreshold:J

    .line 211
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    const-string v1, "traffic_cal_interval"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficCalInterval:J

    .line 212
    return-void
.end method

.method private initXmlOperator()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;-><init>()V

    .line 127
    .local v0, "fxo":Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "freeze_app_white_list.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeAppXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    .line 129
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "freeze_gps_white_list.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeGpsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    .line 131
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "freeze_tcp_white_list.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    .line 133
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "freeze_params_list.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;

    .line 135
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "freeze_action_list.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;

    .line 137
    return-void
.end method

.method private isBuildInApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isNubiaApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNubiaApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.nubia."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildAppList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBuildApp()V
    .locals 6

    .prologue
    .line 593
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 594
    .local v1, "buildApp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mPM:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 595
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_2

    .line 596
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 597
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 599
    :cond_1
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildAppList:Ljava/util/HashSet;

    monitor-enter v5

    .line 603
    :try_start_0
    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildAppList:Ljava/util/HashSet;

    .line 604
    monitor-exit v5

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private loadDefaultFreezePkgList()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqlite"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    return-void
.end method

.method private loadDefaultGpsList()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.baidu.navi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.autonavi.xmgd.navigator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.cld.nv.h"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.sogou.map.android.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.map"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "cld.navi.mainframe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.navsns"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method private loadDefaultInterceptData()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 545
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    const/16 v0, 0x480

    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptConfigChangeFlag:I

    .line 555
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 556
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method private loadDefaultStrategyParameter()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x493e0

    const-wide/32 v2, 0xea60

    .line 532
    const-wide/16 v0, 0x2ee0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mAdjHoldTime:J

    .line 533
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mMusicCheckTime:J

    .line 534
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeAgainTime:J

    .line 535
    iput-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessFreezeStepTime:J

    .line 536
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessUnfreezeTime:J

    .line 537
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessMaxFreezeTime:J

    .line 538
    iput-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mProcessScheduleThrottleTime:J

    .line 539
    const-wide/32 v0, 0x32000

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficFreezeThreshold:J

    .line 540
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTrafficCalInterval:J

    .line 541
    return-void
.end method

.method private loadDefaultTcpList()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.pb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    const-string v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method private loadGpsList()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadNubiaGpsList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadDefaultGpsList()V

    .line 337
    :cond_0
    return-void
.end method

.method private loadInterceptData()V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadNubiaInterceptData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadDefaultInterceptData()V

    .line 355
    :cond_0
    return-void
.end method

.method private loadNubiaGpsList()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 390
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/freeze_gps_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 392
    if-nez v6, :cond_2

    .line 405
    if-eqz v6, :cond_0

    if-eqz v13, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move v1, v12

    .line 412
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    return v1

    .line 405
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 406
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "FreezeDataManager"

    const-string v2, "failed load gps packages list from database"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v12

    .line 407
    goto :goto_1

    .line 405
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 395
    :cond_2
    :try_start_4
    const-string v2, "pkg_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 396
    .local v8, "pkgIndex":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 397
    .local v10, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, -0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 398
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 391
    .end local v8    # "pkgIndex":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 402
    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 403
    :try_start_9
    iput-object v10, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    .line 404
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 405
    if-eqz v6, :cond_5

    if-eqz v13, :cond_6

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 409
    :cond_5
    :goto_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    monitor-enter v2

    .line 410
    :try_start_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeGpsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 411
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 412
    const/4 v1, 0x1

    goto :goto_1

    .line 404
    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 405
    .end local v8    # "pkgIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v2, v13

    goto :goto_3

    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v8    # "pkgIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4

    .line 411
    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v1
.end method

.method private loadNubiaInterceptData()Z
    .locals 17

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 472
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "content://cn.nubia.security.power/freeze_action_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 473
    if-nez v10, :cond_2

    .line 474
    const/4 v2, 0x0

    .line 494
    if-eqz v10, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 494
    .restart local v10    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .local v15, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v3, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v10    # "c":Landroid/database/Cursor;
    .end local v15    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v11

    .line 495
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "FreezeDataManager"

    const-string v3, "failed load intercept data from database"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    const/4 v2, 0x0

    goto :goto_0

    .line 494
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 476
    :cond_2
    :try_start_4
    const-string v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 477
    .local v14, "typeIndex":I
    const-string v2, "action"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 478
    .local v8, "actionIndex":I
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 479
    .local v12, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 480
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 481
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 482
    .local v13, "type":Ljava/lang/String;
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "action":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 484
    .local v9, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v9, :cond_3

    .line 485
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 487
    .restart local v9    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v12, v13, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 472
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "actionIndex":I
    .end local v9    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "typeIndex":I
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 494
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_2
    if-eqz v10, :cond_4

    if-eqz v3, :cond_8

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 490
    .restart local v8    # "actionIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v14    # "typeIndex":I
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 491
    :try_start_9
    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    .line 492
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 493
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->initInterceptData()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 494
    if-eqz v10, :cond_6

    if-eqz v3, :cond_7

    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 498
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 499
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeActionXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ActionXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 500
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 501
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 492
    :catchall_1
    move-exception v2

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 494
    .end local v8    # "actionIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v14    # "typeIndex":I
    :catchall_2
    move-exception v2

    goto :goto_2

    .restart local v8    # "actionIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v14    # "typeIndex":I
    :catch_3
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v3, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v8    # "actionIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v14    # "typeIndex":I
    :catch_4
    move-exception v15

    .restart local v15    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v15    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_3

    .line 500
    .restart local v8    # "actionIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v14    # "typeIndex":I
    :catchall_3
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v2
.end method

.method private loadNubiaStrategyParameter()Z
    .locals 15

    .prologue
    .line 442
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/freeze_params_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 444
    if-nez v6, :cond_2

    .line 445
    const/4 v1, 0x0

    .line 460
    if-eqz v6, :cond_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v1

    .line 460
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 461
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "FreezeDataManager"

    const-string v2, "failed load strategy parameters from database"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v1, 0x0

    goto :goto_0

    .line 460
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 447
    :cond_2
    :try_start_4
    const-string v1, "strategy"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 448
    .local v11, "strategyIndex":I
    const-string v1, "params"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 449
    .local v9, "paramsIndex":I
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 450
    .local v12, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, "strategy":Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 454
    .local v8, "params":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 443
    .end local v8    # "params":I
    .end local v9    # "paramsIndex":I
    .end local v10    # "strategy":Ljava/lang/String;
    .end local v11    # "strategyIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 460
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 456
    .restart local v9    # "paramsIndex":I
    .restart local v11    # "strategyIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_8
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 457
    :try_start_9
    iput-object v12, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    .line 458
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 459
    :try_start_a
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->initStrategyParams()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 460
    if-eqz v6, :cond_5

    if-eqz v2, :cond_6

    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 464
    :cond_5
    :goto_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 465
    :try_start_c
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mFreezeParamsXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mStrategyParamsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$ParamsXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 466
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 467
    const/4 v1, 0x1

    goto :goto_0

    .line 458
    :catchall_1
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 460
    .end local v9    # "paramsIndex":I
    .end local v11    # "strategyIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v1

    goto :goto_2

    .restart local v9    # "paramsIndex":I
    .restart local v11    # "strategyIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_3
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v9    # "paramsIndex":I
    .end local v11    # "strategyIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_4
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_3

    .line 466
    .restart local v9    # "paramsIndex":I
    .restart local v11    # "strategyIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v1

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v1
.end method

.method private loadNubiaTcpList()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 416
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/freeze_tcp_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 418
    if-nez v6, :cond_2

    .line 431
    if-eqz v6, :cond_0

    if-eqz v13, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move v1, v12

    .line 438
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    return v1

    .line 431
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 432
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "FreezeDataManager"

    const-string v2, "failed load tcp packages list from database"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v12

    .line 433
    goto :goto_1

    .line 431
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 421
    :cond_2
    :try_start_4
    const-string v2, "pkg_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 422
    .local v8, "pkgIndex":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 423
    .local v10, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, -0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 424
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 417
    .end local v8    # "pkgIndex":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 431
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 428
    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 429
    :try_start_9
    iput-object v10, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    .line 430
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 431
    if-eqz v6, :cond_5

    if-eqz v13, :cond_6

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 435
    :cond_5
    :goto_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    monitor-enter v2

    .line 436
    :try_start_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeTcpXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 437
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 438
    const/4 v1, 0x1

    goto :goto_1

    .line 430
    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 431
    .end local v8    # "pkgIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v2, v13

    goto :goto_3

    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v8    # "pkgIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4

    .line 437
    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v1
.end method

.method private loadPkgList()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadThirdUnfreezePkgList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadDefaultFreezePkgList()V

    .line 331
    :cond_0
    return-void
.end method

.method private loadSensorBlackList()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSensorBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 359
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSensorBlackList:Ljava/util/HashSet;

    const-string v1, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSensorBlackList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method private loadStrategyParameter()V
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadNubiaStrategyParameter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadDefaultStrategyParameter()V

    .line 349
    :cond_0
    return-void
.end method

.method private loadTcpList()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadNubiaTcpList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadDefaultTcpList()V

    .line 343
    :cond_0
    return-void
.end method

.method private loadThirdUnfreezePkgList()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 364
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/app_freeze_white_list_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "is_white_list=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 366
    if-nez v6, :cond_2

    .line 379
    if-eqz v6, :cond_0

    if-eqz v13, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move v1, v12

    .line 386
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    return v1

    .line 379
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 380
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "FreezeDataManager"

    const-string v2, "failed load unfreeze packages list from database"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v12

    .line 381
    goto :goto_1

    .line 379
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 369
    :cond_2
    :try_start_4
    const-string v2, "pkg_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 370
    .local v8, "pkgIndex":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 371
    .local v10, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, -0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 372
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 365
    .end local v8    # "pkgIndex":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 376
    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 377
    :try_start_9
    iput-object v10, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    .line 378
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 379
    if-eqz v6, :cond_5

    if-eqz v13, :cond_6

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 383
    :cond_5
    :goto_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    monitor-enter v2

    .line 384
    :try_start_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUnFreezeAppXmlOperator:Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/freezer/FreezeXmlOperator$AppXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 385
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 386
    const/4 v1, 0x1

    goto :goto_1

    .line 378
    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 379
    .end local v8    # "pkgIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v2, v13

    goto :goto_3

    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v8    # "pkgIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4

    .line 385
    .restart local v8    # "pkgIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v1
.end method

.method private updateData()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadPkgList()V

    .line 321
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadGpsList()V

    .line 322
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadTcpList()V

    .line 323
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadStrategyParameter()V

    .line 324
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadInterceptData()V

    .line 325
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 608
    const-string v2, "System app black list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v2, "third app white list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 614
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 616
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v2, "tcp unfreeze when connect list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 618
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 620
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v2, "gps unfreeze when use list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 622
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 624
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method getIgnoreSensors()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mIgnoreSensors:Ljava/util/HashSet;

    return-object v0
.end method

.method public getNoFreezeGpsAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mNoFreezeGpsAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSocialAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSocialAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method isAllowFreeze(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v0, 0x0

    .line 283
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->NONE_ALLOWED:Z

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 286
    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isBuildInApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mBuildInAppBlackList:Ljava/util/HashSet;

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 289
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mThirdAppWhiteList:Ljava/util/HashSet;

    iget-object v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isDontFreezeWhenTCPConnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mTCPWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInSensorBlackList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mSensorBlackList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInterceptApplicationThreadTransaction(I)Z
    .locals 2
    .param p1, "transaction"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptApplicatonThreadList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInterceptBroadcast(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptBroadcastList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInterceptConfigChange(I)Z
    .locals 1
    .param p1, "config"    # I

    .prologue
    .line 297
    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptConfigChangeFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mInterceptConfigChangeFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method
