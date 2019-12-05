.class public Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
.super Ljava/lang/Object;
.source "SafeGuarder.java"


# static fields
.field public static final MSG_EXCEPTION:I = 0x50001


# instance fields
.field private final mGuardHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "guardHandler"    # Landroid/os/Handler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mGuardHandler:Landroid/os/Handler;

    .line 16
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mLooper:Landroid/os/Looper;

    .line 17
    return-void
.end method


# virtual methods
.method public buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 20
    new-instance v0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mGuardHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/HandlerSafeWrapper;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    new-instance v0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mGuardHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-object v0
.end method

.method public reportException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 28
    const-string v1, "FitAnimCrash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mGuardHandler:Landroid/os/Handler;

    const v2, 0x50001

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 30
    .local v0, "messgae":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->mGuardHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    return-void
.end method
