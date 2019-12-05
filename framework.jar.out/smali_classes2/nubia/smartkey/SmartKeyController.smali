.class public final Lnubia/smartkey/SmartKeyController;
.super Ljava/lang/Object;
.source "SmartKeyController.java"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mPendingPressTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/smartkey/PressType;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lnubia/smartkey/IController;

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/smartkey/SmartKeyController;->mPendingPressTypes:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lnubia/smartkey/SmartKeyController$1;

    invoke-direct {v0, p0}, Lnubia/smartkey/SmartKeyController$1;-><init>(Lnubia/smartkey/SmartKeyController;)V

    iput-object v0, p0, Lnubia/smartkey/SmartKeyController;->mConnection:Landroid/content/ServiceConnection;

    .line 20
    iput-object p1, p0, Lnubia/smartkey/SmartKeyController;->mApplicationContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Lnubia/smartkey/SmartKeyController;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnubia/smartkey/SmartKeyController;->mServiceIntent:Landroid/content/Intent;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lnubia/smartkey/SmartKeyController;)Lnubia/smartkey/IController;
    .locals 1
    .param p0, "x0"    # Lnubia/smartkey/SmartKeyController;

    .prologue
    .line 12
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;

    return-object v0
.end method

.method static synthetic access$002(Lnubia/smartkey/SmartKeyController;Lnubia/smartkey/IController;)Lnubia/smartkey/IController;
    .locals 0
    .param p0, "x0"    # Lnubia/smartkey/SmartKeyController;
    .param p1, "x1"    # Lnubia/smartkey/IController;

    .prologue
    .line 12
    iput-object p1, p0, Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;

    return-object p1
.end method

.method static synthetic access$100(Lnubia/smartkey/SmartKeyController;)V
    .locals 0
    .param p0, "x0"    # Lnubia/smartkey/SmartKeyController;

    .prologue
    .line 12
    invoke-direct {p0}, Lnubia/smartkey/SmartKeyController;->handlePendingPressType()V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lnubia/smartkey/SmartKeyController;->mServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lnubia/smartkey/SmartKeyController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    return-void
.end method

.method private static createServiceIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "cn.nubia.smartkey.ControllerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "cn.nubia.smartkey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method private handleEventInner(Lnubia/smartkey/PressType;)V
    .locals 3
    .param p1, "type"    # Lnubia/smartkey/PressType;

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;

    invoke-virtual {p1}, Lnubia/smartkey/PressType;->toValue()I

    move-result v2

    invoke-interface {v1, v2}, Lnubia/smartkey/IController;->handleEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handlePendingPressType()V
    .locals 3

    .prologue
    .line 64
    iget-object v2, p0, Lnubia/smartkey/SmartKeyController;->mPendingPressTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/smartkey/PressType;

    .line 65
    .local v1, "type":Lnubia/smartkey/PressType;
    invoke-direct {p0, v1}, Lnubia/smartkey/SmartKeyController;->handleEventInner(Lnubia/smartkey/PressType;)V

    goto :goto_0

    .line 67
    .end local v1    # "type":Lnubia/smartkey/PressType;
    :cond_0
    iget-object v2, p0, Lnubia/smartkey/SmartKeyController;->mPendingPressTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    return-void
.end method


# virtual methods
.method public handleEvent(Lnubia/smartkey/PressType;)V
    .locals 1
    .param p1, "type"    # Lnubia/smartkey/PressType;

    .prologue
    .line 25
    sget-boolean v0, Lnubia/smartkey/Utils;->sHasSmartKey:Z

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController;->mService:Lnubia/smartkey/IController;

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lnubia/smartkey/SmartKeyController;->mPendingPressTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-direct {p0}, Lnubia/smartkey/SmartKeyController;->bindService()V

    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0, p1}, Lnubia/smartkey/SmartKeyController;->handleEventInner(Lnubia/smartkey/PressType;)V

    goto :goto_0
.end method
