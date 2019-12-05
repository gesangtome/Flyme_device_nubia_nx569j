.class public Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
.super Ljava/lang/Object;
.source "MultiFingerSwitchAppCtrl.java"


# static fields
.field private static final MAX_TASKS:I = 0x15


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mChangeBySwitch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppIndex:I

.field private mIsThreeFingerSlideEnable:Z

.field mLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedUpdate:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 26
    iput-boolean v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 179
    new-instance v1, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;-><init>(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 33
    iput-object p2, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, "launchFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mLaunchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.setupwizard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.applockmanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 95
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x1

    .line 71
    .local v0, "canBeAdd":Z
    invoke-direct {p0, p1}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    :cond_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 79
    :cond_1
    const-string v1, "cn.nubia.setupwizard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const/4 v0, 0x0

    .line 83
    :cond_2
    return v0
.end method

.method private getCurrentRuningApp()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 54
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 56
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 57
    .restart local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 58
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 59
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 64
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method private getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 166
    const/4 v2, -0x1

    .line 168
    .local v2, "instanceId":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 169
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 170
    if-lez v2, :cond_0

    .line 171
    const/4 v2, 0x1

    .line 176
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isHomeApplication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "bHome":Z
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 101
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 104
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0
.end method

.method private removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 142
    :cond_0
    const/4 v3, 0x0

    .line 162
    :cond_1
    return-object v3

    .line 144
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v3, "newTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 146
    .local v4, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v0, 0x0

    .line 147
    .local v0, "i":I
    invoke-direct {p0, v4}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v2

    .line 148
    .local v2, "instanceId":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_4

    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v5}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 158
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    .line 159
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private switchToNewApp(Z)V
    .locals 8
    .param p1, "bNext"    # Z

    .prologue
    const/4 v7, 0x1

    .line 239
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v4, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 241
    .local v1, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const v4, 0x10a006a

    const v5, 0x10a006d

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 261
    :goto_1
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_2

    .line 262
    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 272
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    goto :goto_0

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const v4, 0x10a0002

    const v5, 0x10a0003

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method private updateRecentAppSwitchList()V
    .locals 9

    .prologue
    .line 112
    iget-object v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v6, 0x15

    const/4 v7, 0x6

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 122
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 137
    :cond_1
    return-void

    .line 124
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 127
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v3, :cond_4

    .line 125
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_4
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 131
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 132
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method doSwitchApp(Z)V
    .locals 6
    .param p1, "bNext"    # Z

    .prologue
    const/4 v5, 0x0

    .line 196
    iget-boolean v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getCurrentRuningApp()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 202
    .local v0, "currentRunApp":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v0, :cond_0

    .line 204
    iget-boolean v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    if-eqz v3, :cond_2

    .line 205
    iput-boolean v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 206
    iput v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 207
    invoke-direct {p0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->updateRecentAppSwitchList()V

    .line 209
    :cond_2
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 217
    .local v1, "length":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 220
    if-nez p1, :cond_5

    .line 221
    iget v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_4

    .line 222
    iput v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 234
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->switchToNewApp(Z)V

    goto :goto_0

    .line 224
    :cond_4
    iget v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 227
    :cond_5
    iget v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    if-nez v3, :cond_6

    .line 228
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 230
    :cond_6
    iget v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    goto :goto_1
.end method

.method setEnable(Z)V
    .locals 1
    .param p1, "IsThreeFingerSlideEnable"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 46
    return-void
.end method
