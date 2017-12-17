.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Item;,
        Landroid/app/NotificationManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_EFFECTS_SUPPRESSOR_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

.field public static final ACTION_INTERRUPTION_FILTER_CHANGED:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED"

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field private static final CHECK_INTERVAL:I = 0x1f4

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field private static final MAX_NOTIFICATIONS:I = 0x2e

.field private static final MSG_TIMED_CHECK:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field private mActivingNotis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationManager$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNewNotis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationManager$Item;",
            ">;"
        }
    .end annotation
.end field

.field mNotiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "NotificationManager"

    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager;->mNewNotis:Ljava/util/HashMap;

    .line 866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    .line 185
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 187
    invoke-direct {p0}, Landroid/app/NotificationManager;->initHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method static synthetic access$000(Landroid/app/NotificationManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/NotificationManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/app/NotificationManager;->handleCheck(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized cancelAllDelayed()V
    .locals 2

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v0, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 916
    iget-object v0, p0, Landroid/app/NotificationManager;->mNewNotis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    monitor-exit p0

    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cancelDelayed(Ljava/lang/String;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 904
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/app/NotificationManager$Item;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "key":Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelDelayed romve key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager$Item;

    .line 907
    .local v0, "item":Landroid/app/NotificationManager$Item;
    if-eqz v0, :cond_1

    .line 908
    iget-object v2, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 910
    :cond_1
    iget-object v2, p0, Landroid/app/NotificationManager;->mNewNotis:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    monitor-exit p0

    return-void

    .line 904
    .end local v0    # "item":Landroid/app/NotificationManager$Item;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    return-void
.end method

.method private declared-synchronized delayNotify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/app/NotificationManager;->overMax()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 901
    :goto_0
    monitor-exit p0

    return-void

    .line 888
    :cond_0
    :try_start_1
    new-instance v1, Landroid/app/NotificationManager$Item;

    invoke-direct {v1, p2, p1, p3}, Landroid/app/NotificationManager$Item;-><init>(ILjava/lang/String;Landroid/app/Notification;)V

    .line 889
    .local v1, "item":Landroid/app/NotificationManager$Item;
    sget-boolean v4, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v4, :cond_1

    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delayNotify, item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_1
    invoke-virtual {v1}, Landroid/app/NotificationManager$Item;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager$Item;

    .line 892
    .local v0, "activingItem":Landroid/app/NotificationManager$Item;
    sget-boolean v4, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v4, :cond_2

    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delayNotify, activingItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_2
    if-nez v0, :cond_3

    .line 894
    iget-object v4, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v4, v1, Landroid/app/NotificationManager$Item;->tag:Ljava/lang/String;

    iget v5, v1, Landroid/app/NotificationManager$Item;->id:I

    iget-object v6, v1, Landroid/app/NotificationManager$Item;->notification:Landroid/app/Notification;

    invoke-direct {p0, v4, v5, v6}, Landroid/app/NotificationManager;->handleNotify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 896
    iget-object v4, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 897
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 886
    .end local v0    # "activingItem":Landroid/app/NotificationManager$Item;
    .end local v1    # "item":Landroid/app/NotificationManager$Item;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 899
    .restart local v0    # "activingItem":Landroid/app/NotificationManager$Item;
    .restart local v1    # "item":Landroid/app/NotificationManager$Item;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v4, p0, Landroid/app/NotificationManager;->mNewNotis:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 298
    iget v0, p1, Landroid/app/Notification;->icon:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 300
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static getService()Landroid/app/INotificationManager;
    .locals 2

    .prologue
    .line 175
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 180
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 178
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 179
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 180
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method private declared-synchronized handleCheck(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager$Item;

    .line 851
    .local v0, "activingItem":Landroid/app/NotificationManager$Item;
    sget-boolean v4, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCheck, activingItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationManager$Item;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/NotificationManager;->mNewNotis:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager$Item;

    .line 854
    .local v3, "newItem":Landroid/app/NotificationManager$Item;
    sget-boolean v4, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v4, :cond_1

    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCheck, newItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_1
    if-nez v3, :cond_2

    .line 856
    iget-object v4, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :goto_0
    monitor-exit p0

    return-void

    .line 858
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v4, v3, Landroid/app/NotificationManager$Item;->tag:Ljava/lang/String;

    iget v5, v3, Landroid/app/NotificationManager$Item;->id:I

    iget-object v6, v3, Landroid/app/NotificationManager$Item;->notification:Landroid/app/Notification;

    invoke-direct {p0, v4, v5, v6}, Landroid/app/NotificationManager;->handleNotify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 860
    iget-object v4, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 861
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Landroid/app/NotificationManager;->mNotiHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 850
    .end local v0    # "activingItem":Landroid/app/NotificationManager$Item;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "newItem":Landroid/app/NotificationManager$Item;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private handleNotify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 239
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 240
    .local v6, "idOut":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 241
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 244
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v3, "Notification.sound"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 248
    :cond_0
    invoke-direct {p0, p3, v1}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_1

    .line 250
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_1

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid notification (no valid small icon): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_1
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    invoke-virtual {p3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v5

    .line 257
    .local v5, "stripped":Landroid/app/Notification;
    invoke-static {v5}, Landroid/app/Notification$Builder;->stripForDelivery(Landroid/app/Notification;)V

    .line 259
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 261
    const/4 v2, 0x0

    aget v2, v6, v2

    if-eq p2, v2, :cond_3

    .line 262
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify: id corrupted: sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_3
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 839
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotiManThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 841
    new-instance v1, Landroid/app/NotificationManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/app/NotificationManager$1;-><init>(Landroid/app/NotificationManager;Landroid/os/Looper;)V

    return-object v1
.end method

.method private isNubiaApp()Z
    .locals 2

    .prologue
    .line 874
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "cn.nubia."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemApp()Z
    .locals 2

    .prologue
    .line 869
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 870
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needDelay()Z
    .locals 1

    .prologue
    .line 920
    invoke-direct {p0}, Landroid/app/NotificationManager;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/NotificationManager;->isNubiaApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overMax()Z
    .locals 3

    .prologue
    .line 879
    iget-object v1, p0, Landroid/app/NotificationManager;->mActivingNotis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mNewNotis:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x2e

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 880
    .local v0, "over":Z
    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v2, "Package has already posted 46 notifications. Not showing more."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    return v0

    .line 879
    .end local v0    # "over":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zenModeFromInterruptionFilter(II)I
    .locals 0
    .param p0, "interruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 822
    packed-switch p0, :pswitch_data_0

    .line 827
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 823
    .restart local p1    # "defValue":I
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 824
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 825
    :pswitch_2
    const/4 p1, 0x3

    goto :goto_0

    .line 826
    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    .line 822
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static zenModeToInterruptionFilter(I)I
    .locals 1
    .param p0, "zen"    # I

    .prologue
    .line 811
    packed-switch p0, :pswitch_data_0

    .line 816
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 812
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 813
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 814
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 815
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 319
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 320
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/NotificationManager;->needDelay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager;->cancelDelayed(Ljava/lang/String;I)V

    .line 326
    :cond_0
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 354
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/NotificationManager;->needDelay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-direct {p0}, Landroid/app/NotificationManager;->cancelAllDelayed()V

    .line 360
    :cond_0
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancelAll()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 338
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 339
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "pkg":Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 7

    .prologue
    .line 751
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 752
    .local v4, "service":Landroid/app/INotificationManager;
    iget-object v5, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v3, v5}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 756
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 757
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :goto_0
    return-object v5

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v6, "Unable to talk to notification manager. Woe!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 4

    .prologue
    .line 778
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 780
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 784
    :goto_0
    return v2

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to talk to notification manager. Woe!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 371
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 373
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    :goto_0
    return-object v2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 538
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    :goto_0
    return-object v1

    .line 539
    :catch_0
    move-exception v1

    .line 541
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 575
    .local v3, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v3}, Landroid/app/INotificationManager;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 577
    new-instance v2, Landroid/util/ArraySet;

    array-length v4, v1

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 578
    .local v2, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 579
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "i":I
    .end local v1    # "pkgs":[Ljava/lang/String;
    .end local v2    # "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 585
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :cond_1
    return-object v2
.end method

.method public getZenMode()I
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 443
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v1

    .line 446
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .prologue
    .line 453
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 455
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 456
    :catch_0
    move-exception v1

    .line 458
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNotificationPolicyAccessGranted()Z
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 512
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 515
    :goto_0
    return v1

    .line 513
    :catch_0
    move-exception v1

    .line 515
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 522
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    :goto_0
    return v1

    .line 523
    :catch_0
    move-exception v1

    .line 525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 397
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 399
    :goto_0
    return v2

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 383
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 385
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 387
    :goto_0
    return v2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 209
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/app/NotificationManager;->needDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/app/NotificationManager;->delayNotify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/NotificationManager;->handleNotify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 273
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 274
    .local v6, "idOut":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 275
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 278
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v3, "Notification.sound"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-direct {p0, p3, v1}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    .line 283
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    invoke-virtual {p3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v5

    .line 285
    .local v5, "stripped":Landroid/app/Notification;
    invoke-static {v5}, Landroid/app/Notification$Builder;->stripForDelivery(Landroid/app/Notification;)V

    .line 287
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 289
    const/4 v2, 0x0

    aget v2, v6, v2

    if-eq p2, v2, :cond_2

    .line 290
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify: id corrupted: sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_2
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 430
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 432
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setInterruptionFilter(I)V
    .locals 4
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 801
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 803
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to talk to notification manager. Woe!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNoneZenMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 477
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 479
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setNoneZenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 2
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    .line 554
    const-string/jumbo v1, "policy"

    invoke-static {v1, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 557
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 564
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 566
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setPriorityZenMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 466
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 468
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setPriorityZenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 409
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setZenModeCondition(Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 487
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 489
    .local v0, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 420
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 422
    :goto_0
    return v2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method
