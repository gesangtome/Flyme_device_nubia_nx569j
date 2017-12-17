.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

.field private final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mEffectsSuppressed:Z

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field private mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

.field private mNumber:Ljava/lang/String;

.field private final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mUser:I

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 95
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 613
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    .line 105
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 107
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 108
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 115
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 121
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 123
    new-instance v0, Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p1, v1, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    .line 124
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 126
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/ZenModeHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/notification/ZenModeHelper;)Lcn/nubia/server/notification/NubiaZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method private appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 593
    :cond_0
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 594
    .local v0, "events":Landroid/service/notification/ZenModeConfig$EventInfo;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 595
    const/4 v2, 0x1

    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 596
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 597
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 598
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:string@zen_mode_default_events_name#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 599
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 600
    const/4 v2, 0x3

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 601
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 568
    :cond_0
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 574
    .local v1, "weekends":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 575
    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 576
    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 578
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 579
    .local v0, "rule2":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 580
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:string@zen_mode_default_weekends_name#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 582
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 585
    const/4 v2, 0x1

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 587
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 574
    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data
.end method

.method private applyRestrictions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 458
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_2

    move v2, v3

    .line 461
    .local v2, "zen":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 462
    .local v1, "muteNotifications":Z
    const/4 v5, 0x5

    invoke-direct {p0, v1, v5}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 465
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-eqz v5, :cond_3

    :cond_1
    move v0, v3

    .line 467
    .local v0, "muteCalls":Z
    :goto_1
    const/4 v3, 0x6

    invoke-direct {p0, v0, v3}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 474
    return-void

    .end local v0    # "muteCalls":Z
    .end local v1    # "muteNotifications":Z
    .end local v2    # "zen":Z
    :cond_2
    move v2, v4

    .line 458
    goto :goto_0

    .restart local v1    # "muteNotifications":Z
    .restart local v2    # "zen":Z
    :cond_3
    move v0, v4

    .line 465
    goto :goto_1
.end method

.method private applyRestrictions(ZI)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v4, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 484
    return-void

    :cond_0
    move v1, v3

    .line 478
    goto :goto_0

    :cond_1
    move v2, v3

    .line 481
    goto :goto_1
.end method

.method private applyZenToRingerMode()V
    .locals 3

    .prologue
    .line 487
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_0

    .line 515
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 490
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 491
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    .line 513
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v2, v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setRingerModeInternal(I)V

    goto :goto_0

    .line 494
    :pswitch_0
    if-eqz v1, :cond_1

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 496
    const/4 v0, 0x0

    goto :goto_1

    .line 501
    :pswitch_1
    if-nez v1, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v0

    .line 503
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    goto :goto_1

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private computeZenMode(Landroid/util/ArraySet;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "automaticRulesOut":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 454
    :cond_0
    :goto_0
    return v2

    .line 445
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_0

    .line 446
    :cond_2
    const/4 v2, 0x0

    .line 447
    .local v2, "zen":I
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 448
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 450
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_1
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 519
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_0

    .line 521
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .locals 3

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 525
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    goto :goto_0

    .line 527
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 531
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_0

    .line 533
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 289
    if-nez p3, :cond_1

    .line 290
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 305
    :cond_0
    return-void

    .line 293
    :cond_1
    const-string v2, "allow(calls=%s,callsFrom=%s,repeatCallers=%s,messages=%s,messagesFrom=%s,events=%s,reminders=%s)\n"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-boolean v5, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 298
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  manualRule="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 299
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 301
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v2, "  automaticRules="

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_2
    const-string v2, "                 "

    goto :goto_1
.end method

.method private evaluateZenMode(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z

    .prologue
    .line 421
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModeHelper"

    const-string v3, "evaluateZenMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 423
    .local v0, "automaticRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode(Landroid/util/ArraySet;)I

    move-result v1

    .line 424
    .local v1, "zen":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    .line 434
    :goto_0
    return v2

    .line 425
    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 426
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 427
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    .line 428
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 429
    if-eqz p2, :cond_2

    .line 430
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 432
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 433
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V
    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$H;->access$500(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 434
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 344
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreviousRingerModeSetting()I
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getZenModeSetting()I
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 536
    const/4 v2, 0x0

    .line 538
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, #android:xml@default_zen_mode_config#t

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 539
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 540
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 541
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 546
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 548
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v0

    .line 546
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 548
    :goto_1
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 367
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 368
    :cond_0
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid config in setConfig; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 398
    :cond_1
    :goto_0
    return v2

    .line 371
    :cond_2
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v3, v4, :cond_3

    .line 373
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfig: store config for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v3}, Lcn/nubia/server/notification/NubiaZenModeHelper;->saveLastExitCondition()V

    .line 380
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    .line 381
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v3}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfig reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v3, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 385
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    .line 387
    .local v0, "policyChanged":Z
    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 388
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 389
    if-eqz v0, :cond_6

    .line 390
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 392
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "val":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode_config_etag"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 395
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 397
    :cond_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    goto/16 :goto_0
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "setRingerMode"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 244
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v4, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setManualZenMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " conditionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setRingerMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 250
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_4

    .line 251
    iput-object v8, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 252
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 253
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    iput-boolean v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    goto :goto_1

    .line 258
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 259
    .local v3, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 260
    iput p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 261
    iput-object p2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 262
    iput-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 265
    .end local v3    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v4, :cond_6

    .line 266
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v4, v8}, Lcom/android/server/notification/ZenModeConditions;->setLastManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 269
    :cond_6
    invoke-direct {p0, v2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    goto/16 :goto_0
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode_ringer_level"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setReatCallsNumbers(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 928
    if-eqz p1, :cond_0

    .line 929
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "mmsNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setRepeatcomingCallsNumber(Ljava/lang/String;)V

    .line 933
    .end local v0    # "mmsNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setZenModeSetting(I)V
    .locals 2
    .param p1, "zen"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 441
    :cond_0
    return-void
.end method

.method private static zenSeverity(I)I
    .locals 1
    .param p0, "zen"    # I

    .prologue
    .line 605
    packed-switch p0, :pswitch_data_0

    .line 609
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 606
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 608
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mZenMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    const-string v2, "mDefaultConfig"

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 276
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 277
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConfigs[u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mUser="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 281
    const-string v2, "mConfig"

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 282
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mEffectsSuppressed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 283
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getLastExitCondition()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getLastExitCondition()I

    move-result v0

    return v0
.end method

.method public getLastSilentExitCondition()I
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getLastSilentExitCondition()I

    move-result v0

    return v0
.end method

.method public getLastZenMode()I
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getLastZenMode()I

    move-result v0

    return v0
.end method

.method public getLastZenModeHelper()Lcn/nubia/server/notification/NubiaZenModeHelper;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method public initZenMode()V
    .locals 2

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    const-string v0, "init"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    .line 179
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, "matchsCallFilter":Z
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->setReatCallsNumbers(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v9

    .line 148
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 149
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getIsNeedRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 150
    .local v8, "isRepeatCalls":Z
    :goto_0
    if-eqz v8, :cond_1

    const/4 v0, 0x1

    .line 156
    .end local v8    # "isRepeatCalls":Z
    :goto_1
    return v0

    .line 149
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 151
    .restart local v8    # "isRepeatCalls":Z
    :cond_1
    if-nez v9, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    const/4 v9, 0x1

    .line 152
    :goto_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 153
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering;->customizeMatches(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    goto :goto_1

    .line 151
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .end local v8    # "isRepeatCalls":Z
    :cond_4
    move v0, v9

    .line 156
    goto :goto_1
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 184
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0, v1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setAudioManager(Landroid/media/AudioManagerInternal;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$300(Lcom/android/server/notification/ZenModeHelper$H;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ZenModeHelper;->initFlymeDoNotDisturbHelper()V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    .line 207
    if-gez p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserRemoved u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 4
    .param p1, "user"    # I

    .prologue
    .line 194
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v1, p1, :cond_0

    if-gez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 196
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitched u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 198
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_4

    .line 199
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitched: generating default config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 201
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 203
    :cond_4
    const-string v1, "onUserSwitched"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 309
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    invoke-static {p1, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 310
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_0

    .line 311
    if-eqz p2, :cond_2

    .line 312
    iget v3, v1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eqz v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 316
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 319
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 320
    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_1

    .line 324
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ZenModeHelper"

    const-string v4, "readXml"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_3
    const-string v3, "readXml"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 221
    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    .line 222
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void

    :cond_1
    move-object v1, v2

    .line 223
    goto :goto_0
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->requestConditions(Landroid/service/notification/IConditionListener;I)V

    .line 214
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;->access$400(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public setEffectsSuppressed(Z)V
    .locals 1
    .param p1, "effectsSuppressed"    # Z

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-ne v0, p1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 231
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_0
.end method

.method public setLastDownTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setLastDownTime(J)V

    .line 921
    return-void
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 2
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 350
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 351
    const-string v1, "setNotificationPolicy"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setZenModeCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    .line 937
    if-eqz p1, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const-string v2, "setZenModeCondition"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 331
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 332
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 337
    :cond_1
    return-void
.end method

.method private initFlymeDoNotDisturbHelper()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method
