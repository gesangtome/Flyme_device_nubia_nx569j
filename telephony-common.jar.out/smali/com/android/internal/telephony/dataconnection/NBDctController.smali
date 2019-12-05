.class public Lcom/android/internal/telephony/dataconnection/NBDctController;
.super Landroid/os/Handler;
.source "NBDctController.java"


# static fields
.field private static final DBG:Z = true

.field private static final DUMMY_SUB_ID_BASE:I = 0x7ffffffb

.field private static final EVENT_SET_DEFAULT_SUB_DATA_TRUE:I = 0x2

.field private static final EVENT_SET_SUBID_PHONEID:I = 0x1

.field private static final EVETN_SET_IA_APN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "NBDctController"


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private final mPhoneCount:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 37
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 38
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 39
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mPhoneCount:I

    .line 40
    return-void
.end method

.method private isSubAndPhoneValid(II)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "isValid":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7ffffffb

    if-lt p1, v1, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 89
    :cond_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    const/4 v0, 0x0

    .line 92
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSubAndPhoneValid  isValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->logd(Ljava/lang/String;)V

    .line 94
    return v0
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "NBDctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "NBDctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private setDefaultDataTrue(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/NBDctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 109
    return-void
.end method

.method private setNonDefaultDataFalse(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .local v0, "arr$":[Lcom/android/internal/telephony/PhoneProxy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 99
    .local v3, "phone":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneId()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 100
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7, p1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneProxy;
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/NBDctController;->logd(Ljava/lang/String;)V

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/NBDctController;->setNonDefaultDataFalse(I)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/NBDctController;->setDefaultDataTrue(I)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultDataSubIfWifiConnect(II)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    .line 43
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mPhoneCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 44
    const-string v1, "one phone"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->logd(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/NBDctController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 48
    .local v0, "nwInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_2

    .line 50
    :cond_1
    const-string v1, "set data allow not need"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/NBDctController;->isSubAndPhoneValid(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    const-string v1, "subId or phoneId is invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/internal/telephony/dataconnection/NBDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->sendMessage(Landroid/os/Message;)Z

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataSubIfWifiConnect  subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/NBDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
