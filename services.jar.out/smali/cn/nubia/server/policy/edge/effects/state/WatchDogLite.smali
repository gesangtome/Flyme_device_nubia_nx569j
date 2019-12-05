.class public Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;
.super Ljava/lang/Object;
.source "WatchDogLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;
    }
.end annotation


# static fields
.field private static final CALLBACK_TIME_OUT:I = 0x10000


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private final mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$1;-><init>(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;
    .param p1, "x1"    # Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->timeOut(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;)V

    return-void
.end method

.method private timeOut(Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;)V
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we wait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->getTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " until time out, callback sent at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;->getCalltraceOfCaller()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "timeWaitingInMS"    # I
    .param p3, "calltraceOfCaller"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 34
    .local v0, "info":Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 35
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mHandler:Landroid/os/Handler;

    int-to-long v4, p2

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 37
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 47
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 48
    .local v2, "infoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;

    .line 49
    .local v1, "info":Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v1    # "info":Lcn/nubia/server/policy/edge/effects/state/WatchDogLite$CallbackInfo;
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 51
    return-void
.end method

.method public reached(Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    return-void
.end method
