.class public Lcn/nubia/server/policy/smartface/util/PowerCtrl;
.super Ljava/lang/Object;
.source "PowerCtrl.java"


# static fields
.field private static volatile sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;


# instance fields
.field private mPowerManager:Landroid/os/PowerManager;

.field private mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x10000006

    const-string v2, "show smartface"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->sInstance:Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public goToSleep()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 42
    const-class v1, Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 44
    monitor-exit v1

    .line 46
    :cond_0
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public turnOnScreen()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mShowSmartfaceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 61
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 38
    :cond_0
    return-void
.end method
