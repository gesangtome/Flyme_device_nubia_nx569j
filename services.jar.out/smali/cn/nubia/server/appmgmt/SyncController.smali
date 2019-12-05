.class public Lcn/nubia/server/appmgmt/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;,
        Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncController"


# instance fields
.field private mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;

.field private mScreenUnlock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    .line 24
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    .line 25
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    .line 28
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SyncController;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/SyncController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/SyncController$ScreenStateReceiver;

    .line 32
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;-><init>(Lcn/nubia/server/appmgmt/SyncController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mBatteryChangedReceiver:Lcn/nubia/server/appmgmt/SyncController$BatteryChangedReceiver;

    .line 33
    return-void

    :cond_1
    move v0, v1

    .line 18
    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/SyncController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/SyncController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/SyncController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SyncController;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    return p1
.end method


# virtual methods
.method public allowBackgroundSyncToRun()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isInternationalVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    if-eqz v1, :cond_2

    .line 45
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "SyncController"

    const-string v2, "screen unlocked: allow background sync to run"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    if-eqz v1, :cond_3

    .line 53
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "SyncController"

    const-string v2, "charging: allow background sync to run"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    if-eqz v0, :cond_4

    .line 61
    const-string v0, "SyncController"

    const-string v1, "disallow background sync to run"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 107
    const-string v0, "==========Sync controller=========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mScreenUnlock:Z

    if-eqz v0, :cond_0

    const-string v0, "screen is unlocked"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SyncController;->mCharging:Z

    if-eqz v0, :cond_1

    const-string v0, "battery is charing"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 111
    return-void

    .line 108
    :cond_0
    const-string v0, "screen is locked"

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "battery is not charing"

    goto :goto_1
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SyncController;->mDumpDebugLog:Z

    .line 37
    return-void
.end method
