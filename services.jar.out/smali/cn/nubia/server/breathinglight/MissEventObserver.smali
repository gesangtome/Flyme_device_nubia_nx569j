.class public Lcn/nubia/server/breathinglight/MissEventObserver;
.super Ljava/lang/Object;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;
    }
.end annotation


# static fields
.field private static final ACTION_NO_DISTURB_EVENING:Ljava/lang/String; = "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

.field private static final ACTION_NO_DISTURB_MORNING:Ljava/lang/String; = "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final ID:Ljava/lang/String; = "_ID"

.field private static final NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

.field private static final NOTIFICATION_SWITCH_FLAG:I = 0x9

.field private static final NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

.field private static final NO_DISTURB_EVENING_HOUR_OF_DAY:I = 0x16

.field private static final NO_DISTURB_EVENING_REQUESTCODE:I = 0x1

.field private static final NO_DISTURB_MORNING_HOUR_OF_DAY:I = 0x7

.field private static final NO_DISTURB_MORNING_REQUESTCODE:I = 0x0

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"

.field private static final TAG:Ljava/lang/String; = "MissEventObserver"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDataBaseObserver:Landroid/database/ContentObserver;

.field private mIsDoubleInstance:Z

.field private mIsNoDisturb:Z

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification:Landroid/app/INotificationManager;

.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

.field private mUsingMiddleLight:Z

.field private mWhiteAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "content://cn.nubia.providers.AppSettingsInfoProvider/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PKG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FLAG"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/app/INotificationManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p3, "settings"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p4, "notification"    # Landroid/app/INotificationManager;

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    .line 54
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 55
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsDoubleInstance:Z

    .line 69
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$1;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/breathinglight/MissEventObserver$2;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mDataBaseObserver:Landroid/database/ContentObserver;

    .line 311
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$3;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 114
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 116
    iput-object p3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 117
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 118
    invoke-static {}, Lcn/nubia/server/breathinglight/MissEventObserver;->isInDoubleInstanceMode()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsDoubleInstance:Z

    .line 120
    iput-object p4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    .line 122
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 131
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/MissEventObserver;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->getWhiteAppList()V

    return-void
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private cancelAlarm(Ljava/lang/String;I)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 202
    return-void
.end method

.method private cancelNoDisturb()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelAlarm(Ljava/lang/String;I)V

    .line 177
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelAlarm(Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method private getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "pkgName":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsDoubleInstance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->isCloneInstance(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const-string v1, ":nubia_clone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_0
    return-object v0
.end method

.method private static getSmartContext(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 371
    .local v1, "clonehelper":Ljava/lang/Object;
    :try_start_0
    const-string v4, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 372
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 373
    .local v3, "getInstance":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 377
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clonehelper":Ljava/lang/Object;
    .end local v3    # "getInstance":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 374
    .restart local v1    # "clonehelper":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWhiteAppList()V
    .locals 8

    .prologue
    .line 205
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    const/4 v6, 0x0

    .line 209
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    if-eqz v6, :cond_2

    .line 213
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "FLAG"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x9

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    const-string v1, "PKG_NAME"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MissEventObserver"

    const-string v1, "Query SQLite Exception!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 224
    :cond_2
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 295
    :cond_0
    return-void
.end method

.method private handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    return-void
.end method

.method private static isCloneInstance(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 381
    const/4 v3, 0x0

    .line 383
    .local v3, "isCloneInstance":Z
    :try_start_0
    const-string v4, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 384
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "isCloneInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 385
    .local v2, "getLabel":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 386
    invoke-static {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 391
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getLabel":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isInDoubleInstanceMode()Z
    .locals 5

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "isDoubleInstance":Z
    :try_start_0
    const-string v4, "com.cmx.cmplus.SmartContainerConfig"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 404
    .local v2, "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "WITH_OUT_ALL"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 405
    .local v3, "withoutMultiProcess":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 410
    .end local v2    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    .line 405
    .restart local v2    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    .end local v2    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isNoDisturb()Z
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 271
    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v4}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNoDisturbEnable()Z

    move-result v0

    .line 272
    .local v0, "isNoDisturbEnable":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x16

    if-lt v4, v5, :cond_1

    :cond_0
    move v1, v2

    .line 276
    .local v1, "isNoDisturbTime":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v2

    .end local v1    # "isNoDisturbTime":Z
    :cond_1
    move v1, v3

    .line 272
    goto :goto_0

    .restart local v1    # "isNoDisturbTime":Z
    :cond_2
    move v2, v3

    .line 276
    goto :goto_1
.end method

.method private isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x22

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerNoDisturbReceiver()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method private scheduleAlarm()V
    .locals 3

    .prologue
    .line 168
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    .line 170
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v1, 0x1

    const/16 v2, 0x16

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    .line 172
    return-void
.end method

.method private scheduleAlarm(Ljava/lang/String;II)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hourOfDay"    # I

    .prologue
    const/16 v4, 0xb

    const/4 v6, 0x0

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 183
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 184
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 185
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 186
    .local v1, "curHourOfDay":I
    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 187
    if-lt v1, p3, :cond_0

    .line 188
    const/16 v3, 0x18

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 191
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, p2, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 194
    .local v2, "sender":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 196
    return-void
.end method

.method private scheduleNoDisturb()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->registerNoDisturbReceiver()V

    .line 155
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm()V

    .line 156
    return-void
.end method


# virtual methods
.method public closeBreathingLight()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 259
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 261
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v0, "MissEventObserver"

    const-string v1, "closeBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "MissEventObserver"

    const-string v1, "closeBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleBootCompleted()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mDataBaseObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 138
    new-instance v0, Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Lcn/nubia/server/breathinglight/MissEventObserver$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->setNoDisturb()V

    .line 141
    return-void
.end method

.method public handleUserPresent()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 233
    return-void
.end method

.method public isUseingMiddleLight()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    return v0
.end method

.method public requestBreathingLight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 244
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 247
    const-string v0, "MissEventObserver"

    const-string v1, "requestBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 252
    const-string v0, "MissEventObserver"

    const-string v1, "requestBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNoDisturb()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNoDisturbEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 146
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleNoDisturb()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 149
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelNoDisturb()V

    goto :goto_0
.end method
