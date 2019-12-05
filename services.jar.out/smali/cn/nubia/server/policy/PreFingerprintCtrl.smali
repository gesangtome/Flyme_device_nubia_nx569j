.class public Lcn/nubia/server/policy/PreFingerprintCtrl;
.super Ljava/lang/Object;
.source "PreFingerprintCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final HAS_DEALED:J = -0x7fffffffffffffffL

.field private static final TAG:Ljava/lang/String; = "PreFingerprintCtrl"


# instance fields
.field private mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.fingerprint.FingerprintEnrollFinish"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.fingerprint.FingerprintIdentifyActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.fingerprint.FingerprintEnrollIntroduction"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.fingerprint.FingerprintEnrollEnrolling"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/PreFingerprintCtrl;->mActivityBlackList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcn/nubia/server/policy/PreFingerprintCtrl;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v3, "fingerprint"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    .line 54
    .local v2, "service":Landroid/hardware/fingerprint/IFingerprintService;
    const-string v3, "PreFingerprintCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IFingerprintService: service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 61
    :goto_0
    return v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PreFingerprintCtrl"

    const-string v4, "Remote exception in hasEnrolledFingerprints: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCurrentBlackActivity()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/policy/PreFingerprintCtrl;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 68
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "className":Ljava/lang/String;
    const-string v3, "com.android.settings.fingerprint.FingerprintSettings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/server/policy/PreFingerprintCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/PreFingerprintCtrl;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "PreFingerprintCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasEnrolledFingerprints  not allowed homekey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 81
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "className":Ljava/lang/String;
    :goto_0
    return v3

    .line 74
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "className":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/PreFingerprintCtrl;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const-string v3, "PreFingerprintCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not allowed homekey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 76
    goto :goto_0

    .line 78
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v5

    .line 81
    goto :goto_0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 43
    .local v0, "keyCode":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/PreFingerprintCtrl;->isCurrentBlackActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method
