.class public Lcn/nubia/server/notification/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mContext:Landroid/content/Context;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationHelper;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 30
    iput-object p3, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 31
    return-void
.end method

.method private exitNoneZenMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->isAutomaticActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->setAutoZenMode()V

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_1
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 103
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "enterPriorityZenModeForever"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v1, 0x0

    const-string v2, "exitNoneZenMode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitPriorityZenMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 49
    sget-boolean v2, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "enterNoneZenMode"

    invoke-virtual {v2, v5, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-boolean v2, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 61
    .local v0, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 62
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const-string v4, "enterNoneZenModeTime"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "exitPriorityZenMode"

    invoke-virtual {v2, v6, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "time":J
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "exitPriorityZenMode"

    invoke-virtual {v2, v6, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAutomaticActive()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v4, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 114
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v3

    .line 115
    :cond_1
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 116
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setAutoZenMode()V
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 125
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 127
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 128
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "enterAutoZenMode"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public setNoneZenMode(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x2

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 77
    .local v0, "identity":J
    const-string v2, "shijian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNoneZenMode on is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v2, "shijian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mZenModeHelper.getZenMode() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 81
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    const-string v4, "setNoneZenMode"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenModeHelper()Lcn/nubia/server/notification/NubiaZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setFlagForSilentMode(Z)V

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return-void

    .line 84
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 86
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->exitNoneZenMode()V

    goto :goto_0
.end method

.method public setPriorityZenMode(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x1

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 35
    .local v0, "identity":J
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 37
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    const-string v4, "setPriorityZenMode"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenModeHelper()Lcn/nubia/server/notification/NubiaZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setFlagForPriorityMode(Z)V

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    return-void

    .line 40
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 42
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->exitPriorityZenMode()V

    goto :goto_0
.end method
