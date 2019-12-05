.class public Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static DEBUG_FREEZE:Z = false

.field static DEBUG_MANAGE:Z = false

.field static DEBUG_STRATEGY:Z = false

.field static ENABLE:Z = false

.field private static final LOOPER_CHECK_TIME:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "ApplicationFreeze"


# instance fields
.field private mAllProcessList:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

.field private mCheckProcessRunnable:Ljava/lang/Runnable;

.field private mClearFreezeProcessBeforeBoot:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

.field private mFreezeCallback:Lnubia/os/IFreezeCallback;

.field private mFreezeStrategyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/IStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

.field private mGetStatusRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIgnorNearestTime:J

.field private mIsScreenOn:Z

.field private mManagedProcesses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNearestTime:J

.field private mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

.field private mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

.field private mQuitProcesses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

.field private mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

.field private mUnfreezeStrategyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/IStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    .line 29
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    .line 30
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    .line 31
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    .line 32
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->isProcessFrozenAllowed()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->ENABLE:Z

    return-void

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lnubia/os/IFreezeCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lnubia/os/IFreezeCallback;

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    .line 53
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 54
    iput-wide v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    .line 57
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$1;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCheckProcessRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$2;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGetStatusRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mClearFreezeProcessBeforeBoot:Ljava/lang/Runnable;

    .line 125
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    .line 128
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    .line 129
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    .line 130
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;-><init>(Landroid/os/Handler;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAllProcessList:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    .line 131
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    .line 132
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    .line 133
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;-><init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    .line 134
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .line 136
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->initUnfreezeStrategyList()V

    .line 137
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->initFreezeStrategyList()V

    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mClearFreezeProcessBeforeBoot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->doCheck()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lnubia/os/IFreezeCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    return-object v0
.end method

.method static synthetic access$300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 26
    invoke-static {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFrozen(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    return-object v0
.end method

.method private checkFreeze(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p2, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p3, "againFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 462
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 463
    iget-boolean v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    if-nez v7, :cond_0

    .line 464
    iget-boolean v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-virtual {v7, v3}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->shouldFreezeAgain(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    :cond_1
    const/4 v4, 0x1

    .line 467
    .local v4, "needFreeze":Z
    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 468
    .local v5, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    if-nez v4, :cond_3

    invoke-interface {v5}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 470
    :cond_3
    invoke-interface {v5, v3}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v6

    .line 471
    .local v6, "thisAllowed":Z
    sget-boolean v7, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    const-string v7, "ApplicationFreeze"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "do not freeze "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    .line 474
    :goto_2
    goto :goto_1

    .line 473
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 475
    .end local v5    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    .end local v6    # "thisAllowed":Z
    :cond_6
    if-eqz v4, :cond_0

    .line 476
    iget-boolean v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v7, :cond_7

    .line 477
    invoke-virtual {p3, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 479
    :cond_7
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 483
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v4    # "needFreeze":Z
    :cond_8
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 484
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->filterFreezeList(Ljava/util/HashSet;)V

    .line 486
    :cond_9
    return-void
.end method

.method private checkUnFreeze(Ljava/util/HashMap;)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 533
    .local v6, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 534
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 535
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 536
    iget-boolean v7, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v7, :cond_0

    .line 538
    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 539
    .local v5, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v5, v3}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v4

    .line 540
    .local v4, "needUnfreeze":Z
    if-eqz v4, :cond_1

    .line 541
    sget-boolean v7, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    if-eqz v7, :cond_2

    const-string v7, "ApplicationFreeze"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "need Unfreeze "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v4    # "needUnfreeze":Z
    .end local v5    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 549
    invoke-direct {p0, v6}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->unfreezeSameUid(Ljava/util/HashSet;)V

    .line 551
    :cond_4
    return-object v6
.end method

.method private doCheck()V
    .locals 6

    .prologue
    .line 407
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v4, :cond_0

    .line 422
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v2, "processList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v5

    .line 410
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 411
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->preCheck()V

    .line 413
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v1, "newFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 415
    .local v0, "againFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, v2, v1, v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->checkFreeze(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 416
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->checkUnFreeze(Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v3

    .line 418
    .local v3, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleFreeze(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 419
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleUnfreeze(Ljava/util/HashSet;)V

    .line 420
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNotifier:Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v4, v1, v3, v5}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->notifyChange(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 421
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->removeQuitProcess()V

    goto :goto_0

    .line 411
    .end local v0    # "againFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v1    # "newFreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 635
    const-string v3, "==========freeze manage app============="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsScreenOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v4

    .line 638
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 639
    .local v2, "pid":Ljava/lang/Integer;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 640
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v2    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-virtual {v3, p1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->dump(Ljava/io/PrintWriter;)V

    .line 644
    return-void
.end method

.method private filterFreezeList(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 522
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-direct {p0, v1, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isSameUidOrPackageNameNotFrezon(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v3, :cond_1

    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not freeze "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which has same uid or in same package not freeze"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 529
    return-void
.end method

.method private findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v3, "sameUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 497
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 498
    .local v2, "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isSameApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v2    # "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_1
    return-object v3
.end method

.method private getQuitProcess(Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v3, 0x0

    .line 381
    .local v3, "re":Z
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 382
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v4, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v6

    .line 384
    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 385
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 386
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v5, :cond_1

    const-string v5, "ApplicationFreeze"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 388
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mNeedQuit:Z

    .line 390
    const/4 v3, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_2
    monitor-exit v6

    .line 394
    return v3

    .line 393
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private initFreezeStrategyList()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;-><init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WindowStateFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/WindowStateFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/TrafficFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/GPSFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/SensorCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WidgetFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/WidgetFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method private initUnfreezeStrategyList()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/QuitUnfreezeStrategy;

    invoke-direct {v1}, Lcn/nubia/server/appmgmt/freezer/QuitUnfreezeStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mSensorCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/SensorUnfreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/SensorCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mWidgetCheck:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/freezer/WidgetUnFreezeStrategy;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private static isFrozen(I)Z
    .locals 8
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 214
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->ENABLE:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 223
    :goto_0
    return v2

    .line 218
    :cond_0
    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v4, "isProcessFrozen"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 219
    .local v1, "isProcessFrozen":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 220
    .end local v1    # "isProcessFrozen":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 223
    goto :goto_0
.end method

.method private isSameApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "one"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "other"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 489
    iget v0, p2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    .line 490
    :cond_0
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v1, p2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p2, p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->hasSameName(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method private isSameUidOrPackageNameNotFrezon(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;Ljava/util/HashSet;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 510
    .local v2, "sameUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 511
    .local v1, "sameOne":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-boolean v3, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-nez v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    const/4 v3, 0x1

    .line 515
    .end local v1    # "sameOne":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private openCloseLog()V
    .locals 3

    .prologue
    .line 647
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    .line 648
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    .line 649
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    .line 650
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    .line 651
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG:Z

    sput-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    .line 652
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mStatusCheck:Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->resetArgs()V

    .line 653
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 654
    .local v1, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->resetArgs()V

    goto :goto_1

    .line 647
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 656
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 657
    .restart local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->resetArgs()V

    goto :goto_2

    .line 659
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_2
    return-void
.end method

.method private preCheck()V
    .locals 3

    .prologue
    .line 398
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 399
    .local v1, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->preCheck()V

    goto :goto_0

    .line 401
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mUnfreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 402
    .restart local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    invoke-interface {v1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->preCheck()V

    goto :goto_1

    .line 404
    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    :cond_1
    return-void
.end method

.method private removeQuitProcess()V
    .locals 6

    .prologue
    .line 425
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 426
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 427
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v2, :cond_0

    const-string v2, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "real remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    iget v4, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 430
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mQuitProcesses:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 432
    return-void
.end method

.method private scheduleCheck()V
    .locals 2

    .prologue
    .line 316
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 317
    return-void
.end method

.method private scheduleFreeze(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "newList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p2, "againList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 569
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v3, :cond_0

    .line 570
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget-object v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    .line 572
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 573
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetTime()V

    .line 574
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v3, :cond_1

    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do freeze "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v3, v4}, Lnubia/os/IFreezeCallback;->scheduleFreeze(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 582
    .restart local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :try_start_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v3, :cond_3

    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do freeze again "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_3
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetTime()V

    .line 584
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->addFreezeTimes()V

    .line 585
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-interface {v3, v4}, Lnubia/os/IFreezeCallback;->scheduleFreeze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 586
    :catch_1
    move-exception v0

    .line 587
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_4
    return-void
.end method

.method private scheduleUnfreeze(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v6, 0x1

    .line 593
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 594
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v3, :cond_1

    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unfreeze "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    iget v4, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze(I)Z

    move-result v2

    .line 596
    .local v2, "isSucess":Z
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    const-string v3, "ApplicationFreeze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unfreeze "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2
    if-eqz v2, :cond_0

    .line 598
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    .line 599
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 600
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v3, :cond_0

    .line 601
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v4, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    iget-object v5, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 605
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v2    # "isSucess":Z
    :cond_3
    return-void
.end method

.method private toScreenState(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 253
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private unfreezeSameUid(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v0, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 557
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findSameUidOrPackageNameProcess(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Ljava/util/ArrayList;

    move-result-object v3

    .line 558
    .local v3, "sameUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v4, :cond_0

    const-string v4, "ApplicationFreeze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unfreeze "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 562
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v3    # "sameUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 563
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "next"    # I

    .prologue
    .line 620
    array-length v1, p2

    if-lt p3, v1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    aget-object v0, p2, p3

    .line 623
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "log"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->openCloseLog()V

    goto :goto_0

    .line 625
    :cond_2
    const-string v1, "dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 627
    :cond_3
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->NONE_ALLOWED:Z

    goto :goto_0

    .line 629
    :cond_4
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->NONE_ALLOWED:Z

    goto :goto_0
.end method

.method findProcess(I)Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 435
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v2

    .line 436
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 437
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    monitor-exit v2

    return-object v0

    .line 438
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    return-object v0
.end method

.method public isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "subCode"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "argStr1"    # Ljava/lang/String;
    .param p6, "argStr2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    if-eq p1, v1, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 286
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-virtual {v3, p5}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isInterceptBroadcast(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 286
    goto :goto_0

    .line 287
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 288
    const/16 v3, 0x10

    if-ne p2, v3, :cond_4

    .line 289
    move v0, p3

    .line 290
    .local v0, "cfgChanges":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-virtual {v3, v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isInterceptConfigChange(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 292
    .end local v0    # "cfgChanges":I
    :cond_4
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-virtual {v3, p2}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isInterceptApplicationThreadTransaction(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public isKillWhenFrozen(I)Z
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, "result":Z
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 610
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 611
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getFreezingTimer()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 612
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->resetFreezingTimer()V

    .line 613
    const/4 v1, 0x1

    .line 615
    :cond_0
    monitor-exit v3

    .line 616
    return v1

    .line 615
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isNotifyDisplayEvent(II)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 234
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 235
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 236
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v0, :cond_1

    .line 237
    sget-boolean v4, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v4, :cond_0

    .line 238
    const-string v4, "ApplicationFreeze"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNotifyDisplayEvent pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDpyState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDpyState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget v4, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDpyState:I

    if-eqz v4, :cond_1

    .line 242
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->toScreenState(I)I

    move-result v1

    .line 243
    .local v1, "newState":I
    iget v4, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDpyState:I

    if-ne v4, v2, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 245
    monitor-exit v3

    .line 248
    .end local v1    # "newState":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 249
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isProcessFrozen(I)Z
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 207
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 209
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProcessFrozenByUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 268
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v5

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "hasThisUid":Z
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 272
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v4, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    if-ne v4, p1, :cond_0

    .line 273
    const/4 v1, 0x1

    .line 275
    iget v4, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v4}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFrozen(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    monitor-exit v5

    .line 278
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :goto_0
    return v4

    :cond_1
    monitor-exit v5

    move v4, v1

    goto :goto_0

    .line 279
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isProcessRealFrozen(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 228
    .local v0, "id":J
    invoke-static {p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFrozen(I)Z

    move-result v2

    .line 229
    .local v2, "isFrozen":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    return v2
.end method

.method declared-synchronized isScreenOn()Z
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public noteDisplayStateChanged(II)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .prologue
    .line 258
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v2

    .line 259
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 260
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v0, :cond_1

    .line 261
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v1, :cond_0

    const-string v1, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNotifyDisplayEvent pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->toScreenState(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mDpyState:I

    .line 264
    :cond_1
    monitor-exit v2

    .line 265
    return-void

    .line 264
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteProcessStatus([I[I[Ljava/lang/String;[I[I)V
    .locals 6
    .param p1, "pids"    # [I
    .param p2, "uids"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adjs"    # [I
    .param p5, "reasonPids"    # [I

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mAllProcessList:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->updateProcess([I[I[Ljava/lang/String;[I[I)V

    .line 175
    return-void
.end method

.method public noteProcessStatusChanged()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGetStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mGetStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteResumingActivity(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$EnableIPTableRunnable;-><init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public declared-synchronized noteScreenStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 184
    monitor-enter p0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 185
    .local v0, "isScreenOn":Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    if-eq v1, v0, :cond_1

    .line 186
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    .line 187
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v1, :cond_0

    const-string v1, "ApplicationFreeze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteScreenStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    monitor-exit p0

    return-void

    .line 184
    .end local v0    # "isScreenOn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isScreenOn":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public noteWindowStateChange(III)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "isRealChanged":Z
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 195
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 196
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->noteWindowChange(II)Z

    move-result v1

    .line 199
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v1, :cond_2

    .line 201
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v2, :cond_1

    const-string v2, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noteWindowStateChange pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V

    .line 204
    :cond_2
    return-void

    .line 199
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method preCheckOnProcessWithoutLink(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 8
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    if-nez p1, :cond_0

    .line 455
    :goto_0
    return v3

    .line 443
    :cond_0
    iget-boolean v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 444
    :cond_1
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeStrategyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/IStrategy;

    .line 446
    .local v1, "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    instance-of v5, v1, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;

    if-eqz v5, :cond_4

    .line 447
    const/4 v2, 0x1

    .line 451
    .local v2, "thisAllowed":Z
    :goto_1
    sget-boolean v5, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    const-string v5, "ApplicationFreeze"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not freeze "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_3
    if-nez v2, :cond_2

    goto :goto_0

    .line 449
    .end local v2    # "thisAllowed":Z
    :cond_4
    invoke-interface {v1, p1}, Lcn/nubia/server/appmgmt/freezer/IStrategy;->check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    .restart local v2    # "thisAllowed":Z
    goto :goto_1

    .end local v1    # "strategy":Lcn/nubia/server/appmgmt/freezer/IStrategy;
    .end local v2    # "thisAllowed":Z
    :cond_5
    move v3, v4

    .line 455
    goto :goto_0
.end method

.method declared-synchronized scheduleCheck(J)V
    .locals 9
    .param p1, "delay"    # J

    .prologue
    .line 320
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    const-wide/16 p1, 0x0

    .line 321
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 322
    .local v2, "now":J
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 324
    :cond_1
    add-long v0, v2, p1

    .line 325
    .local v0, "next":J
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 326
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 327
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    iget-wide v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 328
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    .line 329
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    .line 331
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCheckProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCheckProcessRunnable:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNearestTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_4
    :try_start_1
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 334
    iput-wide v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIgnorNearestTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    .end local v0    # "next":J
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    .locals 0
    .param p1, "callback"    # Lnubia/os/IFreezeCallback;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    .line 163
    return-void
.end method

.method public setNetworkController(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0
    .param p1, "networkController"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .line 167
    return-void
.end method

.method public unfreezeWhenKill(I)V
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 299
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezeCallback:Lnubia/os/IFreezeCallback;

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 303
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    move-object v1, v0

    .line 304
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->isKilled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setKilled(Z)V

    .line 307
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    if-eqz v2, :cond_2

    const-string v2, "ApplicationFreeze"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    invoke-virtual {v2, p1}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->makeSureUnfreeze(I)V

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateManagedProcess(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 347
    const/4 v4, 0x0

    .line 348
    .local v4, "isUpdate":Z
    const/4 v3, 0x0

    .line 349
    .local v3, "isUpdataStep":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 351
    .local v5, "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v8, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    monitor-enter v8

    .line 352
    :try_start_0
    iget-object v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    iget v10, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 353
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-nez v2, :cond_3

    .line 354
    sget-boolean v9, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v9, :cond_0

    const-string v9, "ApplicationFreeze"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "manager new add "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    iget-object v10, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isDontFreezeWhenTCPConnect(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 356
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsInTCPWhiteList:Z

    .line 358
    :cond_1
    iget-object v9, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mManagedProcesses:Ljava/util/HashMap;

    iget v10, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const/4 v4, 0x1

    .line 370
    :cond_2
    :goto_1
    monitor-exit v8

    goto :goto_0

    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 361
    .restart local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v9

    invoke-virtual {v2, v9}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setAdj(I)Z

    move-result v3

    .line 362
    if-nez v4, :cond_4

    if-eqz v3, :cond_7

    :cond_4
    move v4, v7

    .line 363
    :goto_2
    sget-boolean v9, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v9, :cond_5

    if-eqz v3, :cond_5

    const-string v9, "ApplicationFreeze"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " change adj to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_5
    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v9

    invoke-virtual {v2, v9}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setReasonPid(I)Z

    move-result v3

    .line 366
    if-nez v4, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    move v4, v7

    .line 367
    :goto_3
    sget-boolean v9, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    const-string v9, "ApplicationFreeze"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " change reason pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    move v4, v6

    .line 362
    goto :goto_2

    :cond_8
    move v4, v6

    .line 366
    goto :goto_3

    .line 372
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v5    # "processInfo":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_9
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getQuitProcess(Ljava/util/HashMap;)Z

    move-result v3

    .line 373
    if-nez v4, :cond_a

    if-eqz v3, :cond_c

    :cond_a
    move v4, v7

    .line 374
    :goto_4
    if-eqz v4, :cond_b

    .line 375
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck()V

    .line 377
    :cond_b
    return-void

    :cond_c
    move v4, v6

    .line 373
    goto :goto_4
.end method

.method public updateNubiaData()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mDataManager:Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->loadData()V

    .line 344
    return-void
.end method
