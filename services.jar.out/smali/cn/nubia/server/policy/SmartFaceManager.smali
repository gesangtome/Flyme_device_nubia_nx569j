.class public Lcn/nubia/server/policy/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

.field private mExceptionManager:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

.field private mHandler:Landroid/os/Handler;

.field private mManagerWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

.field private mObserveCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

.field private mObserverManager:Lcn/nubia/server/policy/smartface/observe/ObserverManager;

.field private mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

.field private mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

.field private mServiceCtrl:Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

.field private mSmartFaceStatusBarShowing:Z

.field private mUpdateCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

.field private needTurnOffScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSmartFaceStatusBarShowing:Z

    .line 58
    new-instance v0, Lcn/nubia/server/policy/SmartFaceManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/SmartFaceManager$1;-><init>(Lcn/nubia/server/policy/SmartFaceManager;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcn/nubia/server/policy/SmartFaceManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/SmartFaceManager$2;-><init>(Lcn/nubia/server/policy/SmartFaceManager;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mObserveCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    .line 99
    new-instance v0, Lcn/nubia/server/policy/SmartFaceManager$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/SmartFaceManager$3;-><init>(Lcn/nubia/server/policy/SmartFaceManager;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mUpdateCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .line 230
    iput-object p1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 231
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .line 232
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-direct {v0, p2}, Lcom/android/server/policy/PhoneWindowManagerWapper;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mManagerWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    .line 233
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/policy/SmartFaceManager;->mManagerWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManagerWapper;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    .line 234
    new-instance v0, Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mServiceCtrl:Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

    .line 235
    new-instance v0, Lcn/nubia/server/policy/smartface/observe/ObserverManager;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/smartface/observe/ObserverManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mObserverManager:Lcn/nubia/server/policy/smartface/observe/ObserverManager;

    .line 236
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mExceptionManager:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    .line 237
    invoke-virtual {p0}, Lcn/nubia/server/policy/SmartFaceManager;->start()V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleShowLattice()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleSetFlag()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/policy/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->setNeedTurnOffScreen(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->onStop()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleNotifyScreenOn()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->handleUpdateRotation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleTurnOffScreen()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->handleShowStatusBar(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->handleDismissStatusBar()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->controlSmartFaceFunc(Z)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/SmartFaceManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private controlSmartFaceFunc(Z)V
    .locals 1
    .param p1, "needRun"    # Z

    .prologue
    .line 261
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mServiceCtrl:Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->onResume()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mServiceCtrl:Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->onStop()V

    goto :goto_0
.end method

.method private dismissSmartFaceStatusBar()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.smartFace.dismissSmartFaceStatusBarView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method private handleDismiss()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->dismiss()V

    .line 203
    :cond_0
    return-void
.end method

.method private handleDismissStatusBar()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSmartFaceStatusBarShowing:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSmartFaceStatusBarShowing:Z

    .line 208
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->dismissSmartFaceStatusBar()V

    .line 210
    :cond_0
    return-void
.end method

.method private handleNotifyScreenOn()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->openUnLockScreen(Z)V

    .line 227
    return-void
.end method

.method private handleSetFlag()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->setEverSmartFaceNearFlag()V

    .line 194
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->show()V

    .line 173
    :cond_0
    return-void
.end method

.method private handleShowLattice()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->showLattice()V

    .line 184
    :cond_0
    return-void
.end method

.method private handleShowStatusBar(Z)V
    .locals 1
    .param p1, "showStatusBarTime"    # Z

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSmartFaceStatusBarShowing:Z

    .line 188
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->showSmartFaceStatusBar(Z)V

    .line 189
    return-void
.end method

.method private handleTurnOffScreen()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    iget-boolean v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->needTurnOffScreen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->turnOffScreen(Z)V

    .line 198
    return-void
.end method

.method private handleUpdateRotation(Z)V
    .locals 1
    .param p1, "oriention"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mManagerWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerWapper;->updateRotation(Z)V

    .line 219
    return-void
.end method

.method private isKeyEventIntercepted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v2, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    .line 288
    .local v0, "flag":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isServiceStart()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->bindServiceSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->isWindowShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onResume()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->register()V

    .line 302
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->onResume()V

    .line 303
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mServiceCtrl:Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;->maybeCreateListenerService(Z)V

    .line 304
    return-void
.end method

.method private onStop()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/16 v1, 0xb

    .line 307
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->unRegister()V

    .line 314
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->onStop()V

    .line 315
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mServiceCtrl:Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/util/ListenerServiceCtrl;->maybeCreateListenerService(Z)V

    .line 316
    return-void
.end method

.method private registerCallback()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mSensorMonitor:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mUpdateCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;)V

    .line 255
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mUpdateCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;)V

    .line 256
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mExceptionManager:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mUpdateCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mObserverManager:Lcn/nubia/server/policy/smartface/observe/ObserverManager;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mObserveCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->registerCallback(Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;)V

    .line 258
    return-void
.end method

.method private setNeedTurnOffScreen(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcn/nubia/server/policy/SmartFaceManager;->needTurnOffScreen:Z

    .line 223
    return-void
.end method

.method private showSmartFaceStatusBar(Z)V
    .locals 2
    .param p1, "showStatusBarTime"    # Z

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.smartFace.showSmartFaceStatusBarView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "showTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method


# virtual methods
.method public disableHapticFeedback()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->disableHapticFeedback(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 272
    iget-object v2, p0, Lcn/nubia/server/policy/SmartFaceManager;->mExceptionManager:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    invoke-virtual {v2, p1}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->forceExit(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-wide v0

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 279
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->isServiceStart()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->isKeyEventIntercepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public needRotationScreen()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->needRotationScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->registerCallback()V

    .line 247
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mObserverManager:Lcn/nubia/server/policy/smartface/observe/ObserverManager;

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/observe/ObserverManager;->observe()V

    .line 248
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcn/nubia/server/policy/SmartFaceManager;->onResume()V

    .line 251
    :cond_0
    return-void
.end method

.method public startSmartFaceService()V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager;->mDelegate:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    .line 243
    return-void
.end method
