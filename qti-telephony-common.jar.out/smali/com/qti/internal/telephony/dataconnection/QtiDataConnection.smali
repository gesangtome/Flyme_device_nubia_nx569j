.class public final Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;
.super Lcom/android/internal/telephony/dataconnection/DataConnection;
.source "QtiDataConnection.java"


# static fields
.field protected static final MAX_PDP_REJECT_COUNT:I = 0x3

.field protected static mDataRejectDialog:Landroid/app/AlertDialog;

.field protected static mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field protected static mPdpRejectCount:I


# instance fields
.field private mIsPdpThrottleTimerRunning:Z

.field protected mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

.field protected mResetEventListener:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 42
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p5, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p6, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 53
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection$1;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection$1;-><init>(Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;)V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mResetEventListener:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mIsPdpThrottleTimerRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;

    .prologue
    .line 30
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mTag:I

    return v0
.end method

.method private displayPopup(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 5
    .param p1, "pdpRejectCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayPopup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "data_conn_status_title"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ConfigResourceUtil;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, "message":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p1, v3, :cond_3

    .line 127
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "user_authentication_failed"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ConfigResourceUtil;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_0
    :goto_0
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 137
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    .line 140
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 142
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 145
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 146
    return-void

    .line 129
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p1, v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "service_not_subscribed"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ConfigResourceUtil;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleDataReject(Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 8
    .param p1, "result"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const v7, 0x4000a

    const/4 v6, 0x0

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "handled":Z
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "data_retry_delay"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/ConfigResourceUtil;->getIntValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, "delay":I
    sget-object v4, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v4, v5, :cond_0

    .line 164
    const-string v4, "reset data reject count and data reject cause"

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 165
    sput v6, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 166
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sput-object v4, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 172
    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v4, v5, :cond_1

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v4, v5, :cond_7

    .line 174
    :cond_1
    sget v4, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 175
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sput-object v4, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 177
    const/4 v4, 0x3

    sget v5, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    if-gt v4, v5, :cond_3

    .line 178
    const-string v4, "reached max retry count"

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 179
    sput v6, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 180
    sget-object v4, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->displayPopup(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 181
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "data_retry_idle_delay"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/ConfigResourceUtil;->getIntValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 183
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mIsPdpThrottleTimerRunning:Z

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataConnection  next attempt in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-nez v4, :cond_2

    .line 186
    new-instance v4, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mResetEventListener:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    invoke-direct {v4, v5, p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;)V

    iput-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 189
    :cond_2
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->startResetEventTracker()V

    .line 191
    :cond_3
    if-ltz v1, :cond_5

    .line 192
    const-string v4, "DcActivatingState: **ERR_RilError retry**"

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 193
    if-eqz p2, :cond_4

    .line 194
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 195
    .local v3, "intent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_4

    .line 196
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 198
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 199
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 202
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :cond_4
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    iget v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mTag:I

    invoke-virtual {v4, v7, v5, v1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 204
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 206
    :cond_5
    const/4 v2, 0x1

    .line 221
    :cond_6
    :goto_0
    return v2

    .line 207
    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_IPV4_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v4, v5, :cond_8

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_IPV6_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v4, v5, :cond_6

    .line 213
    :cond_8
    if-ltz v1, :cond_9

    .line 214
    const-string v4, "DcActivatingState: ERR_Ril retry IPVx THROTTLED"

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    iget v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mTag:I

    invoke-virtual {v4, v7, v5, v1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 217
    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 219
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWCDMA(I)Z
    .locals 1
    .param p1, "radioTechnology"    # I

    .prologue
    .line 111
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "id"    # I
    .param p2, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p3, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p4, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 78
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .line 80
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->start()V

    .line 81
    return-object v0
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dispose()V

    .line 87
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->dispose()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 91
    :cond_0
    return-void
.end method

.method protected handlePdpRejectCauseSuccess()V
    .locals 2

    .prologue
    .line 226
    sget v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v0, v1, :cond_0

    .line 227
    const/4 v0, 0x0

    sput v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 228
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 229
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 233
    :cond_0
    return-void
.end method

.method protected handlePdpRetryOnConnectionLoss(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "config_pdp_retry_for_29_33_enabled"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mIsPdpThrottleTimerRunning:Z

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "DataConnection continue in RetryState as throttling timer is running"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->handlePdpRetryOnConnectionLoss(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected isDunRetryAllowedForVsim(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDunRetryAllowedForVsim: apnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getVsimStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDunRetryAllowedForVsim(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isPdpRejectCauseFailureHandled(Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 4
    .param p1, "result"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .param p2, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "ishandled":Z
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->isWCDMA(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "config_pdp_retry_for_29_33_enabled"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config is enabled retry count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 246
    iget-object v0, p2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 247
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, p1, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->handleDataReject(Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v1

    .line 256
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    const-string v2, "DataConnection not on wcdma"

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->log(Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    sput v2, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 251
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sput-object v2, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 252
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    goto :goto_0
.end method

.method protected notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 1
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "sendAll"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 101
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->cancel()V

    .line 102
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataConnection;->mQtiDataResetEventTracker:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 105
    :cond_0
    return-void
.end method
