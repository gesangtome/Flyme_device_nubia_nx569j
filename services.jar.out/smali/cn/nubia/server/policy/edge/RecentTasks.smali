.class public Lcn/nubia/server/policy/edge/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# static fields
.field private static final ACTIVITY_STACK_CHANGED:Ljava/lang/String; = "android.intent.action.ACTIVITY_STACK_CHANGED"

.field private static final MAX_TASKS:I = 0x15

.field private static final SWITCH_APP_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecentsTask"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityStackReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeBySwitch:Z

.field private mChangeTaskBySwitch:Z

.field private mContext:Landroid/content/Context;

.field private mNeedUpdate:Z

.field private mObject:Ljava/lang/Object;

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

.field private mTargetAppIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mObject:Ljava/lang/Object;

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    .line 46
    new-instance v1, Lcn/nubia/server/policy/edge/RecentTasks$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/RecentTasks$1;-><init>(Lcn/nubia/server/policy/edge/RecentTasks;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mContext:Landroid/content/Context;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    .line 39
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/RecentTasks;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/RecentTasks;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/policy/edge/RecentTasks;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/RecentTasks;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/server/policy/edge/RecentTasks;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/RecentTasks;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.splitscreen.home"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 164
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private checkCurrentComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 7
    .param p1, "recentInfo"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 132
    .local v1, "currentComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    iget-object v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v6, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "cn.nubia.applockmanager"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "exclude":Z
    iget-object v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    .line 140
    iget-object v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 148
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 149
    const-string v4, "RecentsTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exclude, recent task\'s first component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v4, -0x1

    iput v4, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    goto :goto_0

    :cond_3
    move v2, v5

    .line 140
    goto :goto_1

    .line 143
    :cond_4
    iget-object v6, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 144
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_2
.end method

.method private getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 117
    const/4 v2, -0x1

    .line 119
    .local v2, "instanceId":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 120
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    if-lez v2, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 127
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getRecentAppSwitchList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v6, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v7, 0x15

    const/4 v8, 0x6

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 242
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 257
    :cond_0
    return-object v5

    .line 244
    :cond_1
    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/RecentTasks;->removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 246
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 247
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v3, :cond_3

    .line 245
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_3
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_2

    .line 251
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 252
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
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
    .line 92
    .local p1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 93
    :cond_0
    const/4 v3, 0x0

    .line 113
    :cond_1
    return-object v3

    .line 95
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
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

    .line 97
    .local v4, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v0, 0x0

    .line 98
    .local v0, "i":I
    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/RecentTasks;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v2

    .line 99
    .local v2, "instanceId":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_4

    .line 100
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

    invoke-direct {p0, v5}, Lcn/nubia/server/policy/edge/RecentTasks;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 109
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    .line 110
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateRecentAppSwitchList()V
    .locals 9

    .prologue
    .line 60
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 61
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 64
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v6, 0x15

    const/4 v7, 0x6

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 70
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 88
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/RecentTasks;->removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 74
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 75
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v3, :cond_4

    .line 73
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_4
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 79
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 80
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 82
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/RecentTasks;->checkCurrentComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 84
    :cond_5
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateRecentTasks()V
    .locals 7

    .prologue
    .line 261
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->getRecentAppSwitchList()Ljava/util/List;

    move-result-object v3

    .line 262
    .local v3, "newTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 283
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 264
    .local v2, "newTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 265
    .local v4, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v4, :cond_3

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

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

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    if-ne v5, v6, :cond_3

    .line 277
    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iput v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 278
    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 279
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 172
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 173
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 174
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 177
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method public getRecentTaskList(Z)Ljava/util/List;
    .locals 4
    .param p1, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 206
    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    .line 220
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const-string v0, "RecentsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentTasks mNeedUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChangeBySwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    if-eqz v0, :cond_2

    .line 212
    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    .line 213
    iput v3, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    .line 214
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->updateRecentAppSwitchList()V

    .line 215
    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    .line 220
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    goto :goto_0

    .line 216
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    if-eqz v0, :cond_1

    .line 217
    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    .line 218
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->updateRecentTasks()V

    goto :goto_1
.end method

.method public getRecentTaskNum()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x3

    return v0
.end method

.method public getTargetAppIndex()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    return v0
.end method

.method public isHomeApplication(Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v5

    .line 183
    :cond_1
    iget-object v6, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 184
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    const-string v5, "RecentsTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHomeApplication, component is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isRecentTaksActivity(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.android.systemui.recentsview.nubiauiv3.RecentsActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTargetAppIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 224
    iput p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    .line 225
    return-void
.end method

.method public updateRecentTasksFlag(Z)V
    .locals 0
    .param p1, "changeBySwitch"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    .line 287
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z

    .line 288
    return-void
.end method
