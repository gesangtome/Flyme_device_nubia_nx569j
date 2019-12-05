.class public Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;
.super Ljava/lang/Object;
.source "SystemGestureServiceImpl.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealService:Lcn/nubia/server/policy/edge/CommunalService;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mAm:Landroid/app/ActivityManager;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRecentAppSwitchList:Ljava/util/List;

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->init()V

    .line 40
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 41
    return-void
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSplitScreenHome(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 81
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSelfApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 44
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, "recents":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_2

    .line 48
    const-string v4, "zxj"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemGestureCtrl recents size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 50
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 51
    .local v2, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 53
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const-string v4, "zxj"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemGestureCtrl add size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private isHomeApplication(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "bHome":Z
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
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

    .line 102
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0
.end method

.method private isSelfApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.FitDNA"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSetupWizardApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.setupwizard"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSplitScreenHome(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.splitscreen.home"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemUIApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nofityLoadCurrentScreen(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 196
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;-><init>(Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 220
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method


# virtual methods
.method public getCurrentAppIndex()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentAppIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentScreenBitmap(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 1
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .prologue
    .line 185
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 187
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getScreenShot(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V

    .line 189
    return-void
.end method

.method public getNextAppIndex(Z)I
    .locals 1
    .param p1, "isUp"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextAppIndex(Z)I

    move-result v0

    return v0
.end method

.method public getNextStartComponentName(II)Landroid/content/ComponentName;
    .locals 1
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/CommunalService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTaskList()Ljava/util/List;
    .locals 1
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
    .line 137
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSingleSlideFuns(I)I
    .locals 1
    .param p1, "leftOrRight"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getSingleSlideFuns(I)I

    move-result v0

    return v0
.end method

.method public isHomeApplication()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->isHomeApplication()Z

    move-result v0

    return v0
.end method

.method public isInnerGestureOpen()Z
    .locals 2

    .prologue
    const/16 v1, 0x5000

    .line 173
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isGestureEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleGestureOpen()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isGestureEnable(I)Z

    move-result v0

    return v0
.end method
