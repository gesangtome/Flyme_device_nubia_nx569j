.class public Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;
.super Ljava/lang/Object;
.source "RunnableSafeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBase:Ljava/lang/Runnable;

.field private final mGuarder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Runnable;
    .param p2, "guarder"    # Landroid/os/Handler;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mBase:Ljava/lang/Runnable;

    .line 15
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mGuarder:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 21
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mBase:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FitAnimCrash"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catched exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mGuarder:Landroid/os/Handler;

    const v3, 0x50001

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 25
    .local v1, "messgae":Landroid/os/Message;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/RunnableSafeWrapper;->mGuarder:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
