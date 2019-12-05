.class public Landroid/app/NubiaSysState;
.super Ljava/lang/Object;
.source "NubiaSysState.java"


# static fields
.field public static final CALLBACK_PARAM_ACTIVITY:Ljava/lang/String; = "activityName"

.field public static final CALLBACK_PARAM_COUNT:Ljava/lang/String; = "count"

.field public static final CALLBACK_PARAM_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final CALLBACK_PARAM_STACKID:Ljava/lang/String; = "stackId"

.field public static final CALLBACK_PARAM_UID:Ljava/lang/String; = "uid"

.field public static final FLAG_STATE_ACTIVITY_PAUSE:J = 0x4L

.field public static final FLAG_STATE_ACTIVITY_RESUME:J = 0x2L

.field public static final FLAG_STATE_ACTIVITY_STOP:J = 0x8L

.field public static final FLAG_STATE_ACTIVITY_TOP:J = 0x1L

.field public static final FLAG_STATE_ALL:J = 0x7fffffffffffffffL

.field public static final FLAG_STATE_APP_START:J = 0x10L

.field public static final FLAG_STATE_APP_STOP:J = 0x20L

.field public static final SYS_STATE_ACTIVITY_PAUSE:I = 0x7d2

.field public static final SYS_STATE_ACTIVITY_RESUME:I = 0x7d1

.field public static final SYS_STATE_ACTIVITY_STOP:I = 0x7d3

.field public static final SYS_STATE_ACTIVITY_TOP:I = 0x7d0

.field public static final SYS_STATE_APP_START:I = 0x834

.field public static final SYS_STATE_APP_STOP:I = 0x835

.field private static final TAG:Ljava/lang/String; = "NubiaSysState"


# instance fields
.field private mCallback:Lnubia/os/ITaskCallback;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/app/SysStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/app/NubiaSysState$3;

    invoke-direct {v0, p0}, Landroid/app/NubiaSysState$3;-><init>(Landroid/app/NubiaSysState;)V

    iput-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/app/NubiaSysState;)Landroid/app/SysStateReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/app/NubiaSysState;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/NubiaSysState;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/NubiaSysState;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/app/NubiaSysState$1;

    invoke-direct {v0, p0}, Landroid/app/NubiaSysState$1;-><init>(Landroid/app/NubiaSysState;)V

    iput-object v0, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private createReceiver()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/app/NubiaSysState$2;

    invoke-direct {v0, p0}, Landroid/app/NubiaSysState$2;-><init>(Landroid/app/NubiaSysState;)V

    iput-object v0, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/app/SysStateReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/app/SysStateReceiver;

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/NubiaSysState;->createHandler()V

    .line 86
    iput-object p1, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    .line 87
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 88
    return-void
.end method

.method public registerReceiver(Landroid/app/SysStateReceiver;J)V
    .locals 2
    .param p1, "receiver"    # Landroid/app/SysStateReceiver;
    .param p2, "flag"    # J

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/NubiaSysState;->createHandler()V

    .line 92
    iput-object p1, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    .line 93
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v0, p2, p3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 94
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/app/NubiaSysState;->mHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 82
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NubiaSysState;->mReceiver:Landroid/app/SysStateReceiver;

    .line 98
    iget-object v0, p0, Landroid/app/NubiaSysState;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 99
    return-void
.end method
