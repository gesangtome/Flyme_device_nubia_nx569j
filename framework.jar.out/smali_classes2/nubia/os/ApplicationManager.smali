.class public Lnubia/os/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ApplicationManager$Trigger;
    }
.end annotation


# static fields
.field public static final PERFORMANCE_LOCK_TYPE_APP_INSTALL:I = 0x6

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCHER_START_APP:I = 0x7

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_CROSS_PROCESS_ANIMATION:I = 0x4

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_EXISTING_PROCESS:I = 0x3

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_INNER_PROCESS_ANIMATION:I = 0x5

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_NEW_PROCESS:I = 0x2

.field public static final PERFORMANCE_LOCK_TYPE_APP_SPECIFIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static sDumpDebugLog:Z


# instance fields
.field private final mService:Lnubia/os/IApplicationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowFullWakeLockScreenOffImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$1400(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$1600(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$1700(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 14
    invoke-static {p0}, Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lnubia/os/IApplicationManager;II)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lnubia/os/IApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 14
    invoke-static/range {p0 .. p5}, Lnubia/os/ApplicationManager;->acquirePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$200(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lnubia/os/IApplicationManager;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->releasePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isInNoTransitionAnimImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 14
    invoke-static {p0}, Lnubia/os/ApplicationManager;->isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/IFreezeCallback;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->setFreezeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # [I
    .param p5, "x5"    # [I

    .prologue
    .line 14
    invoke-static/range {p0 .. p5}, Lnubia/os/ApplicationManager;->noteProcessStatusImpl(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$2600(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 14
    invoke-static {p0}, Lnubia/os/ApplicationManager;->noteProcessStatusChangedImpl(Lnubia/os/IApplicationManager;)V

    return-void
.end method

.method static synthetic access$2700(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteScreenStateChangedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$2800(Lnubia/os/IApplicationManager;III)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteWindowStateChangeImpl(Lnubia/os/IApplicationManager;III)V

    return-void
.end method

.method static synthetic access$2900(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessFrozenImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isDangerousWakeLockImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessRealFrozenImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isProcessFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lnubia/os/IApplicationManager;II)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isNotifyDisplayEventImpl(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lnubia/os/IApplicationManager;II)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->noteDisplayStateChangedImpl(Lnubia/os/IApplicationManager;II)V

    return-void
.end method

.method static synthetic access$3400(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static/range {p0 .. p6}, Lnubia/os/ApplicationManager;->isAllowedStartFrozenPackageImpl(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->unfreezeWhenKillImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$3600(Lnubia/os/IApplicationManager;I)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->isKillWhenFrozenImpl(Lnubia/os/IApplicationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 14
    invoke-static {p0}, Lnubia/os/ApplicationManager;->getForegroundPackageNameImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lnubia/os/IApplicationManager;ILjava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->setNetworkFirewallImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$3900(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteScreenStateImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method static synthetic access$400(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteActionMutexImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$4100(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->registerActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    return-void
.end method

.method static synthetic access$4200(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->unregisterActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    return-void
.end method

.method static synthetic access$4300(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->checkActionAllowedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->checkAllowedGetActionNameImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->getActionStateImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;
    .param p2, "x2"    # J

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V

    return-void
.end method

.method static synthetic access$700(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V

    return-void
.end method

.method static synthetic access$800(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 14
    invoke-static/range {p0 .. p5}, Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static acquirePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .prologue
    .line 360
    if-eqz p0, :cond_0

    .line 362
    :try_start_0
    invoke-interface/range {p0 .. p5}, Lnubia/os/IApplicationManager;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 333
    if-eqz p0, :cond_0

    .line 335
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->allowBackgroundSyncToRun()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    .line 192
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowFullWakeLockScreenOffImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    .line 139
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowFullWakeLockScreenOff(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p0, :cond_0

    .line 152
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowPartialWakelock(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowWakeupAlarm(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkActionAllowedImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 641
    if-eqz p0, :cond_0

    .line 643
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->checkActionAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 648
    :goto_0
    return v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkAllowedGetActionNameImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 653
    if-eqz p0, :cond_0

    .line 655
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 660
    :goto_0
    return-object v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getActionStateImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    .line 665
    if-eqz p0, :cond_0

    .line 667
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->getActionState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getForegroundPackageNameImpl(Lnubia/os/IApplicationManager;)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnubia/os/IApplicationManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    if-eqz p0, :cond_0

    .line 575
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getForegroundPackageName()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 581
    :goto_0
    return-object v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 578
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAllowedStartFrozenPackageImpl(Lnubia/os/IApplicationManager;IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "reqCode"    # I
    .param p2, "subCode"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "argStr1"    # Ljava/lang/String;
    .param p6, "argStr2"    # Ljava/lang/String;

    .prologue
    .line 538
    if-eqz p0, :cond_0

    .line 540
    :try_start_0
    invoke-interface/range {p0 .. p6}, Lnubia/os/IApplicationManager;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :goto_0
    return v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 543
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 381
    if-eqz p0, :cond_0

    .line 383
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isControlledByMotionDoze(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isDangerousWakeLockImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 126
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isInNoTransitionAnimImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    if-eqz p0, :cond_0

    .line 395
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isInNoTransitionAnim(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 402
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKillWhenFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .prologue
    .line 561
    if-eqz p0, :cond_0

    .line 563
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isKillWhenFrozen(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 569
    :goto_0
    return v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 566
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 406
    if-eqz p0, :cond_0

    .line 408
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->getNetAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 346
    if-eqz p0, :cond_0

    .line 348
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isNetworkBlocked(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 355
    :goto_0
    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isNotifyDisplayEventImpl(Lnubia/os/IApplicationManager;II)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .prologue
    .line 512
    if-eqz p0, :cond_0

    .line 514
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isNotifyDisplayEvent(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 520
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 517
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isProcessFrozenByUidImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I

    .prologue
    .line 500
    if-eqz p0, :cond_0

    .line 502
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessFrozenByUid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 508
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 505
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isProcessFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .prologue
    .line 476
    if-eqz p0, :cond_0

    .line 478
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessFrozen(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isProcessRealFrozenImpl(Lnubia/os/IApplicationManager;I)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .prologue
    .line 488
    if-eqz p0, :cond_0

    .line 490
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->isProcessRealFrozen(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static noteActionMutexImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z
    .param p4, "isSave"    # Z

    .prologue
    .line 608
    if-eqz p0, :cond_0

    .line 610
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "stackId"    # I

    .prologue
    .line 288
    if-eqz p0, :cond_0

    .line 290
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteActivityStackRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 293
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "execute"    # Z

    .prologue
    .line 311
    if-eqz p0, :cond_0

    .line 313
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteAppTransitionAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteDisplayStateChangedImpl(Lnubia/os/IApplicationManager;II)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .prologue
    .line 524
    if-eqz p0, :cond_0

    .line 526
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->noteDisplayStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteProcessStatusChangedImpl(Lnubia/os/IApplicationManager;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 441
    if-eqz p0, :cond_0

    .line 443
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->noteProcessStatusChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteProcessStatusImpl(Lnubia/os/IApplicationManager;[I[I[Ljava/lang/String;[I[I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # [I
    .param p2, "uid"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adj"    # [I
    .param p5, "reasonPid"    # [I

    .prologue
    .line 430
    if-eqz p0, :cond_0

    .line 432
    :try_start_0
    invoke-interface/range {p0 .. p5}, Lnubia/os/IApplicationManager;->noteProcessStatus([I[I[Ljava/lang/String;[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 435
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p0, :cond_0

    .line 302
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 227
    if-eqz p0, :cond_0

    .line 229
    :try_start_0
    invoke-interface/range {p0 .. p5}, Lnubia/os/IApplicationManager;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteScreenStateChangedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "state"    # I

    .prologue
    .line 453
    if-eqz p0, :cond_0

    .line 455
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteScreenStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteScreenStateImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "state"    # I

    .prologue
    .line 595
    if-eqz p0, :cond_0

    .line 597
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 600
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 264
    if-eqz p0, :cond_0

    .line 266
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "expanding"    # Z

    .prologue
    .line 322
    if-eqz p0, :cond_0

    .line 324
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteStatusBarExpanding(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 251
    if-eqz p0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteWindowStateChangeImpl(Lnubia/os/IApplicationManager;III)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .prologue
    .line 465
    if-eqz p0, :cond_0

    .line 467
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteWindowStateChange(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 470
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static registerActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 619
    if-eqz p0, :cond_0

    .line 621
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V
    .locals 4
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 205
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->registerCallback(Lnubia/os/ITaskCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static releasePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 371
    if-eqz p0, :cond_0

    .line 373
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->releasePerformanceLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setFreezeCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/IFreezeCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "callback"    # Lnubia/os/IFreezeCallback;

    .prologue
    .line 418
    if-eqz p0, :cond_0

    .line 420
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 423
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setNetworkFirewallImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;ZZ)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableMobile"    # Z
    .param p4, "enableWifi"    # Z

    .prologue
    .line 585
    if-eqz p0, :cond_0

    .line 587
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->setNetworkFirewall(ILjava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 590
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static unfreezeWhenKillImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "pid"    # I

    .prologue
    .line 550
    if-eqz p0, :cond_0

    .line 552
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->unfreezeWhenKill(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static unregisterActionMutexCallbackImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 630
    if-eqz p0, :cond_0

    .line 632
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->unregisterCallback(Lnubia/os/ITaskCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->acquirePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 108
    return-void
.end method

.method public allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowBackgroundSyncToRun()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 51
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public allowFullWakeLockScreenOff(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowFullWakeLockScreenOffImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNetAvailable()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->isNetAvailableImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->isDangerousWakeLockImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->isInNoTransitionAnimImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkBlocked(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method public noteActivityStackRemoved(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V

    .line 84
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    .line 92
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 1
    .param p1, "expanding"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V

    .line 96
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 2
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3}, Lnubia/os/ApplicationManager;->registerCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;J)V

    .line 56
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 111
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->releasePerformanceLockImpl(Lnubia/os/IApplicationManager;Landroid/os/IBinder;)V

    .line 112
    return-void
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 59
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->unregisterCallbackImpl(Lnubia/os/IApplicationManager;Lnubia/os/ITaskCallback;)V

    .line 60
    return-void
.end method
