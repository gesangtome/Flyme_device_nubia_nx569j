.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_NETWORK_STATE:Ljava/lang/String; = "com.android.phone.intent.action.IMS_NETWORK_STATE"

.field static final CANCEL_ECM_TIMER:I = 0x1

.field public static final CS_FALLBACK:Ljava/lang/String; = "cs_fallback"

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field protected static final EVENT_DATA_ATTACHED:I = 0x39

.field protected static final EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED:I = 0x38

.field protected static final EVENT_GET_CALL_BARRING_DONE:I = 0x33

.field protected static final EVENT_GET_CALL_WAITING_DONE:I = 0x35

.field protected static final EVENT_GET_CLIR_DONE:I = 0x37

.field protected static final EVENT_SET_CALL_BARRING_DONE:I = 0x32

.field protected static final EVENT_SET_CALL_WAITING_DONE:I = 0x34

.field protected static final EVENT_SET_CLIR_DONE:I = 0x36

.field private static final EXTRA_IS_LTE:Ljava/lang/String; = "is_lte"

.field public static final EXTRA_KEY_ALERT_MESSAGE:Ljava/lang/String; = "alertMessage"

.field public static final EXTRA_KEY_ALERT_SHOW:Ljava/lang/String; = "alertShow"

.field public static final EXTRA_KEY_ALERT_TITLE:Ljava/lang/String; = "alertTitle"

.field public static final EXTRA_KEY_NOTIFICATION_MESSAGE:Ljava/lang/String; = "notificationMessage"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field private static final PERMISSION_IMS_NETWORK_STATE:Ljava/lang/String; = "com.android.phone.permission.IMS_NETWORK_STATE"

.field static final RESTART_ECM_TIMER:I

.field private static final VDBG:Z


# instance fields
.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

.field private mImsRegistered:Z

.field protected mIsPhoneInEcmState:Z

.field private mLastDialString:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field mSS:Landroid/telephony/ServiceState;

.field private final mServiceStateChangeRegistrants:Landroid/os/RegistrantList;

.field private final mSilentRedialRegistrants:Landroid/os/RegistrantList;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 193
    const-string v1, "ImsPhone"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 157
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    .line 159
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mServiceStateChangeRegistrants:Landroid/os/RegistrantList;

    .line 161
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 164
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 167
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 1454
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    .line 1633
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 196
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    .line 203
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 206
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 207
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ImsPhone"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/16 v2, 0x38

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/16 v2, 0x39

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2d

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v2, 0x2c

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V
    .locals 4
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 598
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 600
    :cond_0
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 604
    .local v0, "wfcWiFiOnly":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 605
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "WFC Wi-Fi Only Mode: IMS not registered"

    invoke-direct {v2, v1, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 600
    .end local v0    # "wfcWiFiOnly":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    :cond_2
    return-void
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 816
    packed-switch p1, :pswitch_data_0

    .line 825
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 817
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 818
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 819
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 820
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 955
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const/4 v0, 0x2

    .line 973
    :goto_0
    return v0

    .line 957
    :cond_0
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    const/4 v0, 0x3

    goto :goto_0

    .line 959
    :cond_1
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    const/4 v0, 0x4

    goto :goto_0

    .line 961
    :cond_2
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    const/4 v0, 0x1

    goto :goto_0

    .line 963
    :cond_3
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 964
    const/4 v0, 0x5

    goto :goto_0

    .line 965
    :cond_4
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 966
    const/4 v0, 0x7

    goto :goto_0

    .line 967
    :cond_5
    const-string v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 968
    const/16 v0, 0x8

    goto :goto_0

    .line 969
    :cond_6
    const-string v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 970
    const/16 v0, 0x9

    goto :goto_0

    .line 973
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 801
    packed-switch p1, :pswitch_data_0

    .line 812
    :goto_0
    :pswitch_0
    return v0

    .line 802
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 803
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 804
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 806
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 807
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 3
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    .line 1246
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1247
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1248
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1250
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mServiceClass:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 1251
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1255
    :goto_0
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1256
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1257
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1258
    return-object v0

    .line 1253
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    goto :goto_0
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 786
    packed-switch p1, :pswitch_data_0

    .line 797
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 787
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 788
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 789
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 790
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 791
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 792
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 415
    const/4 v1, 0x0

    .line 435
    :cond_0
    :goto_0
    return v1

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 419
    const-string v2, "ImsPhone"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "ImsPhone"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 426
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 427
    const-string v2, "ImsPhone"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "ImsPhone"

    const-string v3, "hangup failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 473
    .local v2, "len":I
    if-le v2, v4, :cond_0

    .line 474
    const/4 v3, 0x0

    .line 497
    :goto_0
    return v3

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 479
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v3, :cond_1

    .line 480
    const-string v4, "ImsPhone"

    const-string v5, "separate not supported"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    sget-object v4, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 484
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 485
    const-string v4, "ImsPhone"

    const-string v5, "MmiCode 2: accept ringing call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "ImsPhone"

    const-string v5, "switch failed"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    sget-object v4, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 488
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string v4, "ImsPhone"

    const-string v5, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 443
    .local v2, "len":I
    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 444
    const/4 v3, 0x0

    .line 467
    :goto_0
    return v3

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 450
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v3, :cond_1

    .line 451
    :try_start_0
    const-string v4, "ImsPhone"

    const-string v5, "not support 1X SEND"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v4, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "ImsPhone"

    const-string v5, "hangup failed"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    sget-object v4, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 454
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 455
    const-string v4, "ImsPhone"

    const-string v5, "MmiCode 1: hangup foreground"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_0

    .line 458
    :cond_2
    const-string v4, "ImsPhone"

    const-string v5, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1296
    new-array v0, v3, [I

    .line 1297
    .local v0, "cbInfos":[I
    aput v2, v0, v2

    .line 1299
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v1, v3, :cond_0

    .line 1300
    aput v3, v0, v2

    .line 1303
    :cond_0
    return-object v0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 529
    :cond_0
    const-string v1, "ImsPhone"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1262
    const/4 v0, 0x0

    .line 1264
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    .line 1265
    array-length v4, p1

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1268
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1269
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p1, :cond_1

    array-length v4, p1

    if-nez v4, :cond_3

    .line 1270
    :cond_1
    if-eqz v2, :cond_2

    .line 1273
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1292
    :cond_2
    return-object v0

    .line 1276
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1277
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    if-nez v4, :cond_4

    .line 1279
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mServiceClass:I

    const/16 v7, 0x50

    if-ne v4, v7, :cond_6

    .line 1281
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1288
    :cond_4
    :goto_2
    aget-object v4, p1, v1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v4, v6

    .line 1281
    goto :goto_1

    .line 1282
    :cond_6
    if-eqz v2, :cond_4

    .line 1283
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingPreference(Z)V

    .line 1284
    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_4
    aget-object v7, p1, v1

    iget-object v7, v7, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v2, v5, v4, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    goto :goto_2

    :cond_7
    move v4, v6

    .line 1283
    goto :goto_3

    :cond_8
    move v4, v6

    .line 1284
    goto :goto_4
.end method

.method private handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1307
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1308
    .local v0, "cwInfos":[I
    aput v2, v0, v2

    .line 1310
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v1, v3, :cond_0

    .line 1311
    aput v3, v0, v2

    .line 1312
    aput v3, v0, v3

    .line 1315
    :cond_0
    return-object v0
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 515
    .local v0, "len":I
    if-eq v0, v1, :cond_0

    .line 516
    const/4 v1, 0x0

    .line 521
    :goto_0
    return v1

    .line 519
    :cond_0
    const-string v2, "ImsPhone"

    const-string v3, "MmiCode 4: not support explicit call transfer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleEnterEmergencyCallbackMode()V
    .locals 6

    .prologue
    .line 1505
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 1510
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 1513
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1519
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1521
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1523
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode()V
    .locals 3

    .prologue
    .line 1527
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExitEmergencyCallbackMode: mIsPhoneInEcmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1533
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1536
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    if-eqz v0, :cond_1

    .line 1537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    .line 1538
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 1542
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 502
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    .line 506
    :cond_0
    const-string v1, "ImsPhone"

    const-string v2, "MmiCode 3: merge calls"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    goto :goto_0
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 782
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 770
    packed-switch p1, :pswitch_data_0

    .line 777
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 775
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 756
    packed-switch p1, :pswitch_data_0

    .line 765
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 763
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 1103
    const-string v0, "ImsPhone"

    const-string v1, "onNetworkInitiatedUssd"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1106
    return-void
.end method

.method private sendImsNetworkStateBroadcast(Z)V
    .locals 3
    .param p1, "isLte"    # Z

    .prologue
    .line 1621
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1622
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.action.IMS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const-string v1, "is_lte"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1625
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone.permission.IMS_NETWORK_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1626
    return-void
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1320
    if-eqz p1, :cond_1

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    if-eqz p3, :cond_0

    .line 1323
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1325
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1326
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1328
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    return-void
.end method

.method private updateDataServiceState()V
    .locals 4

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1334
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1335
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1336
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataServiceState: defSs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imsSs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    .line 351
    return-void
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->addParticipant(Ljava/lang/String;Landroid/os/Message;)V

    .line 687
    return-void
.end method

.method public addParticipant(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addParticipant(Ljava/lang/String;Landroid/os/Message;)V

    .line 692
    return-void
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    .line 1631
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method cancelUSSD()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD()V

    .line 1032
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 382
    return-void
.end method

.method public conference()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    .line 377
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "isConferenceUri":Z
    const/4 v1, 0x0

    .line 639
    .local v1, "isSkipSchemaParsing":Z
    if-eqz p3, :cond_0

    .line 640
    const-string v6, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 642
    const-string v6, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 645
    :cond_0
    move-object v4, p1

    .line 647
    .local v4, "newDialString":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 648
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 652
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 680
    :goto_0
    return-object v5

    .line 656
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 657
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 661
    :cond_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "networkPortion":Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v2

    .line 664
    .local v2, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const-string v6, "ImsPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialing w/ mmi \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    if-nez v2, :cond_4

    .line 668
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 669
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 670
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 671
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result v6

    if-nez v6, :cond_6

    .line 674
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cs_fallback"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 676
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 678
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V

    goto :goto_0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "ImsPhone"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 269
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 4

    .prologue
    .line 1488
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1489
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1491
    :cond_0
    const-string v2, "ImsPhone"

    const-string v3, "exitEmergencyCallbackMode()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    .line 1497
    .local v1, "ecbm":Lcom/android/ims/ImsEcbm;
    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    .end local v1    # "ecbm":Lcom/android/ims/ImsEcbm;
    :goto_0
    return-void

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    .line 392
    return-void
.end method

.method public bridge synthetic getAllCellInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 978
    const-string v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallBarring facility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v3, 0x33

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 983
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 984
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCallForwardingIndicator()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 310
    const/4 v0, -0x1

    .line 311
    .local v0, "callForwardingIndicator":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 312
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isCallForwardStatusStored()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v0

    .line 316
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallForwardingFlag()I

    move-result v0

    .line 319
    :cond_1
    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVideoCallForwardingPreference()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceServiceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1756
    const-string v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingOption reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "serviceclass ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1759
    const-string v3, "ImsPhone"

    const-string v4, "requesting call forwarding query."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/16 v3, 0xd

    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1764
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 1765
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p2, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    :goto_0
    return-void

    .line 1767
    .restart local v1    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1770
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    if-eqz p3, :cond_0

    .line 1771
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 861
    const-string v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingOption reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    const-string v3, "ImsPhone"

    const-string v4, "requesting call forwarding query."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/16 v3, 0xd

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 868
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 869
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    :goto_0
    return-void

    .line 870
    .restart local v1    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 873
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_0

    .line 874
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 924
    const-string v3, "ImsPhone"

    const-string v4, "getCallWaiting"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/16 v3, 0x35

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 929
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 930
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method getCommandException(I)Lcom/android/internal/telephony/CommandException;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    return-object v0
.end method

.method getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "code"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .prologue
    .line 1068
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommandException code= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorString= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1072
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    sparse-switch p1, :sswitch_data_0

    .line 1085
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object v1

    .line 1074
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1075
    goto :goto_0

    .line 1077
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    .line 1078
    goto :goto_0

    .line 1080
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1072
    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_2
        0x335 -> :sswitch_1
    .end sparse-switch
.end method

.method getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1092
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    instance-of v1, p1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1093
    check-cast v1, Lcom/android/ims/ImsException;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    .line 1095
    :cond_0
    const-string v1, "ImsPhone"

    const-string v2, "getCommandException generic failure"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataEnabled()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v0, "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1175
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1181
    .end local v0    # "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    :goto_0
    return-object v0

    .restart local v0    # "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 830
    const-string v3, "ImsPhone"

    const-string v4, "getCLIR"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v3, 0x37

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 835
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 836
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1233
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 579
    :goto_0
    return v1

    .line 548
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 549
    goto :goto_0

    .line 552
    :cond_1
    const/4 v1, 0x0

    .line 553
    .local v1, "result":Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 556
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 558
    goto :goto_0

    .line 560
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 562
    goto :goto_0

    .line 564
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 565
    goto :goto_0

    .line 567
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 568
    goto :goto_0

    .line 570
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 571
    goto :goto_0

    .line 573
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 574
    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1342
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1345
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v10, "ImsPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1446
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1349
    :sswitch_0
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    move-object v8, v10

    check-cast v8, [Ljava/lang/String;

    .line 1350
    .local v8, "states":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1351
    .local v9, "type":I
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    if-eqz v8, :cond_0

    array-length v10, v8

    const/4 v11, 0x3

    if-le v10, v11, :cond_0

    .line 1352
    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1353
    const/16 v10, 0xe

    if-eq v9, v10, :cond_1

    const/16 v10, 0x13

    if-eq v9, v10, :cond_1

    .line 1355
    const-string v10, "ImsPhone"

    const-string v11, "no LTE not display ims icon"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon(Z)V

    .line 1357
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendImsNetworkStateBroadcast(Z)V

    goto :goto_0

    .line 1359
    :cond_1
    const-string v10, "ImsPhone"

    const-string v11, "LTE display ims icon"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon(Z)V

    .line 1361
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendImsNetworkStateBroadcast(Z)V

    goto :goto_0

    .line 1366
    .end local v8    # "states":[Ljava/lang/String;
    .end local v9    # "type":I
    :sswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x2e

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 1371
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon(Z)V

    goto :goto_0

    .line 1375
    :sswitch_3
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v4

    .line 1377
    .local v4, "mImsMgr":Lcom/android/ims/ImsManager;
    if-eqz v4, :cond_0

    .line 1378
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v10, v11}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1384
    .end local v4    # "mImsMgr":Lcom/android/ims/ImsManager;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 1385
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    .line 1386
    .local v1, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    iget-boolean v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    if-eqz v5, :cond_2

    .line 1387
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingPreference(Z)V

    .line 1388
    const/4 v11, 0x1

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-object v12, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v5, v11, v10, v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1390
    :cond_2
    iget-object v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    const/4 v11, 0x0

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v10, v11, v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateCallForwardStatus()V

    goto/16 :goto_0

    .line 1387
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 1388
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 1395
    .end local v1    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_5
    const/4 v2, 0x0

    .line 1396
    .local v2, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 1397
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/ims/ImsCallForwardInfo;

    check-cast v10, [Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    .line 1399
    :cond_5
    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1400
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateCallForwardStatus()V

    goto/16 :goto_0

    .line 1405
    .end local v2    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :sswitch_6
    const/4 v7, 0x0

    .line 1406
    .local v7, "ssInfos":[I
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_6

    .line 1407
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x33

    if-ne v10, v11, :cond_7

    .line 1408
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/ims/ImsSsInfo;

    check-cast v10, [Lcom/android/ims/ImsSsInfo;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v7

    .line 1413
    :cond_6
    :goto_3
    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v10, v7, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1409
    :cond_7
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x35

    if-ne v10, v11, :cond_6

    .line 1410
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/ims/ImsSsInfo;

    check-cast v10, [Lcom/android/ims/ImsSsInfo;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v7

    goto :goto_3

    .line 1417
    .end local v7    # "ssInfos":[I
    :sswitch_7
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 1418
    .local v6, "ssInfo":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1419
    .local v3, "clirInfo":[I
    if-eqz v6, :cond_8

    .line 1420
    const-string v10, "queryClir"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 1422
    :cond_8
    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v10, v3, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1426
    .end local v3    # "clirInfo":[I
    .end local v6    # "ssInfo":Landroid/os/Bundle;
    :sswitch_8
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_9

    .line 1427
    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveClirSetting(I)V

    .line 1432
    :cond_9
    :sswitch_9
    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    const/4 v11, 0x0

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v10, v11, v12}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1436
    :sswitch_a
    const-string v10, "ImsPhone"

    const-string v11, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    goto/16 :goto_0

    .line 1441
    :sswitch_b
    const-string v10, "ImsPhone"

    const-string v11, "EVENT_GET_CALLFORWARDING_STATUS"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1346
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x27 -> :sswitch_b
        0x2c -> :sswitch_2
        0x2d -> :sswitch_1
        0x2e -> :sswitch_0
        0x32 -> :sswitch_9
        0x33 -> :sswitch_6
        0x34 -> :sswitch_9
        0x35 -> :sswitch_6
        0x36 -> :sswitch_8
        0x37 -> :sswitch_7
        0x38 -> :sswitch_a
        0x39 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x1

    .line 1550
    packed-switch p1, :pswitch_data_0

    .line 1570
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :goto_0
    return-void

    .line 1552
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1553
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1554
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1556
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1560
    :pswitch_1
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1562
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1563
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1564
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1566
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initiateSilentRedial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1191
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    .line 1192
    .local v1, "result":Ljava/lang/String;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1193
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 584
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 585
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 587
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isUtEnabled()Z
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoWifiCallingEnabled()Z
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method public isVowifiEnabled()Z
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "isVideoCapable"    # Z

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyForVideoCapabilityChanged(Z)V

    .line 619
    return-void
.end method

.method notifyIncomingRing()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 730
    const-string v1, "ImsPhone"

    const-string v2, "notifyIncomingRing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 732
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    .line 733
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 594
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v4, 0x0

    .line 1777
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyServiceStateChangedP to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, p1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1779
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mServiceStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1780
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    .line 1187
    return-void
.end method

.method public notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 5
    .param p1, "suppSvc"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    const/4 v4, 0x0

    .line 536
    const-string v1, "ImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySuppSvcNotification: suppSvc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, p1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 539
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 540
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 614
    return-void
.end method

.method public onFeatureCapabilityChanged()V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    .line 1584
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 1585
    return-void

    .line 1584
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onIncomingUSSD(ILjava/lang/String;)V
    .locals 10
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1110
    const-string v7, "ImsPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onIncomingUSSD ussdMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    if-ne p1, v2, :cond_2

    move v3, v2

    .line 1118
    .local v3, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    .line 1122
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v0, 0x0

    .line 1123
    .local v0, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 1124
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1125
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 1130
    .restart local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_0
    if-eqz v0, :cond_6

    .line 1132
    if-eqz v2, :cond_5

    .line 1133
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    .line 1150
    :cond_1
    :goto_3
    return-void

    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRequest":Z
    .end local v5    # "s":I
    :cond_2
    move v3, v6

    .line 1115
    goto :goto_0

    .restart local v3    # "isUssdRequest":Z
    :cond_3
    move v2, v6

    .line 1118
    goto :goto_1

    .line 1123
    .restart local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v1    # "i":I
    .restart local v2    # "isUssdError":Z
    .restart local v5    # "s":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1135
    :cond_5
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1142
    :cond_6
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 1144
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v4

    .line 1147
    .local v4, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_3
.end method

.method onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1168
    :cond_1
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    return-void
.end method

.method public processDisconnectReason(Lcom/android/ims/ImsReasonInfo;)V
    .locals 19
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1684
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_5

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 1690
    .local v17, "wfcOperatorErrorCodes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070057

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 1693
    .local v16, "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070058

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 1697
    .local v18, "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v10, v1, :cond_5

    .line 1699
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    aget-object v3, v17, v10

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1697
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1707
    :cond_1
    aget-object v1, v17, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1708
    .local v9, "codeStringLength":I
    aget-object v1, v17, v10

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1709
    .local v11, "lastChar":C
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1710
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_2

    .line 1711
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1712
    .local v14, "nextChar":C
    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    .end local v14    # "nextChar":C
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const v3, 0x10400d4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1721
    .local v15, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1722
    .local v12, "messageAlert":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1723
    .local v13, "messageNotification":Ljava/lang/CharSequence;
    aget-object v1, v16, v10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1724
    aget-object v12, v16, v10

    .line 1726
    :cond_3
    aget-object v1, v18, v10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1727
    aget-object v13, v18, v10

    .line 1731
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 1735
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1736
    .local v2, "intent":Landroid/content/Intent;
    const-string v1, "alertTitle"

    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1737
    const-string v1, "alertMessage"

    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1738
    const-string v1, "notificationMessage"

    invoke-virtual {v2, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1747
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v9    # "codeStringLength":I
    .end local v10    # "i":I
    .end local v11    # "lastChar":C
    .end local v12    # "messageAlert":Ljava/lang/CharSequence;
    .end local v13    # "messageNotification":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    .end local v17    # "wfcOperatorErrorCodes":[Ljava/lang/String;
    .end local v18    # "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForServiceStateChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mServiceStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1208
    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1200
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1218
    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    .line 357
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    const-string v0, "ImsPhone"

    const-string v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->removeReferences()V

    .line 276
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 277
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 278
    return-void
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 697
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 1479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1481
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1482
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1483
    const-string v1, "ImsPhone"

    const-string v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1036
    const-string v0, "ImsPhone"

    const-string v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1040
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1042
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1055
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    if-eqz p1, :cond_0

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1058
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1060
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1046
    const-string v0, "ImsPhone"

    const-string v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1049
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1051
    :cond_0
    return-void
.end method

.method sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1027
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1017
    const-string v1, "ImsPhone"

    const-string v2, "sendUssdResponse"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 1019
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1021
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 993
    const-string v4, "ImsPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallBarring facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lockState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/16 v4, 0x32

    invoke-virtual {p0, v4, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 999
    .local v2, "resp":Landroid/os/Message;
    if-eqz p2, :cond_0

    .line 1000
    const/4 v0, 0x1

    .line 1007
    .local v0, "action":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 1009
    .local v3, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v3    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_1
    return-void

    .line 1003
    .end local v0    # "action":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "action":I
    goto :goto_0

    .line 1010
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 11
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 895
    const-string v2, "ImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallForwardingOption action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 900
    new-instance v8, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p6

    invoke-direct {v8, p3, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 903
    .local v8, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    const/16 v3, 0xc

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 907
    .local v10, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 908
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v10    # "resp":Landroid/os/Message;
    :cond_0
    :goto_2
    return-void

    .line 900
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 903
    .restart local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 914
    .restart local v10    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v9

    .line 915
    .local v9, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 917
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v9    # "e":Lcom/android/ims/ImsException;
    .end local v10    # "resp":Landroid/os/Message;
    :cond_3
    if-eqz p6, :cond_0

    .line 918
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 884
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 886
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 942
    const-string v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallWaiting enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/16 v3, 0x34

    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 947
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 948
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, p2, v1}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    .line 939
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setImsRegistered(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1612
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 1614
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsIcon(Z)V

    .line 1616
    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 738
    return-void
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1575
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1576
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 726
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 727
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 844
    const-string v3, "ImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCLIR action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 851
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 852
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, v1}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method setServiceState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 289
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    .line 743
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 304
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method setVoiceRadioTech(I)V
    .locals 1
    .param p1, "radioTech"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 710
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x44

    if-le p1, v0, :cond_1

    .line 711
    :cond_0
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    .line 722
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 363
    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mServiceStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1212
    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1204
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1223
    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1580
    return-void
.end method

.method public updateCallForwardStatus()V
    .locals 4

    .prologue
    .line 328
    const-string v2, "ImsPhone"

    const-string v3, "updateCallForwardStatus"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 330
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isCallForwardStatusStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "ImsPhone"

    const-string v3, "Callforwarding info is present on sim"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateParentPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "parentPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    .line 244
    const-string v0, "ImsPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParentPhone - Notify video capability changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 246
    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    return-void
.end method
