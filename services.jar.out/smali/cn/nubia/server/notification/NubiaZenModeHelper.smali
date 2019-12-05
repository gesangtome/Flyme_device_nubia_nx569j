.class public Lcn/nubia/server/notification/NubiaZenModeHelper;
.super Ljava/lang/Object;
.source "NubiaZenModeHelper.java"


# static fields
.field private static final LAST_DOWN_TIME:Ljava/lang/String; = "last_down_time"

.field private static final NONE_ZEN_MODE:Ljava/lang/String; = "audio_none_zen_mode"

.field private static final PRIORITY_ZEN_MODE:Ljava/lang/String; = "audio_priority_zen_mode"

.field private static final TAG:Ljava/lang/String; = "NubiaZenModeHelper"

.field private static final TIMING_ZEN_MODE:Ljava/lang/String; = "timing_zen_mode"


# instance fields
.field private final MAX_COUNT:I

.field private final MAX_TIME_DURATION:J

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mCurrentZenMode:I

.field private mDisableChanging:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsLastZenMode:Z

.field private mLastExitCondition:I

.field private mLastSilentExitCondition:I

.field private mLastZenMode:I

.field private mNumber:Ljava/lang/String;

.field private mNumber2IncomingTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->MAX_COUNT:I

    .line 38
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->MAX_TIME_DURATION:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mIsLastZenMode:Z

    .line 55
    iput-object p1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 58
    invoke-direct {p0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->initZenMode()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/notification/NubiaZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NubiaZenModeHelper;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/notification/NubiaZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NubiaZenModeHelper;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastZenMode:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/notification/NubiaZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NubiaZenModeHelper;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/notification/NubiaZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NubiaZenModeHelper;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastExitCondition:I

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/notification/NubiaZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NubiaZenModeHelper;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastSilentExitCondition:I

    return v0
.end method

.method private allowRestrickNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "allow":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 283
    .local v2, "currTime":J
    iget-object v4, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v4, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v1    # "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return v0

    .line 288
    :cond_0
    invoke-direct {p0, v2, v3, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->in5minites(JLjava/lang/String;)Z

    move-result v0

    .line 289
    invoke-direct {p0, v2, v3, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->updateTimesArray(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private clearRepeatCallsIncomingTimes(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 333
    iget-boolean v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mIsLastZenMode:Z

    if-eq v0, p1, :cond_0

    .line 334
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 335
    iput-boolean p1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mIsLastZenMode:Z

    .line 337
    :cond_0
    return-void
.end method

.method private in5minites(JLjava/lang/String;)Z
    .locals 15
    .param p1, "currentTime"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "allow":Z
    iget-object v9, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 297
    .local v8, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 298
    const-wide/16 v4, -0x1

    .line 299
    .local v4, "minTime":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 300
    .local v6, "time":J
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    .line 301
    move-wide v4, v6

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 306
    .end local v6    # "time":J
    :cond_1
    sub-long v10, p1, v4

    const-wide/32 v12, 0x493e0

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    const/4 v2, 0x1

    .line 308
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "minTime":J
    :cond_2
    :goto_1
    return v2

    .line 306
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "minTime":J
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initZenMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "last_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastZenMode:I

    .line 158
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "current_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    .line 160
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "last_exit_condition"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastExitCondition:I

    .line 162
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "last_silent_exit_condition"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastSilentExitCondition:I

    .line 164
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "audio_priority_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    .line 165
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "audio_none_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    .line 166
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_down_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 165
    goto :goto_1
.end method

.method private isAutoOrManual(I)I
    .locals 4
    .param p1, "zenMode"    # I

    .prologue
    .line 100
    iget-object v3, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 101
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 102
    const/4 v3, 0x1

    .line 109
    :goto_0
    return v3

    .line 104
    :cond_0
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 105
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v3, p1, :cond_1

    .line 106
    const/4 v3, 0x0

    goto :goto_0

    .line 109
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private updateTimesArray(JLjava/lang/String;)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 313
    .local v1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 314
    const-wide/16 v2, -0x1

    .line 315
    .local v2, "minTime":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 316
    .local v4, "time":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 317
    move-wide v2, v4

    goto :goto_0

    .line 318
    :cond_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 319
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "minTime":J
    .end local v4    # "time":J
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_4
    iget-object v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v6, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method


# virtual methods
.method public getIsNeedRinging()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->isNeedRinging()Z

    move-result v0

    return v0
.end method

.method public getLastDownTime()J
    .locals 2

    .prologue
    .line 216
    sget-wide v0, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    return-wide v0
.end method

.method public getLastExitCondition()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastExitCondition:I

    return v0
.end method

.method public getLastSilentExitCondition()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastSilentExitCondition:I

    return v0
.end method

.method public getLastZenMode()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastZenMode:I

    return v0
.end method

.method public getRepeatcomingCallsNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isIntercepted(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 239
    const-string v0, "priorityApp"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    const-string v0, "!priorityApp"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeedRinging()Z
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "needRinging":Z
    iget-object v1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->allowRestrickNumber(Ljava/lang/String;)Z

    move-result v0

    .line 277
    return v0
.end method

.method public saveLastExitCondition()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 114
    const-string v2, "0"

    const-string v3, "sys.boot_completed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->saveLastZenMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    if-ne v2, v1, :cond_2

    .line 118
    invoke-direct {p0, v1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->isAutoOrManual(I)I

    move-result v0

    .line 119
    .local v0, "lastExitCondition":I
    iget v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastExitCondition:I

    if-eq v2, v0, :cond_0

    .line 120
    iput v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastExitCondition:I

    .line 121
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/server/notification/NubiaZenModeHelper$2;

    invoke-direct {v3, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper$2;-><init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 129
    .end local v0    # "lastExitCondition":I
    :cond_2
    iget v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 130
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_3

    .line 131
    .local v1, "lastSilentExitCondition":I
    :goto_1
    iget v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastSilentExitCondition:I

    if-eq v2, v1, :cond_0

    .line 132
    iput v1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastSilentExitCondition:I

    .line 133
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/server/notification/NubiaZenModeHelper$3;

    invoke-direct {v3, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper$3;-><init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 130
    .end local v1    # "lastSilentExitCondition":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public saveLastZenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "changed":Z
    iget-boolean v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mDisableChanging:Z

    if-eqz v6, :cond_0

    move v1, v0

    .line 95
    .end local v0    # "changed":Z
    .local v1, "changed":I
    :goto_0
    return v1

    .line 64
    .end local v1    # "changed":I
    .restart local v0    # "changed":Z
    :cond_0
    iput-boolean v4, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mDisableChanging:Z

    .line 65
    iget-object v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "zen_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 67
    .local v3, "mode":I
    if-ne v3, v4, :cond_3

    move v2, v4

    .line 68
    .local v2, "isZenMode":Z
    :goto_1
    invoke-direct {p0, v2}, Lcn/nubia/server/notification/NubiaZenModeHelper;->clearRepeatCallsIncomingTimes(Z)V

    .line 69
    iget v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    if-eq v6, v3, :cond_2

    .line 70
    iget v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    iput v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastZenMode:I

    .line 71
    iput v3, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mCurrentZenMode:I

    .line 72
    iget-object v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v6, :cond_4

    move v6, v4

    :goto_2
    iput v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastSilentExitCondition:I

    .line 73
    iget-object v6, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcn/nubia/server/notification/NubiaZenModeHelper$1;

    invoke-direct {v7, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper$1;-><init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    if-ne v3, v4, :cond_5

    .line 88
    invoke-virtual {p0, v4}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setFlagForPriorityMode(Z)V

    .line 92
    :cond_1
    :goto_3
    const/4 v0, 0x1

    .line 94
    :cond_2
    iput-boolean v5, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mDisableChanging:Z

    move v1, v0

    .line 95
    .restart local v1    # "changed":I
    goto :goto_0

    .end local v1    # "changed":I
    .end local v2    # "isZenMode":Z
    :cond_3
    move v2, v5

    .line 67
    goto :goto_1

    .restart local v2    # "isZenMode":Z
    :cond_4
    move v6, v5

    .line 72
    goto :goto_2

    .line 89
    :cond_5
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 90
    invoke-virtual {p0, v4}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setFlagForSilentMode(Z)V

    goto :goto_3
.end method

.method public setAudioManager(Landroid/media/AudioManagerInternal;)V
    .locals 0
    .param p1, "audioManager"    # Landroid/media/AudioManagerInternal;

    .prologue
    .line 247
    iput-object p1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 248
    return-void
.end method

.method public setFlagForPriorityMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 181
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eq v0, p1, :cond_0

    .line 182
    sput-boolean p1, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    .line 183
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/notification/NubiaZenModeHelper$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper$6;-><init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public setFlagForSilentMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 170
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eq v0, p1, :cond_0

    .line 171
    sput-boolean p1, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    .line 172
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/notification/NubiaZenModeHelper$5;

    invoke-direct {v1, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper$5;-><init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public setLastDownTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 145
    sput-wide p1, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    .line 146
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/notification/NubiaZenModeHelper$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper$4;-><init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public setRepeatcomingCallsNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mNumber:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setRingerModeInternal(I)V
    .locals 6
    .param p1, "newRingerModeInternal"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 251
    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_1

    .line 252
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v1, "NubiaZenModeHelper"

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    if-eq p1, v3, :cond_0

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_last_ringer_volume"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 255
    .local v2, "value":I
    if-nez v2, :cond_2

    .line 256
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v1, "NubiaZenModeHelper"

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 260
    const-string v0, "ZenLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set ringer stream volume to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTimingZenMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v3, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "timing_zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 267
    .local v1, "value":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 268
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->timingZenMode:Z

    if-eq v1, v2, :cond_0

    .line 269
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->timingZenMode:Z

    .line 271
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "setConfig"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    .line 272
    return-void

    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v1    # "value":Z
    :cond_1
    move v1, v2

    .line 266
    goto :goto_0
.end method

.method public updateZenModeConditions(Landroid/service/notification/Condition;)V
    .locals 5
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 220
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, "mode":I
    if-nez v1, :cond_3

    .line 223
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 224
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    if-nez p1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 228
    :cond_1
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    .line 229
    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "updateConditions"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    .line 232
    :cond_2
    const/4 v2, 0x0

    const-string v3, "updateConditions"

    invoke-static {p1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 234
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_3
    return-void
.end method
