.class public Lcom/qti/internal/telephony/gsm/QtiGSMPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "QtiGSMPhone.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtiGSMPhone"


# instance fields
.field protected mEsn:Ljava/lang/String;

.field protected mMeid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget-boolean v2, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    .line 116
    const-string v2, "QtiGSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] while being destroyed. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 135
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 124
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 128
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 129
    .local v1, "respId":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mEsn:Ljava/lang/String;

    .line 130
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mMeid:Ljava/lang/String;

    goto :goto_0

    .line 133
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "respId":[Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_1

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public queryImei()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 86
    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 74
    .local v0, "radioCapController":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 59
    .local v0, "radioCapController":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v1, "QtiGSMPhone"

    const-string v2, " Error: Received null QtiRadioCapabilityController instante "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdownRadio()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->shutdownRadio()V

    .line 91
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "QtiGSMPhone"

    const-string v1, "Shutdown Radio request"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shutdownRequestReceived()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "QtiGSMPhone"

    const-string v1, "QtiSubscriptionController instance is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
