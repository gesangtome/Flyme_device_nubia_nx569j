.class public Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;
.super Ljava/lang/Object;
.source "ReceiverMonitor.java"


# static fields
.field private static final ACTION_SAMRTFACE_STATE_CHANGED:Ljava/lang/String; = "com.nubia.smartface.state.changed"

.field private static final APP_IS_DIEPLAY_KEY:Ljava/lang/String; = "display"

.field private static final APP_PKGNAME_KEY:Ljava/lang/String; = "packageName"

.field private static final DEBUG:Z = false

.field private static final MSG_PHONE_STATE_CHANGED:I = 0xa

.field private static final MSG_SMART_FACE_STATE_CHANGED:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReceiverUpdateMonitor"

.field private static volatile sInstance:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private isDismissKeyguard:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneState:I

.field mSmartfaceAppNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelecomManager:Landroid/telecom/TelecomManager;

.field private mdismissSmartFaceButShowStatusbarRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    .line 36
    iput v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    .line 40
    iput-boolean v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->isDismissKeyguard:Z

    .line 42
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$1;-><init>(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$2;-><init>(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->initReceiver()V

    .line 97
    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 98
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$3;-><init>(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mdismissSmartFaceButShowStatusbarRunnable:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->putAppViewMap(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->handleSmartFaceViewStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    return-void
.end method

.method private dismissSmartFaceMain()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceScreen()V

    .line 229
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSmartFaceViewStateChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    .line 196
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceStatusBar()V

    .line 197
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 203
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 204
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->showSmartFaceMain()V

    .line 205
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceStatusBar(Z)V

    .line 206
    invoke-virtual {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0

    .line 207
    :cond_2
    iget v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 209
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 210
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->showLatticeMain()V

    .line 211
    invoke-virtual {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0

    .line 212
    :cond_3
    iget v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 214
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 215
    invoke-virtual {p0, v2}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0

    .line 217
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    .line 218
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceStatusBar()V

    goto :goto_0
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    .line 113
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.nubia.smartface.state.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private putAppViewMap(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method private setNeedTurnOffScreen(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setNeedTurnOffScreen(Z)V

    .line 225
    return-void
.end method

.method private showLatticeMain()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceLatticeScreen()V

    .line 237
    return-void
.end method

.method private showSmartFaceMain()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceScreen()V

    .line 233
    return-void
.end method


# virtual methods
.method public getIsDismissKeyguard()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->isDismissKeyguard:Z

    return v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    .line 272
    iget v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    return v0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 138
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    iput v3, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    .line 147
    :cond_0
    :goto_0
    :try_start_0
    iget v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v1, :cond_8

    .line 148
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 149
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 150
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mdismissSmartFaceButShowStatusbarRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mdismissSmartFaceButShowStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->showSmartFaceMain()V

    .line 154
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceStatusBar(Z)V

    .line 155
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->notifyScreentOn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_2
    :goto_1
    return-void

    .line 141
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    iput v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    goto :goto_0

    .line 143
    :cond_4
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iput v2, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    goto :goto_0

    .line 156
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 157
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 158
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->showLatticeMain()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 160
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 161
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->goToSleep(J)V

    goto :goto_1

    .line 163
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    .line 164
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceStatusBar()V

    goto :goto_1

    .line 166
    :cond_8
    iget v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-ne v1, v4, :cond_2

    .line 170
    :cond_9
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 173
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mdismissSmartFaceButShowStatusbarRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 174
    :cond_a
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 175
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 176
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    goto :goto_1

    .line 178
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 179
    invoke-direct {p0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public isOtherSmartViewShow()Z
    .locals 5

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "result":Z
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 251
    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 252
    .local v3, "temp":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 257
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "temp":Z
    :cond_3
    return v2
.end method

.method public register()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    :cond_0
    return-void
.end method

.method public registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .prologue
    .line 108
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    .line 109
    return-void
.end method

.method public setIsDismissKeyguard(Z)V
    .locals 0
    .param p1, "isDismissKeyguard"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->isDismissKeyguard:Z

    .line 286
    return-void
.end method

.method public showInCallScreen()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 278
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_0
    return-void
.end method
