.class public Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lcom/android/internal/telephony/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# static fields
.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "extphone"

.field private static sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/IExtTelephony$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    .line 58
    const-string v0, "init constructor "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-direct {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    .line 63
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "extphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    const-class v1, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 46
    :goto_0
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-exit v1

    return-object v0

    .line 44
    :cond_0
    const-string v0, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isPrimaryCarrierMccMnc(Ljava/lang/String;)Z
    .locals 9
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 219
    const/16 v7, 0x18

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "405840"

    aput-object v7, v3, v6

    const-string v7, "405854"

    aput-object v7, v3, v5

    const/4 v7, 0x2

    const-string v8, "405855"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "405856"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "405857"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    const-string v8, "405858"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "405859"

    aput-object v8, v3, v7

    const/4 v7, 0x7

    const-string v8, "405860"

    aput-object v8, v3, v7

    const/16 v7, 0x8

    const-string v8, "405861"

    aput-object v8, v3, v7

    const/16 v7, 0x9

    const-string v8, "405862"

    aput-object v8, v3, v7

    const/16 v7, 0xa

    const-string v8, "405863"

    aput-object v8, v3, v7

    const/16 v7, 0xb

    const-string v8, "405864"

    aput-object v8, v3, v7

    const/16 v7, 0xc

    const-string v8, "405865"

    aput-object v8, v3, v7

    const/16 v7, 0xd

    const-string v8, "405866"

    aput-object v8, v3, v7

    const/16 v7, 0xe

    const-string v8, "405867"

    aput-object v8, v3, v7

    const/16 v7, 0xf

    const-string v8, "405868"

    aput-object v8, v3, v7

    const/16 v7, 0x10

    const-string v8, "405869"

    aput-object v8, v3, v7

    const/16 v7, 0x11

    const-string v8, "405870"

    aput-object v8, v3, v7

    const/16 v7, 0x12

    const-string v8, "405871"

    aput-object v8, v3, v7

    const/16 v7, 0x13

    const-string v8, "405872"

    aput-object v8, v3, v7

    const/16 v7, 0x14

    const-string v8, "405873"

    aput-object v8, v3, v7

    const/16 v7, 0x15

    const-string v8, "405874"

    aput-object v8, v3, v7

    const/16 v7, 0x16

    const-string v8, "22201"

    aput-object v8, v3, v7

    const/16 v7, 0x17

    const-string v8, "2221"

    aput-object v8, v3, v7

    .line 224
    .local v3, "mccMncList":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 225
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Found a matching combination "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 231
    .end local v4    # "mccmnc":Ljava/lang/String;
    :goto_1
    return v5

    .line 224
    .restart local v4    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Not found a matching combination  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 231
    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    return v0
.end method

.method public getPhoneIdForECall()I
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/qti/internal/telephony/QtiEmergencyCallHelper;->getPhoneIdForECall()I

    move-result v0

    return v0
.end method

.method public getPrimaryCarrierSlotId()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 182
    const/4 v4, -0x1

    .line 183
    .local v4, "slotId":I
    iget-object v8, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 185
    .local v7, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 187
    .local v1, "matchingCount":I
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v10, :cond_1

    .line 188
    :cond_0
    const-string v8, " No active subscriptions found!! "

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    move v5, v4

    .line 212
    .end local v4    # "slotId":I
    .local v5, "slotId":I
    :goto_0
    return v5

    .line 192
    .end local v5    # "slotId":I
    .restart local v4    # "slotId":I
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 193
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "mccMnc":Ljava/lang/String;
    iget-object v8, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v3

    .line 196
    .local v3, "provisionStatus":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "provisionStatus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " slotId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 198
    if-ne v3, v10, :cond_2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierMccMnc(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Found a matching combination, slotId  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 207
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v3    # "provisionStatus":I
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    if-le v1, v10, :cond_4

    .line 208
    iget-object v8, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "config_current_primary_sub"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    :cond_4
    move v5, v4

    .line 212
    .end local v4    # "slotId":I
    .restart local v5    # "slotId":I
    goto/16 :goto_0
.end method

.method public getPrimaryStackPhoneId()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v0

    return v0
.end method

.method public getUiccApplicationCount(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 128
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 129
    .local v1, "count":I
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v1

    .line 132
    :cond_0
    return v1
.end method

.method public getUiccApplicationState(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    .line 165
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 166
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 167
    .local v0, "appState":I
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v0

    .line 170
    :cond_0
    return v0
.end method

.method public getUiccApplicationType(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    .line 146
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 147
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 148
    .local v0, "appType":I
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    .line 151
    :cond_0
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getUiccCardProvisioningUserPreference(I)I

    move-result v0

    return v0
.end method

.method public getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    return-object v0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 120
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 123
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 102
    return-void
.end method
