.class public final Lnubia/smartkey/SmartConsumer;
.super Ljava/lang/Object;
.source "SmartConsumer.java"


# static fields
.field private static sInstance:Lnubia/smartkey/SmartConsumer;


# instance fields
.field private final mSmartKeyController:Lnubia/smartkey/SmartKeyController;

.field private mSmartLongPressed:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lnubia/smartkey/SmartKeyController;

    invoke-direct {v0, p1}, Lnubia/smartkey/SmartKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnubia/smartkey/SmartConsumer;->mSmartKeyController:Lnubia/smartkey/SmartKeyController;

    .line 14
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lnubia/smartkey/SmartConsumer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lnubia/smartkey/SmartConsumer;->sInstance:Lnubia/smartkey/SmartConsumer;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lnubia/smartkey/SmartConsumer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnubia/smartkey/SmartConsumer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnubia/smartkey/SmartConsumer;->sInstance:Lnubia/smartkey/SmartConsumer;

    .line 20
    :cond_0
    sget-object v0, Lnubia/smartkey/SmartConsumer;->sInstance:Lnubia/smartkey/SmartConsumer;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(II)Z
    .locals 3
    .param p1, "keycode"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 24
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_0

    .line 25
    iput-boolean v2, p0, Lnubia/smartkey/SmartConsumer;->mSmartLongPressed:Z

    .line 26
    iget-object v0, p0, Lnubia/smartkey/SmartConsumer;->mSmartKeyController:Lnubia/smartkey/SmartKeyController;

    sget-object v1, Lnubia/smartkey/PressType;->LONG:Lnubia/smartkey/PressType;

    invoke-virtual {v0, v1}, Lnubia/smartkey/SmartKeyController;->handleEvent(Lnubia/smartkey/PressType;)V

    .line 28
    :cond_0
    return v2
.end method

.method public onKeyUp(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-boolean v1, p0, Lnubia/smartkey/SmartConsumer;->mSmartLongPressed:Z

    if-eqz v1, :cond_0

    .line 33
    iput-boolean v0, p0, Lnubia/smartkey/SmartConsumer;->mSmartLongPressed:Z

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_0
    iget-object v0, p0, Lnubia/smartkey/SmartConsumer;->mSmartKeyController:Lnubia/smartkey/SmartKeyController;

    sget-object v1, Lnubia/smartkey/PressType;->SHORT:Lnubia/smartkey/PressType;

    invoke-virtual {v0, v1}, Lnubia/smartkey/SmartKeyController;->handleEvent(Lnubia/smartkey/PressType;)V

    .line 37
    const/4 v0, 0x1

    goto :goto_0
.end method
