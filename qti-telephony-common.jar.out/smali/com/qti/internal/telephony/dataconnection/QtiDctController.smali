.class public Lcom/qti/internal/telephony/dataconnection/QtiDctController;
.super Lcom/android/internal/telephony/dataconnection/DctController;
.source "QtiDctController.java"


# static fields
.field private static final DCTCONTROLLER_EVENT_BASE:I = 0xc8

.field private static final EVENT_CONNECT_RESPONSE:I = 0xc9

.field private static final EVENT_UNSOL_REMOTE_SIM_STATUS_IND:I = 0xcb

.field private static final EVENT_VOICE_CALL_ENDED:I = 0xca

.field public static isVsimEnabled:Z


# instance fields
.field private final ACTIVE:I

.field private final ALLOW_DATA_RETRY_DELAY:I

.field private final DO_CONNECT_ON_PHONEID:I

.field private final DO_DISCONNECT_ON_ACTIVE_PHONEID:I

.field private final DO_DISCONNECT_ON_PHONEID:I

.field private final FALSE:I

.field private final INACTIVE:I

.field private final MANUAL_DDS_SWITCH_DSDA:I

.field private final MANUAL_DDS_SWITCH_DSDS:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private final MAX_LOG_LINES_PER_REQUEST:I

.field private final MODEM_DATA_CAPABILITY_UNKNOWN:I

.field private final MODEM_DUAL_DATA_CAPABLE:I

.field private final MODEM_SINGLE_DATA_CAPABLE:I

.field private final NOP:I

.field private final ON_DEMAND_REQ_DSDA:I

.field private final ON_DEMAND_REQ_DSDS:I

.field private final OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

.field private final REMOTE_SIM_TRANSPORT_TYPE_IP:I

.field private final TRUE:I

.field private mAllowDataFailure:[I

.field private mCm:Lcom/android/internal/telephony/CallManager;

.field private final mDcSwitchStateMachineActionTable:[[I

.field private final mDdsSwitchActionTable:[[I

.field private mLocalLog:Landroid/util/LocalLog;

.field private mPreviousPhoneId:I

.field private mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

.field public vsimSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isVsimEnabled:Z

    return-void
.end method

.method protected constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 6
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v1, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 50
    const/16 v0, 0x7530

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ALLOW_DATA_RETRY_DELAY:I

    .line 51
    const/4 v0, 0x5

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MAX_CONNECT_FAILURE_COUNT:I

    .line 53
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_DATA_CAPABILITY_UNKNOWN:I

    .line 54
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_SINGLE_DATA_CAPABLE:I

    .line 55
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_DUAL_DATA_CAPABLE:I

    .line 56
    const-string v0, "persist.radio.msim.data.cap"

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

    .line 58
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MANUAL_DDS_SWITCH_DSDS:I

    .line 59
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MANUAL_DDS_SWITCH_DSDA:I

    .line 60
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ON_DEMAND_REQ_DSDS:I

    .line 61
    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ON_DEMAND_REQ_DSDA:I

    .line 63
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_CONNECT_ON_PHONEID:I

    .line 64
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_DISCONNECT_ON_PHONEID:I

    .line 65
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_DISCONNECT_ON_ACTIVE_PHONEID:I

    .line 66
    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->NOP:I

    .line 87
    new-array v0, v1, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsSwitchActionTable:[[I

    .line 111
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchStateMachineActionTable:[[I

    .line 117
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->TRUE:I

    .line 118
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->FALSE:I

    .line 120
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->INACTIVE:I

    .line 121
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ACTIVE:I

    .line 123
    const/16 v0, 0x32

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MAX_LOG_LINES_PER_REQUEST:I

    .line 126
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    .line 135
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->vsimSlotId:I

    .line 136
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->REMOTE_SIM_TRANSPORT_TYPE_IP:I

    .line 140
    const-string v0, "QtiDctController"

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->LOG_TAG:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    .line 142
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mLocalLog:Landroid/util/LocalLog;

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mCm:Lcom/android/internal/telephony/CallManager;

    .line 144
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mCm:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xca

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 147
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    return-void

    .line 87
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x0
    .end array-data

    .line 111
    :array_3
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processRequests()V

    return-void
.end method

.method private doConnect(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/16 v9, 0xc9

    const/4 v8, 0x0

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect: phoneId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not provisioned, bail out"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 284
    .local v1, "ddsSubId":I
    const/4 v0, 0x0

    .line 286
    .local v0, "connectReqSent":Z
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 287
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 291
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v6, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v6

    if-ne v6, p1, :cond_2

    iget v6, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 293
    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 295
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, p1

    invoke-virtual {p0, v9, p1, v8}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)I

    goto :goto_1

    .line 301
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isDdsSwitchNeeded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    const-string v6, "doConnect: sending dummy connect req to force DDS switch"

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 305
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 306
    .local v2, "dummyReqBuilder":Landroid/net/NetworkRequest$Builder;
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mLocalLog:Landroid/util/LocalLog;

    invoke-direct {v3, v6, v8, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V

    .line 307
    .local v3, "dummyReqInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 308
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, p1

    invoke-virtual {p0, v9, p1, v8}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)I

    goto :goto_0
.end method

.method private doDisconnectAll(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDisconnectAll phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 351
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    .line 354
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->reset()V

    .line 356
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    .line 358
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 359
    .local v0, "dataRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    .line 371
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data registered on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fake DETACH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    .line 375
    :cond_2
    return-void
.end method

.method private doDsdaCleanUp(I)V
    .locals 7
    .param p1, "activePhoneId"    # I

    .prologue
    .line 324
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 326
    .local v0, "anyRequestExecutingOnOtherSub":Z
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getNonActivePhoneId(I)I

    move-result v2

    .line 328
    .local v2, "nonActivePhoneId":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 330
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 333
    .local v3, "phoneId":I
    if-ne v3, v2, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 339
    .end local v3    # "phoneId":I
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 341
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDetachingSync()Z

    move-result v5

    if-nez v5, :cond_2

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doDsdaCleanup on phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    .line 346
    :cond_2
    return-void
.end method

.method private enforceDds(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 604
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 605
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 609
    :cond_0
    return-void
.end method

.method private getConnectFailureCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method private getDcSwitchStateMachineActivityState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDetachingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getIwlanPhoneId()I
    .locals 4

    .prologue
    .line 454
    const/4 v1, -0x1

    .line 455
    .local v1, "iwlanPhoneId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 456
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 459
    move v1, v0

    .line 464
    :cond_0
    return v1

    .line 455
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMaxDataAllowed()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 530
    const/4 v0, 0x1

    .line 531
    .local v0, "maxData":I
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v2

    .line 533
    .local v2, "radioCapCtrlr":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v2, :cond_0

    .line 534
    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getMaxDataAllowed()I

    move-result v0

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modem value of max_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 538
    :cond_0
    const-string v3, "persist.radio.msim.data.cap"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 540
    .local v1, "override":I
    if-eq v1, v5, :cond_1

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding modem max_data_value with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 542
    move v0, v1

    .line 544
    :cond_1
    return v0
.end method

.method private getNonActivePhoneId(I)I
    .locals 2
    .param p1, "activePhoneId"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v1, :cond_1

    .line 316
    if-eq v0, p1, :cond_0

    .line 320
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 315
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getVsimStatus()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isVsimEnabled:Z

    return v0
.end method

.method private handleConnectMaxFailure(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    .line 613
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 614
    .local v1, "defaultDds":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 615
    .local v0, "ddsPhoneId":I
    if-eq p1, v0, :cond_1

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enforce DDS setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->enforceDds(I)V

    .line 630
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->reset()V

    .line 631
    return-void

    .line 620
    :cond_1
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DDS switch retries exhausted, reverting back DDS to phoneId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 623
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->enforceDds(I)V

    goto :goto_0
.end method

.method private handleDdsSwitch(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "activePhoneId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 410
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getIwlanPhoneId()I

    move-result v2

    .line 411
    .local v2, "iwlanPhoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iwlanPhoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 412
    if-eq v2, v5, :cond_0

    if-eq v2, p1, :cond_0

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mNeedsDdsSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already in attached state on IWLAN. Ignore handleDdsSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isDataAllowedOnPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mNeedsDdsSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mIsDataAllowed:[Ljava/util/concurrent/atomic/AtomicBoolean;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 428
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mIsDataAllowed:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    :cond_2
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mIsDataAllowed:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 432
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsSwitchActionTable:[[I

    add-int/lit8 v4, p2, 0x1

    aget-object v3, v3, v4

    aget v0, v3, p1

    .line 433
    .local v0, "action":I
    if-eq v2, v5, :cond_3

    if-ne v2, p1, :cond_3

    .line 434
    const/4 v0, 0x0

    .line 436
    :cond_3
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 438
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doConnect(I)V

    goto :goto_0

    .line 442
    :pswitch_2
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    const-string v3, "handleDdsSwitch: Voice call active. Defer PS detach"

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_4
    invoke-direct {p0, p2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleSimultaneousReq(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getNonActivePhoneId(I)I

    move-result v0

    .line 523
    .local v0, "otherPhoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 524
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processAction(I)V

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processAction(I)V

    .line 527
    return-void
.end method

.method private handleUnsolRemoteSimStatusInd(Landroid/os/Message;I)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, -0x1

    .line 240
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 241
    :cond_0
    const-string v5, "Null data received in handleUnsolRemoteSimStatusInd"

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->loge(Ljava/lang/String;)V

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 246
    .local v1, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 248
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 249
    .local v3, "rspId":I
    const v5, 0x80407

    if-ne v3, v5, :cond_1

    .line 250
    iget v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->vsimSlotId:I

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->vsimSlotId:I

    if-ne v5, p2, :cond_1

    .line 251
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 252
    .local v2, "response_size":I
    if-gez v2, :cond_4

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response size is Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 258
    .local v0, "isEnable":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 259
    .local v4, "transportType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transportType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 261
    if-lez v0, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vsim is enabled on slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 264
    const/4 v5, 0x1

    sput-boolean v5, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isVsimEnabled:Z

    .line 265
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->vsimSlotId:I

    goto/16 :goto_0

    .line 267
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vsim is disabled on slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 268
    const/4 v5, 0x0

    sput-boolean v5, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isVsimEnabled:Z

    .line 269
    iput v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->vsimSlotId:I

    goto/16 :goto_0
.end method

.method private identifyUsecase(IIII)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "activePhoneId"    # I
    .param p3, "ddsPhoneId"    # I
    .param p4, "maxDataCap"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddsPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxDataCap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 383
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-ne p2, p1, :cond_2

    .line 384
    :cond_0
    if-ne p4, v1, :cond_1

    .line 385
    const-string v1, "Modem is DSDA-Data capable."

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 405
    :goto_0
    return v0

    .line 388
    :cond_1
    const-string v0, "Modem is DSDS-Data capable."

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :cond_2
    if-ne p4, v1, :cond_4

    .line 392
    const-string v1, "Modem is DSDA-Data capable."

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 394
    if-ne p1, p3, :cond_3

    .line 395
    const-string v0, "DDS switch request identified"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 396
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_3
    const-string v1, "Ondemand PS request on non-dds identified"

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_4
    const-string v0, "Modem is DSDS-Data capable."

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 404
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    move v0, v1

    .line 405
    goto :goto_0
.end method

.method private incConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data failure count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method private isAnyVoiceCallActiveOnDevice()Z
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 670
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 671
    return v0

    .line 669
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReqPresentForPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 473
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 476
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectExecPhone requestInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 477
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 478
    const/4 v2, 0x0

    .line 481
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isUiccProvisioned(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 675
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 678
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    invoke-virtual {v1, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 680
    .local v0, "status":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 682
    return v0

    .line 678
    .end local v0    # "status":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 151
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new QtiDctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onConnectResponse(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 634
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data failed on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->incConnectFailureCount(I)V

    .line 637
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string v0, "Wait for call end indication"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 666
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 645
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleConnectMaxFailure(I)V

    goto :goto_0

    .line 647
    :cond_1
    const-string v0, "Scheduling retry connect/allow_data"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 648
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;

    invoke-direct {v0, p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;-><init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 663
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data success on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    goto :goto_0
.end method

.method private processAction(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getDcSwitchStateMachineActivityState(I)I

    move-result v4

    .line 487
    .local v4, "state":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isReqPresentForPhoneId(I)I

    move-result v1

    .line 489
    .local v1, "anyReqPresent":I
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchStateMachineActionTable:[[I

    aget-object v5, v5, v4

    aget v0, v5, v1

    .line 491
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 493
    :pswitch_0
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 494
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 496
    .local v3, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v5

    if-ne v5, p1, :cond_0

    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dun"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isVsimEnabled:Z

    if-eqz v5, :cond_0

    .line 500
    const-string v5, "processAction notify execute request"

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 501
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyExecuteRequest()V

    goto :goto_0

    .line 506
    .end local v3    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->setDataAllowedOnPhoneId(IZ)V

    .line 507
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doConnect(I)V

    goto :goto_0

    .line 511
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :pswitch_1
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->setDataAllowedOnPhoneId(IZ)V

    .line 512
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 592
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 201
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 231
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->handleMessage(Landroid/os/Message;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v7, v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->onConnectResponse(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v6, "EVENT_VOICE_CALL_ENDED"

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 207
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 208
    .local v2, "ddsSubId":I
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 209
    .local v1, "ddsPhoneId":I
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v5

    .line 210
    .local v5, "topPrioPhoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isAnyVoiceCallActiveOnDevice()Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry attach on failed phoneid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 214
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processRequests()V

    goto :goto_0

    .line 221
    .end local v1    # "ddsPhoneId":I
    .end local v2    # "ddsSubId":I
    .end local v5    # "topPrioPhoneId":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 223
    .local v3, "mesg":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->arg1:I

    .line 224
    .local v4, "slotId":I
    if-eqz v3, :cond_2

    .line 225
    invoke-direct {p0, v3, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleUnsolRemoteSimStatusInd(Landroid/os/Message;I)V

    goto :goto_0

    .line 227
    :cond_2
    const-string v6, "Error: empty result, EVENT_UNSOL_REMOTE_SIM_STATUS_IND"

    invoke-static {v6}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public informDdsToRil(I)V
    .locals 5
    .param p1, "ddsSubId"    # I

    .prologue
    .line 689
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 691
    .local v0, "ddsPhoneId":I
    if-ltz v0, :cond_2

    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v3, :cond_2

    .line 692
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    .line 693
    .local v2, "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    const-string v3, "Oem hook service is not ready yet"

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 705
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_0
    :goto_0
    return-void

    .line 698
    .restart local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v1, v3, :cond_0

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InformDdsToRil rild= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DDS phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v2, v0, v1}, Lcom/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 703
    .end local v1    # "i":I
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InformDdsToRil dds phoneId is invalid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onProcessRequest()V
    .locals 9

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v5

    .line 551
    .local v5, "phoneId":I
    const/4 v0, -0x1

    .line 552
    .local v0, "activePhoneId":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 553
    .local v2, "defaultDds":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 554
    .local v1, "ddsPhoneId":I
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getMaxDataAllowed()I

    move-result v4

    .line 556
    .local v4, "maxDataCap":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 557
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onProcessRequest: ddsSubId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 562
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v7

    if-nez v7, :cond_2

    .line 563
    move v0, v3

    .line 568
    :cond_1
    invoke-direct {p0, v5, v0, v1, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->identifyUsecase(IIII)I

    move-result v6

    .line 570
    .local v6, "usecase":I
    packed-switch v6, :pswitch_data_0

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled usecase = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    .end local v6    # "usecase":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 572
    .restart local v6    # "usecase":I
    :pswitch_0
    const-string v7, "MANUAL_DDS_SWITCH_DSDS"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 574
    :pswitch_1
    const-string v7, "MANUAL_DDS_SWITCH_DSDA"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 576
    :pswitch_2
    const-string v7, "ON_DEMAND_REQ_DSDS"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v5, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleDdsSwitch(II)V

    goto :goto_0

    .line 581
    :pswitch_3
    const-string v7, "ON_DEMAND_REQ_DSDA"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 582
    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleSimultaneousReq(I)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSettingsChanged()V
    .locals 4

    .prologue
    .line 161
    const-string v2, "onSettingsChanged"

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 164
    .local v1, "ddsSubId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 165
    .local v0, "ddsPhoneId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 168
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChanged()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddsSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSubInfoReady()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v3, "subIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 181
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "subId":[I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v4, "org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "SubIdList"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 192
    const-string v4, "Broadcast network specifier set intent"

    invoke-static {v4}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
