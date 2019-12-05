.class public Lcom/qti/internal/telephony/QtiRadioCapabilityController;
.super Landroid/os/Handler;
.source "QtiRadioCapabilityController.java"


# static fields
.field static final ALLOW_FLEX_MAPPING_ON_INACTIVE_SUB_PROPERTY:Ljava/lang/String; = "persist.radio.flex_map_inactive"

.field private static final DBG:Z = true

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x6

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_CAPS_AVAILABLE:I = 0x3

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED:I = 0x5

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x4

.field private static final FAILURE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRadioCapabilityController"

.field private static final PRIMARY_STACK_ID:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static final VDBG:Z

.field private static final mNumPhones:I

.field private static sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sSetNwModeLock:Ljava/lang/Object;


# instance fields
.field private bothPhonesMappedToSameStack:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mMaxDataAllowed:I

.field private mNeedSetDds:Z

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

.field private mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

.field private mRadioAccessFamily:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    iput-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    .line 92
    iput-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 93
    iput-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 97
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    .line 98
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    .line 99
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    .line 101
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    .line 102
    iput-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 150
    new-instance v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;

    invoke-direct {v2, p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;-><init>(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 129
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 132
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 133
    invoke-static {p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 134
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x6

    invoke-virtual {v2, p0, v3, v5}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x5

    invoke-virtual {v2, p0, v3, v5}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private areAllModemCapInfoReceived()Z
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 250
    :goto_1
    return v1

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 519
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 525
    .local v2, "subId":[I
    :try_start_0
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 544
    .local v0, "networkMode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get slot based N/W mode, val["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 546
    return v0

    .line 527
    .end local v0    # "networkMode":I
    :catch_0
    move-exception v1

    .line 528
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNwMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 529
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v0    # "networkMode":I
    goto :goto_0
.end method

.method private getNumOfRafSupportedForNwMode(II)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 622
    .local v1, "supportedRafMaskForNwMode":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Modem Capabilites are null. Return!!, N/W mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    move v2, v1

    .line 634
    :goto_0
    return v2

    .line 627
    :cond_0
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 629
    .local v0, "nwModeRaf":I
    and-int v1, p2, v0

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nwModeRaf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] raf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supportedRafMaskForNwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 634
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    goto :goto_0
.end method

.method private handleRadioCapsAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    const-string v0, "handleRadioCapsAvailable... "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    goto :goto_0
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 224
    :cond_0
    const-string v3, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 231
    .local v2, "rspId":I
    const v3, 0x8041e

    if-ne v2, v3, :cond_1

    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 233
    .local v1, "response_size":I
    if-gez v1, :cond_3

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mMaxDataAllowed:I

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mMaxDataAllowed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUpdateBindingDone(I)V
    .locals 8
    .param p1, "result"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 260
    iget-boolean v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    if-eqz v6, :cond_0

    if-ne p1, v5, :cond_0

    .line 261
    iput-boolean v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 263
    const-string v6, "persist.radio.flexmap_type"

    const-string v7, "nw_mode"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const-string v6, "dds"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 267
    const-string v6, "handleUpdateBindingDone: set dds "

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 285
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    :cond_0
    if-ne p1, v5, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateNewNwModeToDB()V

    .line 292
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v6, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v6, :cond_5

    .line 293
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendSubscriptionSettings(I)V

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "i":I
    .restart local v1    # "flexMapSupportType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget v6, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v6, :cond_0

    .line 274
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 275
    .local v3, "resp":Landroid/os/Message;
    if-eqz v3, :cond_4

    .line 276
    const-string v6, "handleUpdateBindingDone: try initiate pending flex map req "

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 332
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_3
    return-void

    .line 273
    .restart local v1    # "flexMapSupportType":Ljava/lang/String;
    .restart local v3    # "resp":Landroid/os/Message;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_5
    sget-boolean v6, Lcom/qti/internal/telephony/QtiSubscriptionController;->IS_ROM:Z

    if-nez v6, :cond_6

    .line 298
    const-string v6, "handleUpdateBindingDone bsp need setDdsIfRequired"

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 306
    :cond_6
    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 309
    if-ne p1, v5, :cond_7

    move v4, v5

    :cond_7
    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 312
    const/4 v2, 0x0

    :goto_2
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v4, :cond_a

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "errorCode":I
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 315
    .restart local v3    # "resp":Landroid/os/Message;
    if-eqz v3, :cond_9

    .line 316
    if-eq p1, v5, :cond_8

    .line 317
    const/4 v0, 0x2

    .line 319
    :cond_8
    invoke-direct {p0, v3, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 320
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 325
    .end local v0    # "errorCode":I
    .end local v3    # "resp":Landroid/os/Message;
    :cond_a
    const/4 v2, 0x0

    :goto_3
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v4, :cond_3

    .line 326
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 327
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;

    invoke-virtual {v4}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->queryImei()V

    .line 325
    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 328
    :cond_c
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    .line 329
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;

    invoke-virtual {v4}, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->queryDeviceIdentity()V

    goto :goto_4
.end method

.method private isAnyCallsInProgress()Z
    .locals 4

    .prologue
    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    .line 681
    const/4 v1, 0x1

    .line 685
    :cond_0
    return v1

    .line 679
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyPhoneInEcmState()Z
    .locals 3

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, "isInEcmState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    const/4 v1, 0x1

    .line 696
    :cond_0
    return v1

    .line 690
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isCardAbsent(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 712
    const/4 v0, -0x1

    .line 714
    .local v0, "provisionStatus":I
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 717
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v1, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 721
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFlexMappingAllowedOnInactiveSub()Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "persist.radio.flex_map_inactive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 6
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 492
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v3, v4, [I

    .line 493
    .local v3, "numRafSupported":[I
    const/4 v2, 0x0

    .line 494
    .local v2, "maxNumRafSupported":I
    const/4 v1, 0x0

    .line 497
    .local v1, "isSupported":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 498
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    aget v4, v4, v0

    invoke-direct {p0, p1, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNumOfRafSupportedForNwMode(II)I

    move-result v4

    aput v4, v3, v0

    .line 499
    aget v4, v3, v0

    if-ge v2, v4, :cond_0

    aget v2, v3, v0

    .line 497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    aget v4, v3, p2

    if-ne v4, v2, :cond_2

    const/4 v1, 0x1

    .line 505
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v4, "Supported"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 508
    return v1

    .line 505
    :cond_3
    const-string v4, "Not Supported"

    goto :goto_1
.end method

.method private isUiccProvisionInProgress()Z
    .locals 4

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 704
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v0

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisionInProgress: retVal =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 708
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 834
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 838
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 847
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 110
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    .line 116
    :goto_0
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0

    .line 114
    :cond_0
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyRadioCapsUpdated(Z)V
    .locals 4
    .param p1, "isCrossMapDone"    # Z

    .prologue
    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRadioCapsUpdated: radio caps updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 659
    if-eqz p1, :cond_0

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 667
    return-void
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 347
    return-void
.end method

.method private queryMaxDataAllowed()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mMaxDataAllowed:I

    .line 244
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 673
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 675
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendSubscriptionSettings(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 638
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    .line 641
    .local v2, "type":I
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 644
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    move-object v3, v0

    .line 645
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 647
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 648
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 650
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v4, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 653
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSubscriptionSettings: nwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method private setNWModeInProgressFlag(Z)V
    .locals 2
    .param p1, "newStatus"    # Z

    .prologue
    .line 725
    sget-object v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_0
    iput-boolean p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 727
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 353
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v2

    .line 356
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCurrentStackInfo, current stackId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 356
    goto :goto_1

    .line 360
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 3

    .prologue
    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    aput v2, v1, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method private updateNewNwModeToDB()V
    .locals 6

    .prologue
    .line 552
    const/4 v1, -0x1

    .line 553
    .local v1, "nwModeFromDB":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_1

    .line 554
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 558
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_0

    .line 559
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 561
    .local v2, "subId":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNewNwModeToDB: subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new Nw mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old n/w mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    invoke-static {v3, v4, v0, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 553
    .end local v2    # "subId":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_1
    return-void
.end method

.method private updatePreferredStackIds(Z)V
    .locals 4
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Modem Caps not Available, request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void

    .line 443
    :cond_1
    if-nez p1, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 447
    :cond_2
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncCurrentStackInfo()V

    .line 449
    const/4 v0, 0x0

    .local v0, "curPhoneId":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]supports NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 449
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x0

    .local v1, "otherPhoneId":I
    :goto_1
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_3

    .line 465
    if-ne v1, v0, :cond_6

    .line 463
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  other stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 479
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 484
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aput v3, v2, v1

    goto/16 :goto_2
.end method

.method private declared-synchronized updateStackBindingIfRequired(Z)Z
    .locals 10
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 370
    monitor-enter p0

    const/4 v4, 0x0

    .line 371
    .local v4, "isUpdateStackBindingRequired":Z
    const/4 v6, 0x0

    .line 372
    .local v6, "response":Z
    :try_start_0
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isAnyCallsInProgress()Z

    move-result v0

    .line 373
    .local v0, "callInProgress":Z
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isAnyPhoneInEcmState()Z

    move-result v3

    .line 374
    .local v3, "isInEcmState":Z
    const-string v7, "persist.radio.flexmap_type"

    const-string v8, "nw_mode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const-string v7, "updateStackBindingIfRequired"

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 378
    sget v7, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const-string v7, "nw_mode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 379
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No need to update Stack Bindingm prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ph count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v6

    .line 412
    :goto_0
    monitor-exit p0

    return v7

    .line 384
    :cond_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v7

    if-nez v7, :cond_3

    .line 385
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Call state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ecm state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    move v7, v6

    .line 386
    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isBothPhonesMappedToSameStack()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 390
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->initNormalMappingRequest()Z

    move-result v7

    goto :goto_0

    .line 393
    :cond_4
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updatePreferredStackIds(Z)V

    .line 394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v7, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v7, :cond_5

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " pref stack["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " current stack["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 397
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v7, v7, v2

    iget-object v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v8, v8, v2

    if-eq v7, v8, :cond_6

    .line 399
    const/4 v4, 0x1

    .line 404
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateStackBindingIfRequired, required =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 405
    if-eqz v4, :cond_8

    .line 406
    sget v7, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v5, v7, [Landroid/telephony/RadioAccessFamily;

    .line 407
    .local v5, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    :goto_2
    sget v7, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v7, :cond_7

    .line 408
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    iget-object v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v9, v9, v2

    aget v8, v8, v9

    invoke-direct {v7, v2, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v5, v2

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 394
    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    .restart local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_8
    move v7, v6

    .line 412
    goto/16 :goto_0

    .line 370
    .end local v0    # "callInProgress":Z
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "isInEcmState":Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public getCurrentStackIdForPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMaxDataAllowed()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mMaxDataAllowed:I

    return v0
.end method

.method public getPrimarySub()I
    .locals 2

    .prologue
    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 855
    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getCurrentStackIdForPhoneId(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 859
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 854
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 171
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 172
    .local v2, "phoneId":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_AVAILABLE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 177
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "phoneId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 180
    .local v1, "isServiceReady":Z
    if-eqz v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->queryMaxDataAllowed()V

    goto :goto_0

    .line 184
    .end local v1    # "isServiceReady":Z
    :cond_1
    const-string v3, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 190
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v3, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleRadioCapsAvailable()V

    goto :goto_0

    .line 202
    :pswitch_4
    const-string v3, " EVENT_UPDATE_BINDING_DONE "

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 203
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleUpdateBindingDone(I)V

    goto :goto_0

    .line 207
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 209
    .restart local v2    # "phoneId":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method initNormalMappingRequest()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 801
    const/16 v3, 0x16

    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v7

    .line 803
    .local v7, "maxRaf":I
    invoke-static {v6}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v8

    .line 805
    .local v8, "minRaf":I
    const-string v3, " initNormalMappingRequest  "

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 806
    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 812
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v3, :cond_2

    .line 813
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    if-nez v1, :cond_0

    move v4, v8

    :goto_1
    if-nez v1, :cond_1

    const-string v5, "1"

    :goto_2
    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 815
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_0
    move v4, v7

    .line 813
    goto :goto_1

    :cond_1
    const-string v5, "0"

    goto :goto_2

    .line 818
    :cond_2
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v9, v3, [Landroid/telephony/RadioAccessFamily;

    .line 819
    .local v9, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v1, 0x0

    :goto_3
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v3, :cond_4

    .line 820
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    if-nez v1, :cond_3

    move v3, v7

    :goto_4
    invoke-direct {v4, v1, v3}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v4, v9, v1

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v3, v8

    .line 820
    goto :goto_4

    .line 825
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 826
    const-string v3, " initNormalMappingRequest:  Fail, request in progress "

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 827
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 830
    :goto_5
    return v2

    :cond_5
    move v2, v6

    goto :goto_5
.end method

.method isBothPhonesMappedToSameStack()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 774
    const/4 v0, 0x0

    .line 776
    .local v0, "retVal":Z
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: both Phones mapped same stackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x1

    .line 786
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 789
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isSetNWModeInProgress()Z
    .locals 3

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "retVal":Z
    sget-object v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 734
    :try_start_0
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 735
    monitor-exit v2

    .line 736
    return v0

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 744
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " radioCapabilityUpdated phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 748
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radioCapabilityUpdated: Invalid phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or SetNWModeInProgress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDdsIfRequired(Z)V
    .locals 6
    .param p1, "forceSetDds"    # Z

    .prologue
    .line 757
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 758
    .local v2, "ddsSubId":I
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 759
    .local v1, "ddsPhoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDdsIfRequired: ddsSub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ddsPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " needSetDds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 761
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v3, :cond_2

    .line 763
    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .line 765
    .local v0, "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    if-eqz v0, :cond_1

    .line 766
    invoke-virtual {v0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 768
    :cond_1
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 769
    iget-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 771
    .end local v0    # "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    :cond_2
    return-void
.end method

.method public declared-synchronized setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isUiccProvisionInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: In Progress, nwmode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 584
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :goto_0
    monitor-exit p0

    return-void

    .line 587
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 588
    .local v1, "subId":[I
    const/4 v0, 0x0

    .line 590
    .local v0, "isSubActive":Z
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 594
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 598
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 601
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aput p2, v2, p1

    .line 609
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingAllowedOnInactiveSub()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: store msg, nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 582
    .end local v0    # "isSubActive":Z
    .end local v1    # "subId":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 614
    .restart local v0    # "isSubActive":Z
    .restart local v1    # "subId":[I
    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: sending nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 616
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
