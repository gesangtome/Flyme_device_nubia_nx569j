.class Lcn/nubia/server/appmgmt/freezer/AllProcessList;
.super Ljava/lang/Object;
.source "AllProcessList.java"


# instance fields
.field private mAdjs:[I

.field private mAllProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mHandler:Landroid/os/Handler;

.field private mPackageNames:[Ljava/lang/String;

.field private mPids:[I

.field private mReasonPids:[I

.field private mUids:[I

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    .line 32
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;-><init>(Lcn/nubia/server/appmgmt/freezer/AllProcessList;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/AllProcessList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->doUpdate()V

    return-void
.end method

.method private doUpdate()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->resetAllProcess()V

    .line 79
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->updateManagedProcess()V

    .line 80
    return-void
.end method

.method private isAllowFreeze(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/FreezeDataManager;->isAllowFreeze(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized resetAllProcess()V
    .locals 5

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 57
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 58
    new-instance v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUids:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPackageNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;-><init>(IILjava/lang/String;)V

    .line 59
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAdjs:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setAdj(I)Z

    .line 60
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mReasonPids:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->setReasonPid(I)Z

    .line 61
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private scheduleUpdate()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method

.method private updateManagedProcess()V
    .locals 5

    .prologue
    .line 67
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "managedProcess":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAllProcess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 70
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->isAllowFreeze(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    iget v4, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->updateManagedProcess(Ljava/util/HashMap;)V

    .line 75
    return-void
.end method


# virtual methods
.method declared-synchronized updateProcess([I[I[Ljava/lang/String;[I[I)V
    .locals 1
    .param p1, "pids"    # [I
    .param p2, "uids"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adjs"    # [I
    .param p5, "reasonPids"    # [I

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPids:[I

    .line 42
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mUids:[I

    .line 43
    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mPackageNames:[Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mAdjs:[I

    .line 45
    iput-object p5, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->mReasonPids:[I

    .line 46
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->scheduleUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
