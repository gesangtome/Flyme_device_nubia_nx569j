.class public Lcn/nubia/server/net/SwitchSimCautionUtils;
.super Ljava/lang/Object;
.source "SwitchSimCautionUtils.java"


# static fields
.field private static sInstance:Lcn/nubia/server/net/SwitchSimCautionUtils;


# instance fields
.field private mAnotherSubscription:I

.field private mCurrentSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/net/SwitchSimCautionUtils;->sInstance:Lcn/nubia/server/net/SwitchSimCautionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    .line 31
    iput v0, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    .line 44
    return-void
.end method

.method private currentTimeMillis(Landroid/util/TrustedTime;)J
    .locals 2
    .param p1, "time"    # Landroid/util/TrustedTime;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getAnotherSimCardSubscription()I
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcn/nubia/server/net/SwitchSimCautionUtils;->getCurrentSimCardSubscription()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    .line 86
    iget v0, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentSimCardSubscription()I
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    .line 91
    iget v0, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/server/net/SwitchSimCautionUtils;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcn/nubia/server/net/SwitchSimCautionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/server/net/SwitchSimCautionUtils;->sInstance:Lcn/nubia/server/net/SwitchSimCautionUtils;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/nubia/server/net/SwitchSimCautionUtils;

    invoke-direct {v0}, Lcn/nubia/server/net/SwitchSimCautionUtils;-><init>()V

    sput-object v0, Lcn/nubia/server/net/SwitchSimCautionUtils;->sInstance:Lcn/nubia/server/net/SwitchSimCautionUtils;

    .line 39
    :cond_0
    sget-object v0, Lcn/nubia/server/net/SwitchSimCautionUtils;->sInstance:Lcn/nubia/server/net/SwitchSimCautionUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJLandroid/net/INetworkStatsService;)J
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "networkStats"    # Landroid/net/INetworkStatsService;

    .prologue
    .line 124
    move-object v0, p6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 126
    :goto_0
    return-wide v0

    .line 125
    :catch_0
    move-exception v6

    .line 126
    .local v6, "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private isAntherSimCardOverWarning(Landroid/util/ArrayMap;Landroid/net/INetworkStatsService;Landroid/util/TrustedTime;)Z
    .locals 18
    .param p2, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p3, "time"    # Landroid/util/TrustedTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;",
            "Landroid/net/INetworkStatsService;",
            "Landroid/util/TrustedTime;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "networkPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcn/nubia/server/net/SwitchSimCautionUtils;->currentTimeMillis(Landroid/util/TrustedTime;)J

    move-result-wide v10

    .line 61
    .local v10, "currentTime":J
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/net/SwitchSimCautionUtils;->getAnotherSimCardSubscription()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    .line 62
    .local v14, "subId":[I
    const-string v15, "0"

    .line 63
    .local v15, "subscriberId":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v14, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v15

    .line 66
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkPolicy;

    .line 67
    .local v13, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 69
    .local v12, "isAnthoerCard":Z
    if-eqz v12, :cond_1

    .line 70
    invoke-virtual {v13}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {v10, v11, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 73
    .local v4, "start":J
    move-wide v6, v10

    .line 74
    .local v6, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcn/nubia/server/net/SwitchSimCautionUtils;->getTotalBytes(Landroid/net/NetworkTemplate;JJLandroid/net/INetworkStatsService;)J

    move-result-wide v16

    .line 75
    .local v16, "totalBytes":J
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v2, 0x1

    .line 77
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v12    # "isAnthoerCard":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "totalBytes":J
    :goto_0
    return v2

    .line 75
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v12    # "isAnthoerCard":Z
    .restart local v13    # "policy":Landroid/net/NetworkPolicy;
    .restart local v16    # "totalBytes":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v12    # "isAnthoerCard":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "totalBytes":J
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHasCdmaCard(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p1, "manager"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isMoreThanOneSim(Landroid/telephony/TelephonyManager;)Z
    .locals 3
    .param p1, "manager"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addSwitchIntentToBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/net/NetworkTemplate;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "template"    # Landroid/net/NetworkTemplate;
    .param p4, "body"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 116
    invoke-virtual {p0, p3}, Lcn/nubia/server/net/SwitchSimCautionUtils;->buildNetworkOverWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 119
    return-void
.end method

.method public buildNetworkOverWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverWarningActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    const-string v1, "currentSim"

    iget v2, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mCurrentSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v1, "anotherSim"

    iget v2, p0, Lcn/nubia/server/net/SwitchSimCautionUtils;->mAnotherSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method public isSwitchSimNeeded(Landroid/util/ArrayMap;Landroid/net/NetworkPolicy;Landroid/net/INetworkStatsService;Landroid/util/TrustedTime;)Z
    .locals 2
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "time"    # Landroid/util/TrustedTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;",
            "Landroid/net/NetworkPolicy;",
            "Landroid/net/INetworkStatsService;",
            "Landroid/util/TrustedTime;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "networkPolicy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 97
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/server/net/SwitchSimCautionUtils;->isMoreThanOneSim(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/server/net/SwitchSimCautionUtils;->isHasCdmaCard(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkPolicy;->getSwitchSimCaution()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcn/nubia/server/net/SwitchSimCautionUtils;->isAntherSimCardOverWarning(Landroid/util/ArrayMap;Landroid/net/INetworkStatsService;Landroid/util/TrustedTime;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
