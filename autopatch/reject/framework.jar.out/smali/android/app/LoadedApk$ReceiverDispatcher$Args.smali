.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private final mOrdered:Z

.field final synthetic this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I

    .prologue
    .line 867
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 868
    iget-boolean v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-object v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v1}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v10

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    .line 871
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 872
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 873
    return-void

    .line 868
    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 876
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 877
    .local v9, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 887
    .local v8, "ordered":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 888
    .local v5, "mgr":Landroid/app/IActivityManager;
    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 889
    .local v4, "intent":Landroid/content/Intent;
    const/4 v12, 0x0

    iput-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 891
    if-eqz v9, :cond_0

    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v12, :cond_2

    .line 892
    :cond_0
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v12, :cond_1

    if-eqz v8, :cond_1

    .line 895
    invoke-virtual {p0, v5}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 900
    :cond_2
    const-wide/16 v12, 0x40

    const-string v14, "broadcastReceiveReg"

    invoke-static {v12, v13, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 902
    :try_start_0
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 903
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 904
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 905
    invoke-virtual {v9, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 909
    .local v10, "start":J
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 912
    .local v6, "now":J
    sub-long v2, v6, v10

    .line 913
    .local v2, "delay":J
    sget v12, Landroid/os/NubiaDebug;->RECEIVER_DELAY:I

    int-to-long v12, v12

    cmp-long v12, v2, v12

    if-ltz v12, :cond_3

    .line 914
    const-string/jumbo v12, "nubialog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LoadedApk onReceive() delay:"

<<<<<<< VENDOR #Conflict 0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
======= #@.method public run@
    invoke-static {v2, v6}, Landroid/app/LoadedApk$FlymeInjector;->isFlymeRejectReceive(Landroid/content/Intent;Landroid/app/LoadedApk$ReceiverDispatcher;)Z

    move-result v6

    if-nez v6, :cond_flyme_0

    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;
>>>>>>> BOSP #Conflict 0

<<<<<<< VENDOR #Conflict 1
    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms receiver:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " intent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
======= #@.method public run@
    invoke-virtual {v5, v6, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_flyme_0

>>>>>>> BOSP #Conflict 1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "delay":J
    .end local v6    # "now":J
    .end local v10    # "start":J
    :cond_3
    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 933
    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    .line 935
    :cond_4
    const-wide/16 v12, 0x40

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/Exception;
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v12, :cond_5

    if-eqz v8, :cond_5

    .line 921
    invoke-virtual {p0, v5}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 923
    :cond_5
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v13, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v13, v13, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 925
    :cond_6
    const-wide/16 v12, 0x40

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 926
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error receiving broadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v14, v14, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method
