.class public Lcom/android/server/am/NubiaSelfStartUtil;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"


# static fields
.field private static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field private static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field private static final APPWIDGET_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_"

.field protected static final BIND_SERVICE:Ljava/lang/String; = "bindServiceLocked"

.field private static final CLOSE_STATUS:I = 0x1

.field private static final COLUMN_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final COLUMN_DATE:Ljava/lang/String; = "date"

.field private static final COLUMN_MAX_NUM:Ljava/lang/String; = "max_num"

.field private static final COLUMN_NUM:Ljava/lang/String; = "num"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field protected static final CONTENT_PROVIDER:Ljava/lang/String; = "ContentProviderImpl"

.field private static final CONTENT_URI_SELFSTART:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_JOBSCHEDULER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_NUBIA_SUPERPOWER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_SYNCMANAGER_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final DEFAULT_STATUS:I = 0x0

.field private static final INTERNAL_BUILD_ID:Ljava/lang/String; = "sys.nubia_internal_version_flag"

.field protected static final JOB_SCHEDULER:Ljava/lang/String; = "JobScheduler"

.field private static final NUBIA_SUPERPOWER_MODE:Ljava/lang/String; = "persist.sys.power.nbpsm"

.field private static final OPEN_STATUS:I = 0x2

.field protected static final REBIND_SERVICE:Ljava/lang/String; = "rebindService"

.field protected static final RESTART_SERVICE:Ljava/lang/String; = "killServicesLocked"

.field protected static final START_FROM_BROADCAST:Ljava/lang/String; = "startfrombroadcast"

.field protected static final START_SERVICE:Ljava/lang/String; = "startServiceLocked"

.field protected static final SYNC_MANAGER:Ljava/lang/String; = "SyncManager"

.field private static final TAG:Ljava/lang/String; = "NubiaSelfStartUtil"

.field private static final sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;


# instance fields
.field private final mBindListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBlackListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallerListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInternationVersion:Ljava/lang/Boolean;

.field private final mJobSchedulerListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLimitListPkgNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNBSecurityExist:Ljava/lang/Boolean;

.field private final mNubiaSuperPowerPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtectListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStartServiceListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSyncManagerListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWhiteListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://selfstart_provider/selfstart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    .line 37
    const-string v0, "content://selfstart_provider/protection_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    .line 39
    const-string v0, "content://selfstart_provider/black_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    .line 41
    const-string v0, "content://selfstart_provider/limit_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 43
    const-string v0, "content://selfstart_provider/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 45
    const-string v0, "content://selfstart_provider/bind_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    .line 47
    const-string v0, "content://selfstart_provider/caller_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    .line 49
    const-string v0, "content://selfstart_provider/startservice_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    .line 51
    const-string v0, "content://selfstart_provider/provider_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    .line 53
    const-string v0, "content://selfstart_provider/syncmanager_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_SYNCMANAGER_LIST:Landroid/net/Uri;

    .line 55
    const-string v0, "content://selfstart_provider/jobscheduler_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_JOBSCHEDULER_LIST:Landroid/net/Uri;

    .line 57
    const-string v0, "content://selfstart_provider/superpower_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NUBIA_SUPERPOWER_LIST:Landroid/net/Uri;

    .line 111
    new-instance v0, Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {v0}, Lcom/android/server/am/NubiaSelfStartUtil;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setStartServiceListPkgNames()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setContentProviderListPkgNames()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setLimitListPkgNames()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBindListPkgNames()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setCallerListPkgNames()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/NubiaSelfStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method private addWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$9;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    return-void
.end method

.method private addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 308
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "package_name"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v4, "class_name"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private buildType()V
    .locals 4

    .prologue
    .line 1228
    const-string v1, "sys.nubia_internal_version_flag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "internalVersion":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    .line 1231
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsInternationVersion=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void
.end method

.method private checkNBSecurity()V
    .locals 4

    .prologue
    .line 1199
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1200
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/nubia_NBSecurity2"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const-string v3, "cn.nubia.security2"

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    .line 1205
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNBSecurityExist=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void

    .line 1205
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private delelteWidgetDataFromDb()I
    .locals 7

    .prologue
    .line 340
    const/4 v2, -0x1

    .line 341
    .local v2, "result":I
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    move v3, v2

    .line 351
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 344
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    sget-object v4, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 345
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 351
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 348
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v2, -0x1

    .line 322
    .local v2, "result":I
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    move v3, v2

    .line 336
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 325
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 326
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 327
    .local v6, "uri":Landroid/net/Uri;
    const-string v4, "package_name=? and class_name=?"

    .line 328
    .local v4, "selection":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object p2, v5, v7

    .line 329
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v0, v6, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    move v3, v2

    .line 336
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 332
    .end local v3    # "result":I
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "result":I
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getBindListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1139
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1140
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1141
    return-object v5
.end method

.method private getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1133
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1134
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1135
    return-object v5
.end method

.method private getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    const-string v1, " from ContentProvider autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCallerListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1145
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1146
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1147
    return-object v5
.end method

.method private getContentProviderListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1157
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1158
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1159
    return-object v5
.end method

.method private getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "offer"    # Ljava/lang/String;

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Not allow packageName=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->getOfferStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string v1, " autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/NubiaSelfStartUtil;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-object v0
.end method

.method private getJobSchedulerListPkgNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1175
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1176
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_JOBSCHEDULER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1177
    return-object v5
.end method

.method private getLimitListPkgNames(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1164
    .local v0, "resultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 1165
    return-object v0
.end method

.method private getNubiaSuperPowerListPkgNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1181
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1182
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_NUBIA_SUPERPOWER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1183
    return-object v5
.end method

.method private getOfferStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "offer"    # Ljava/lang/String;

    .prologue
    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1010
    const-string v1, " from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 993
    :sswitch_0
    const-string v2, "startServiceLocked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "bindServiceLocked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "JobScheduler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SyncManager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "killServicesLocked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 995
    :pswitch_0
    const-string v1, " from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 998
    :pswitch_1
    const-string v1, " from bindservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1001
    :pswitch_2
    const-string v1, " from jobscheduler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1004
    :pswitch_3
    const-string v1, " from syncmanager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1007
    :pswitch_4
    const-string v1, " from restartservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 993
    :sswitch_data_0
    .sparse-switch
        -0x7c4b43fa -> :sswitch_4
        -0x45818262 -> :sswitch_2
        -0x1b011f1e -> :sswitch_1
        0x335a2072 -> :sswitch_3
        0x573464dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const-string v1, " from broadcast Intent{act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v1, "} autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "offer"    # Ljava/lang/String;

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->getOfferStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v1, " autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProtectionListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1127
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1128
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 1129
    return-object v5
.end method

.method private getStartServiceListPackageNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1151
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1152
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1153
    return-object v5
.end method

.method private getSyncManagerListPkgNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1169
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1170
    .local v5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_SYNCMANAGER_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 1171
    return-object v5
.end method

.method private getTodayZeroTime()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 407
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 408
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 409
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 410
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 411
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 412
    .local v2, "time":J
    return-wide v2
.end method

.method private getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const-string v3, "status=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 196
    return-object v5
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaSelfStartUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 460
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 461
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    .line 462
    return-void
.end method

.method private isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1212
    const/4 v1, 0x0

    .line 1214
    .local v1, "isInstall":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1215
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1217
    .local v0, "apkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 1220
    :cond_1
    const/4 v1, 0x1

    .line 1224
    .end local v0    # "apkInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    return v1

    .line 1222
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isAuthorityAllow(Ljava/lang/String;)Z
    .locals 9
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v5, 0x0

    .line 658
    .local v5, "result":Z
    if-eqz p1, :cond_2

    .line 659
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "authorities":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 661
    .local v1, "auth":Ljava/lang/String;
    const-string v6, "browser"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.browser"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.accounts.cts.unaffiliated.authenticators.provider"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 664
    :goto_1
    if-eqz v5, :cond_4

    .line 669
    .end local v1    # "auth":Ljava/lang/String;
    :cond_1
    const-string v6, "NubiaSelfStartUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authority=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "authorities":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return v5

    .line 661
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "auth":Ljava/lang/String;
    .restart local v2    # "authorities":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 660
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "startStyle"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 923
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    monitor-exit v2

    .line 949
    :goto_0
    return v0

    .line 927
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 928
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 929
    const-string v3, "startfrombroadcast"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getNetAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 932
    :cond_3
    :try_start_1
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getNetAvailable()Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 935
    :cond_4
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "cn.nubia."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.cts."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.tests."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.accounts.cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.cttl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.xts."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.compatibility.common.deviceinfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.jobscheduler.cts.deviceside"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 946
    :cond_5
    monitor-exit v2

    move v0, v1

    goto/16 :goto_0

    .line 948
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private isInBindList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v1

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    monitor-exit v1

    .line 806
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInProtectList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInternalVersion()Z
    .locals 2

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mIsInternationVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLimited(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 812
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v4

    .line 813
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 815
    .local v1, "time":I
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 816
    .local v0, "count":[Ljava/lang/Integer;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 817
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 818
    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 819
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v2, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    :goto_0
    const-string v2, "NubiaSelfStartUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLimitListPkgNames=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[0]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[1]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[2]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v0    # "count":[Ljava/lang/Integer;
    .end local v1    # "time":I
    :cond_0
    monitor-exit v4

    move v2, v3

    .line 838
    :goto_1
    return v2

    .line 822
    .restart local v0    # "count":[Ljava/lang/Integer;
    .restart local v1    # "time":I
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 823
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 824
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v2, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 837
    .end local v0    # "count":[Ljava/lang/Integer;
    .end local v1    # "time":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 827
    .restart local v0    # "count":[Ljava/lang/Integer;
    .restart local v1    # "time":I
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private isNBSecurityExist()Z
    .locals 2

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "startStyle"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 953
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 954
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    monitor-exit v2

    .line 970
    :goto_0
    return v0

    .line 957
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 958
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 959
    const-string v3, "startfrombroadcast"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getNetAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 959
    goto :goto_1

    .line 962
    :cond_3
    :try_start_1
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getNetAvailable()Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 965
    :cond_4
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 967
    :cond_5
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "cn.nubia."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 969
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 970
    goto :goto_0
.end method

.method private isNubiaSuperPowerSavingMode()Z
    .locals 3

    .prologue
    .line 1236
    const/4 v1, 0x0

    .line 1237
    .local v1, "result":Z
    const-string v2, "persist.sys.power.nbpsm"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    const/4 v1, 0x1

    .line 1241
    :cond_0
    return v1
.end method

.method private isRootOrShell(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 918
    if-eqz p1, :cond_0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWidget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 508
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const/4 v1, 0x1

    .line 514
    .end local v0    # "intentAction":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 16
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    const-string v9, "package_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 386
    .local v8, "packageNameIndex":I
    const-string v9, "num"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 387
    .local v6, "numIndex":I
    const-string v9, "max_num"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 388
    .local v4, "maxNumIndex":I
    const-string v9, "date"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 389
    .local v2, "dateIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v10

    .line 390
    .local v10, "time":J
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 391
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 393
    .local v3, "maxNum":I
    const/4 v5, 0x0

    .line 394
    .local v5, "num":I
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-nez v9, :cond_0

    .line 395
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 399
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 402
    .end local v3    # "maxNum":I
    .end local v5    # "num":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 357
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 358
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "num"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "max_num"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    .line 360
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 366
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 368
    invoke-direct {p0, p2, v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_2
    if-eqz v6, :cond_0

    .line 375
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v7

    .line 377
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 371
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v6, :cond_0

    .line 375
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 376
    :catch_2
    move-exception v7

    .line 377
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 375
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 378
    :cond_3
    :goto_1
    throw v3

    .line 376
    :catch_3
    move-exception v7

    .line 377
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "package_name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "class_name"

    aput-object v4, v3, v2

    .line 203
    .local v3, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 207
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 209
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 210
    if-eqz v9, :cond_3

    .line 211
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 212
    .local v13, "sum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_3

    .line 213
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "packageName":Ljava/lang/String;
    const-string v2, "class_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "className":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 224
    .local v8, "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    move-object/from16 v0, p5

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 222
    .end local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_2

    .line 231
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "sum":I
    :cond_3
    if-eqz v9, :cond_0

    .line 233
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v10

    .line 235
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 229
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    if-eqz v9, :cond_0

    .line 233
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 234
    :catch_2
    move-exception v10

    .line 235
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 233
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    :cond_4
    :goto_3
    throw v2

    .line 234
    :catch_3
    move-exception v10

    .line 235
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 243
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v2, v3

    .line 244
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 250
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    if-eqz v6, :cond_2

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 253
    .local v9, "sum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 254
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 255
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 261
    .end local v8    # "i":I
    .end local v9    # "sum":I
    :cond_2
    if-eqz v6, :cond_0

    .line 263
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v7

    .line 265
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 259
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    if-eqz v6, :cond_0

    .line 263
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 264
    :catch_2
    move-exception v7

    .line 265
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 263
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 266
    :cond_3
    :goto_2
    throw v1

    .line 264
    :catch_3
    move-exception v7

    .line 265
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private onWidgetDisabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 887
    .local v0, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 889
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->removeWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private onWidgetEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 872
    .local v0, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 877
    .end local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 878
    .restart local v0    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$10;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method private setBindListPkgNames()V
    .locals 3

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getBindListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1064
    .local v0, "bindListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v2

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1066
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1067
    monitor-exit v2

    .line 1068
    return-void

    .line 1067
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setBlackListPkgNames()V
    .locals 3

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1052
    .local v0, "blackPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1054
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1055
    monitor-exit v2

    .line 1056
    return-void

    .line 1055
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCallerListPkgNames()V
    .locals 3

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getCallerListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1072
    .local v0, "callerPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1074
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1075
    monitor-exit v2

    .line 1076
    return-void

    .line 1075
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setContentProviderListPkgNames()V
    .locals 3

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getContentProviderListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1088
    .local v0, "contentProviderListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    monitor-enter v2

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1090
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1091
    monitor-exit v2

    .line 1092
    return-void

    .line 1091
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setJobSchedulerListPkgNames()V
    .locals 3

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getJobSchedulerListPkgNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1112
    .local v0, "jobSchedulerListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    monitor-enter v2

    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1114
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1115
    monitor-exit v2

    .line 1116
    return-void

    .line 1115
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLimitListPkgNames()V
    .locals 3

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getLimitListPkgNames(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 1096
    .local v0, "limitListPkgNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v2

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1098
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1099
    monitor-exit v2

    .line 1100
    return-void

    .line 1099
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setNubiaSuperPowerListPkgNames()V
    .locals 3

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getNubiaSuperPowerListPkgNames()Ljava/util/Set;

    move-result-object v0

    .line 1120
    .local v0, "nubiaSuperPowerListPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 1121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1122
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNubiaSuperPowerPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1123
    monitor-exit v2

    .line 1124
    return-void

    .line 1123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setProtectionListPkgNames()V
    .locals 3

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getProtectionListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1044
    .local v0, "protectionPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1046
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1047
    monitor-exit v2

    .line 1048
    return-void

    .line 1047
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStartServiceListPkgNames()V
    .locals 3

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getStartServiceListPackageNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1080
    .local v0, "startServiceListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    monitor-enter v2

    .line 1081
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1082
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1083
    monitor-exit v2

    .line 1084
    return-void

    .line 1083
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSyncManagerListPkgNames()V
    .locals 3

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getSyncManagerListPkgNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1104
    .local v0, "syncManagerListPkgNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    monitor-enter v2

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1106
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1107
    monitor-exit v2

    .line 1108
    return-void

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWhiteListPkgNames()V
    .locals 3

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1036
    .local v0, "allowedPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1038
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1039
    monitor-exit v2

    .line 1040
    return-void

    .line 1039
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWidgetListPkgNames()V
    .locals 0

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->delelteWidgetDataFromDb()I

    .line 1060
    return-void
.end method

.method private updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;

    .prologue
    .line 417
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 418
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "package_name=? "

    .line 419
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    .line 420
    .local v3, "selectionArgs":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v4

    .line 426
    .local v4, "time":J
    const-string v8, "num"

    invoke-virtual {v1, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v8, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    :try_start_0
    invoke-virtual {v0, v6, v1, v7, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 272
    const/4 v8, 0x0

    .line 273
    .local v8, "result":Z
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    move v9, v8

    .line 299
    .end local v8    # "result":Z
    .local v9, "result":I
    :goto_0
    return v9

    .line 276
    .end local v9    # "result":I
    .restart local v8    # "result":Z
    :cond_0
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 277
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const-string v5, "package_name"

    aput-object v5, v2, v10

    const-string v5, "class_name"

    aput-object v5, v2, v11

    .line 279
    .local v2, "selections":[Ljava/lang/String;
    const-string v3, "package_name=? and class_name=?"

    .line 280
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v11

    .line 281
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 284
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    .line 286
    const/4 v8, 0x1

    .line 291
    :cond_1
    if-eqz v6, :cond_2

    .line 293
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v9, v8

    .line 299
    .restart local v9    # "result":I
    goto :goto_0

    .line 294
    .end local v9    # "result":I
    :catch_0
    move-exception v7

    .line 295
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 289
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    if-eqz v6, :cond_2

    .line 293
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 294
    :catch_2
    move-exception v7

    .line 295
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_3

    .line 293
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 296
    :cond_3
    :goto_2
    throw v5

    .line 294
    :catch_3
    move-exception v7

    .line 295
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method countWidget(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 848
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-nez v3, :cond_2

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 857
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "className":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v4

    .line 861
    :try_start_0
    const-string v3, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 862
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->onWidgetEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 863
    :cond_4
    :try_start_1
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->onWidgetDisabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method firstBootGetAllowPkgNames()V
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 438
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->buildType()V

    .line 439
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->checkNBSecurity()V

    .line 440
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initHandler()V

    .line 442
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    .line 443
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setProtectionListPkgNames()V

    .line 444
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBlackListPkgNames()V

    .line 445
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWidgetListPkgNames()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setBindListPkgNames()V

    .line 447
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setCallerListPkgNames()V

    .line 448
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setStartServiceListPkgNames()V

    .line 449
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setContentProviderListPkgNames()V

    .line 450
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setLimitListPkgNames()V

    .line 451
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setSyncManagerListPkgNames()V

    .line 452
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setJobSchedulerListPkgNames()V

    .line 453
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setNubiaSuperPowerListPkgNames()V

    .line 456
    :cond_0
    return-void
.end method

.method initContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method

.method public isAllowedReBind(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 632
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 634
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "rebindService"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    const/4 v1, 0x1

    .line 640
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    const/4 v1, 0x1

    .line 643
    :cond_1
    if-eqz v1, :cond_3

    .line 644
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from RebindServices autostart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move v2, v1

    .line 653
    :goto_2
    return v2

    .line 646
    :cond_3
    if-nez v1, :cond_2

    .line 647
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from RebindServices autostart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 651
    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    .line 639
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 569
    const/4 v0, 0x1

    .line 570
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInternalVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    const-string v1, "com.google.android.gms"

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getNetAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 574
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bind service autostart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    return v0
.end method

.method public isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z
    .locals 6
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I

    .prologue
    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 544
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 545
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v4, "bindServiceLocked"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    :cond_0
    const/4 v2, 0x1

    .line 556
    :cond_1
    :goto_0
    if-eqz v2, :cond_7

    .line 557
    const-string v3, "NubiaSelfStartUtil"

    const-string v4, "bindServiceLocked"

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move v3, v2

    .line 565
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_2
    return v3

    .line 550
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v4, "bindServiceLocked"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInBindList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 558
    :cond_7
    if-nez v2, :cond_2

    .line 559
    const-string v3, "NubiaSelfStartUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allow packageName=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from bind service autostart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 563
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x1

    goto :goto_2
.end method

.method isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "callingUid"    # I
    .param p3, "offer"    # Ljava/lang/String;

    .prologue
    .line 518
    const/4 v1, 0x0

    .line 519
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 520
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 521
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    :cond_0
    const/4 v1, 0x1

    .line 530
    :cond_1
    :goto_0
    if-eqz v1, :cond_7

    .line 531
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move v2, v1

    .line 538
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_2
    return v2

    .line 525
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 532
    :cond_7
    if-nez v1, :cond_2

    .line 533
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->getForbidStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 536
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    goto :goto_2
.end method

.method isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 468
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 469
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "startfrombroadcast"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    :cond_0
    const/4 v1, 0x1

    .line 479
    :cond_1
    :goto_0
    if-eqz v1, :cond_7

    .line 480
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move v2, v1

    .line 487
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_2
    return v2

    .line 473
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_3
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "startfrombroadcast"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 481
    :cond_7
    if-nez v1, :cond_2

    .line 482
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " R=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 485
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    goto :goto_2
.end method

.method isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, "result":Z
    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 494
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 496
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "startfrombroadcast"

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 500
    :cond_2
    const/4 v2, 0x1

    .line 503
    :cond_3
    return v2
.end method

.method isAllowedSelfStartPkg(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingUid"    # I

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 584
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 585
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 586
    invoke-direct {p0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ContentProviderImpl"

    invoke-direct {p0, p2, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isNubiaSuperPowerAllowPkg(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    :cond_0
    const/4 v1, 0x1

    .line 594
    :cond_1
    :goto_0
    if-eqz v1, :cond_7

    .line 595
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move v2, v1

    .line 603
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_2
    return v2

    .line 589
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ContentProviderImpl"

    invoke-direct {p0, p2, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAuthorityAllow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 596
    :cond_7
    if-nez v1, :cond_2

    .line 597
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from contentProvider autostart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 601
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    goto :goto_2
.end method

.method isAllowedServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x1

    .line 607
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 608
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v12, "killServicesLocked"

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v0

    .line 609
    .local v0, "allow":Z
    if-eqz v0, :cond_0

    .line 625
    .end local v0    # "allow":Z
    :goto_1
    return v9

    .line 607
    .restart local v0    # "allow":Z
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "allow":Z
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 614
    .local v8, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "conni":I
    :goto_2
    if-ltz v4, :cond_2

    .line 615
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 616
    .local v3, "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 617
    .local v2, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 618
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_3

    .line 619
    const-string v10, "NubiaSelfStartUtil"

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "killServicesLocked"

    invoke-direct {p0, v11, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 625
    .end local v3    # "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "conni":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method isInCallerList(I)Z
    .locals 8
    .param p1, "callerUid"    # I

    .prologue
    .line 682
    const/4 v6, 0x0

    .line 683
    .local v6, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 684
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 686
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "callerPkgList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 689
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 690
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 691
    const/4 v6, 0x1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "callerPkgList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_1
    move v7, v6

    .line 703
    :goto_2
    return v7

    .line 689
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "callerPkgList":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "callerPkgList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 697
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 701
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v7, 0x1

    goto :goto_2
.end method

.method isInCallerList(Landroid/util/ArrayMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    const/4 v2, 0x0

    .line 708
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mCallerListPkgNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 710
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    const/4 v2, 0x1

    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_1
    move v3, v2

    .line 718
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    .line 716
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isInContentProviderList(Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 742
    const/4 v2, 0x0

    .line 743
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 744
    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 745
    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 746
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 748
    const/4 v2, 0x0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    move v3, v2

    .line 756
    :goto_1
    return v3

    .line 750
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProviderListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 754
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method isInJobSchedulerList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 778
    const/4 v2, 0x0

    .line 779
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 780
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 781
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 782
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 784
    const/4 v2, 0x0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    move v3, v2

    .line 792
    :goto_1
    return v3

    .line 786
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mJobSchedulerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 790
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method isInStartServiceList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 722
    const/4 v2, 0x0

    .line 723
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 725
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 726
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 728
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 729
    const/4 v2, 0x0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    move v3, v2

    .line 738
    :goto_1
    return v3

    .line 731
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mStartServiceListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 736
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method isInSyncManagerList(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 760
    const/4 v2, 0x0

    .line 761
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 763
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 764
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 766
    const/4 v2, 0x0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    move v3, v2

    .line 774
    :goto_1
    return v3

    .line 768
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mSyncManagerListNames:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 772
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method registerSelfStartObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$1;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$2;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$3;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$4;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_CALLER_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$5;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_STARTSERVICE_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$6;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$6;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROVIDER_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$7;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$7;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaSelfStartUtil$8;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil$8;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    :cond_0
    return-void
.end method
