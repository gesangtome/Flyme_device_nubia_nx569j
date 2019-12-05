.class public Lcn/nubia/server/appmgmt/SysStateProducer;
.super Ljava/lang/Object;
.source "SysStateProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;,
        Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SysStateProducer"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lnubia/os/ITaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mResumedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    .line 36
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/SysStateProducer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;
    .param p1, "x1"    # Lnubia/os/ITaskCallback;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/SysStateProducer;->notifyTopActivity(Lnubia/os/ITaskCallback;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/SysStateProducer;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/SysStateProducer;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/SysStateProducer;->callback(Landroid/os/Message;J)V

    return-void
.end method

.method private callback(Landroid/os/Message;J)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "flag"    # J

    .prologue
    .line 79
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 80
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 82
    :try_start_0
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 83
    .local v2, "flagObj":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 84
    .local v4, "flags":J
    iget-boolean v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v6, :cond_0

    .line 85
    const-string v6, "SysStateProducer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " callback   flags:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  flag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    and-long v6, v4, p2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 88
    iget-boolean v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v6, :cond_1

    .line 89
    const-string v6, "SysStateProducer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  -> callback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lnubia/os/ITaskCallback;

    invoke-interface {v6, p1}, Lnubia/os/ITaskCallback;->actionPerformed(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2    # "flagObj":Ljava/lang/Long;
    .end local v4    # "flags":J
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    iget-boolean v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v6, :cond_2

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 100
    return-void
.end method

.method private notifyTopActivity(Lnubia/os/ITaskCallback;Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/ITaskCallback;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    :try_start_0
    invoke-interface {p1, p2}, Lnubia/os/ITaskCallback;->actionPerformed(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 385
    const-string v6, "==========current top apps============="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resumed app count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 389
    .local v5, "stackId":I
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mResumedApps:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;

    .line 390
    .local v1, "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stackId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  activityName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v2, v2, 0x1

    .line 392
    goto :goto_0

    .line 393
    .end local v1    # "app":Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
    .end local v5    # "stackId":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 394
    iget-object v6, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 395
    .local v0, "N":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered Callback\'s Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  details:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 399
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 400
    return-void
.end method

.method public noteActivityStackRemoved(I)V
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 170
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity stack removed, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 124
    if-nez p3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "SysStateProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pausing activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "npar":Lcn/nubia/server/appmgmt/SysStateProducer$NotePauseingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    .line 163
    const-string v1, "SysStateProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process removed, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;)V

    .line 166
    .local v0, "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopAppRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "SysStateProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumed app die, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
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
    .line 112
    if-nez p3, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "SysStateProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "nrar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "SysStateProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process Starting, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hostingType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;ILjava/lang/String;)V

    .line 156
    .local v0, "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStartAppRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p3, :cond_0

    .line 146
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "SysStateProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;IILjava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v0, "nsar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteStopingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 6
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    .line 61
    .local v0, "flagObj":Ljava/lang/Long;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 62
    const-wide/16 v2, 0x1

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 63
    new-instance v1, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/SysStateProducer;Lnubia/os/ITaskCallback;)V

    .line 64
    .local v1, "ntar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .end local v0    # "flagObj":Ljava/lang/Long;
    .end local v1    # "ntar":Lcn/nubia/server/appmgmt/SysStateProducer$NoteTopActivityRunnable;
    :cond_0
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mDumpDebugLog:Z

    .line 76
    return-void
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/server/appmgmt/SysStateProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 72
    :cond_0
    return-void
.end method
