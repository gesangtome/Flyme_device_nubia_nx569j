.class Lcom/android/server/policy/FreeSnapshotCtrl;
.super Ljava/lang/Object;
.source "FreeSnapshotCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final FREE_SNAPSHOT:Ljava/lang/String; = "free_snapshot"

.field private static final FREE_SNAPSHOT_NOT_FIRST_START:Ljava/lang/String; = "free_snapshot_not_first_started"

.field private static final KEY_FIRST_START:Ljava/lang/String; = "first_start"

.field private static final KEY_IS_AT_HOME:Ljava/lang/String; = "isAtHome"

.field private static final TAG:Ljava/lang/String; = "FreeSnapshotCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFreeSnapshot:I

.field private mNotFirstStart:I

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 33
    iput-object p2, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private atHome(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/policy/FreeSnapshotCtrl;->getCurrentRunningAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/policy/FreeSnapshotCtrl;->getHomes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "homeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enable()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mFreeSnapshot:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentRunningAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 84
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 87
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v4, :cond_0

    .line 89
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v2    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 90
    .restart local v2    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 91
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 92
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 97
    .end local v4    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 98
    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 99
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 101
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-object v5
.end method

.method private getHomes(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 107
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v6, 0x10000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 112
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private sendFreesnapshotBroadcast(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 3
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "cn.nubia.aciton.freesnapshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "first_start"

    iget v2, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mNotFirstStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "isAtHome"

    iget-object v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/FreeSnapshotCtrl;->atHome(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object v1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method private sendMenuLongPressedEvent()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, v0}, Lcom/android/server/policy/FreeSnapshotCtrl;->sendFreesnapshotBroadcast(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 62
    return-void
.end method

.method private updateSnapshotSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, -0x2

    .line 118
    const-string v0, "free_snapshot"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mFreeSnapshot:I

    .line 120
    const-string v0, "free_snapshot_not_first_started"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mNotFirstStart:I

    .line 122
    return-void
.end method


# virtual methods
.method public doFreeSnapshot()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/FreeSnapshotCtrl;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/server/policy/FreeSnapshotCtrl;->sendMenuLongPressedEvent()V

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 39
    const-string v0, "free_snapshot"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 42
    const-string v0, "free_snapshot_not_first_started"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 45
    return-void
.end method

.method public updateSettings()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/policy/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/FreeSnapshotCtrl;->updateSnapshotSettings(Landroid/content/ContentResolver;)V

    .line 50
    return-void
.end method
