.class public Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "QtiGsmServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "QtiGsmSST"


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 52
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 53
    const-string v1, "rat"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 54
    const-string v1, "rac"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 59
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 61
    new-instance v1, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;-><init>(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v1, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic access$102(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method private enableBackgroundData()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/net/ZeroBalanceHelper;

    invoke-direct {v0}, Landroid/net/ZeroBalanceHelper;-><init>()V

    .line 236
    .local v0, "helper":Landroid/net/ZeroBalanceHelper;
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getFeatureConfigValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getBgDataProperty()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "QtiGsmSST"

    const-string v2, "Enabling the background data on LAU/RAU"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v1, "false"

    invoke-virtual {v0, v1}, Landroid/net/ZeroBalanceHelper;->setBgDataProperty(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 16
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 92
    const/4 v5, 0x0

    .line 95
    .local v5, "handled":Z
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    if-eq v12, v13, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_5

    .line 99
    const/4 v5, 0x1

    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v12, v12, Lcom/android/internal/telephony/CommandException;

    if-eqz v12, :cond_2

    .line 103
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v12, Lcom/android/internal/telephony/CommandException;

    check-cast v12, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 106
    :cond_2
    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v12, :cond_3

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 112
    :cond_3
    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v3, v12, :cond_4

    .line 113
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 208
    .end local v3    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    if-eqz v5, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v13, 0x0

    aget v14, v12, v13

    add-int/lit8 v14, v14, -0x1

    aput v14, v12, v13

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-nez v12, :cond_0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->updateRoamingState()V

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v12, v13}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 117
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 199
    :try_start_0
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v4

    .line 204
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :pswitch_0
    const/4 v5, 0x1

    .line 120
    :try_start_1
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 122
    .local v8, "states":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 123
    .local v11, "type":I
    const/4 v7, 0x4

    .line 124
    .local v7, "regState":I
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 125
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 126
    array-length v12, v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v12, :cond_9

    .line 128
    const/4 v12, 0x0

    :try_start_2
    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 132
    array-length v12, v8

    const/4 v13, 0x4

    if-lt v12, v13, :cond_6

    const/4 v12, 0x3

    aget-object v12, v8, v12

    if-eqz v12, :cond_6

    .line 133
    const/4 v12, 0x3

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 135
    :cond_6
    array-length v12, v8

    const/4 v13, 0x5

    if-lt v12, v13, :cond_7

    const/4 v12, 0x3

    if-ne v7, v12, :cond_7

    .line 137
    const/4 v12, 0x4

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 140
    :cond_7
    array-length v12, v8

    const/4 v13, 0x6

    if-lt v12, v13, :cond_8

    .line 141
    const/4 v12, 0x5

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 144
    :cond_8
    array-length v12, v8

    const/4 v13, 0x7

    if-lt v12, v13, :cond_9

    .line 145
    const/4 v12, 0x6

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 146
    .local v10, "tac":I
    const-string v12, "QtiGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updated TAC:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", old TAC:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    if-eq v12, v10, :cond_9

    .line 149
    move-object/from16 v0, p0

    iput v10, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    .end local v10    # "tac":I
    :cond_9
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v2

    .line 158
    .local v2, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mDataRoaming:Z

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v11}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " regState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " dataRadioTechnology="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    .end local v2    # "dataRegState":I
    :catch_1
    move-exception v4

    .line 154
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error parsing GprsRegistrationState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "regState":I
    .end local v8    # "states":[Ljava/lang/String;
    .end local v11    # "type":I
    :pswitch_1
    const/4 v5, 0x1

    .line 173
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 175
    .local v6, "opNames":[Ljava/lang/String;
    if-eqz v6, :cond_4

    array-length v12, v6

    const/4 v13, 0x3

    if-lt v12, v13, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->getPhoneId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->getPhoneId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "brandOverride":Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_b

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-virtual {v12, v1, v1, v13}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    .end local v1    # "brandOverride":Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 184
    .restart local v1    # "brandOverride":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "config_plmn_name_override_enabled"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 187
    const/4 v9, 0x0

    .line 188
    .local v9, "strOperatorLong":Ljava/lang/String;
    const-string v12, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v13, 0x1

    aget-object v13, v6, v13

    const/4 v14, 0x2

    aget-object v14, v6, v14

    invoke-virtual {v12, v9, v13, v14}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    .end local v9    # "strOperatorLong":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v13, 0x0

    aget-object v13, v6, v13

    const/4 v14, 0x1

    aget-object v14, v6, v14

    const/4 v15, 0x2

    aget-object v15, v6, v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 222
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 224
    .local v0, "hasLacChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    .line 228
    :cond_0
    return-void

    .line 222
    .end local v0    # "hasLacChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
