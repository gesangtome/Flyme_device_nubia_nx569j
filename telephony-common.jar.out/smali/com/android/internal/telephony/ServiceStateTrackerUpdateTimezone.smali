.class public Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
.super Ljava/lang/Object;
.source "ServiceStateTrackerUpdateTimezone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$1;,
        Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;
    }
.end annotation


# static fields
.field private static final ACTION_NUBIA_UPDATE_TIMEZONE:Ljava/lang/String; = "nubia.phone.action.UPDATE_TIMEZONE"

.field private static final EVENT_DELAY_SEND_UPDATE_TIMEZONE:I = 0x0

.field private static final EXTRA_ISO:Ljava/lang/String; = "iso"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final TIME_DELAY_SEND_UPDATE_TIMEZONE:I = 0x2710

.field private static mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mPhoneId:I

.field private mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "au"

    aput-object v2, v1, v4

    const-string v2, "Australia/Sydney"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "br"

    aput-object v2, v1, v4

    const-string v2, "America/Sao_Paulo"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ca"

    aput-object v2, v1, v4

    const-string v2, "America/Toronto"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cl"

    aput-object v3, v2, v4

    const-string v3, "America/Santiago"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cn"

    aput-object v3, v2, v4

    const-string v3, "Asia/Shanghai"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "es"

    aput-object v3, v2, v4

    const-string v3, "Europe/Madrid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fm"

    aput-object v3, v2, v4

    const-string v3, "Pacific/Ponape"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gl"

    aput-object v3, v2, v4

    const-string v3, "America/Godthab"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v4

    const-string v3, "Asia/Jakarta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kz"

    aput-object v3, v2, v4

    const-string v3, "Asia/Almaty"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mn"

    aput-object v3, v2, v4

    const-string v3, "Asia/Ulaanbaatar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mx"

    aput-object v3, v2, v4

    const-string v3, "America/Mexico_City"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pf"

    aput-object v3, v2, v4

    const-string v3, "Pacific/Tahiti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pt"

    aput-object v3, v2, v4

    const-string v3, "Europe/Lisbon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ru"

    aput-object v3, v2, v4

    const-string v3, "Europe/Moscow"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "us"

    aput-object v3, v2, v4

    const-string v3, "America/New_York"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    .line 52
    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    .line 83
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->LOG_TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    invoke-direct {v0, p0, v7}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;-><init>(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->sendBroadcastForTimezone(Ljava/lang/String;)V

    return-void
.end method

.method private getPrevOperatorIso()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 195
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "gsm.operator.numeric"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "prevOperatorNumericFromShared":Ljava/lang/String;
    const-string v1, ""

    .line 199
    .local v1, "iso":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_1

    :cond_0
    move-object v2, v1

    .line 211
    .end local v1    # "iso":Ljava/lang/String;
    .local v2, "iso":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 202
    .end local v2    # "iso":Ljava/lang/String;
    .restart local v1    # "iso":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 204
    .local v3, "mcc":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 211
    .end local v1    # "iso":Ljava/lang/String;
    .restart local v2    # "iso":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v2    # "iso":Ljava/lang/String;
    .restart local v1    # "iso":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrevOperatorIso: countryCodeForMcc error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrevOperatorIso: countryCodeForMcc error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getTimeZoneAndSendMsg(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "iso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    const/4 v3, 0x0

    .line 184
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "tzID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    invoke-virtual {v2, v3, v3, v3, p2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    return-object v0
.end method

.method private getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 168
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v2

    .line 171
    :cond_1
    const/4 v1, 0x0

    .line 173
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uses TimeZone of Capital City:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    .line 180
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 173
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSTUpdateTZ-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSTUpdateTZ-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private sendBroadcastForTimezone(Ljava/lang/String;)V
    .locals 3
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    const-string v1, "phone is null. This cannot be possbile"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->loge(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.phone.action.UPDATE_TIMEZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "iso"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "phone_id"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 164
    const-string v1, "sendBroadcastForTimezone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getNitzUpdatedTime()Z
    .locals 5

    .prologue
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNitzUpdatedTime mNitzUpdatedTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "nitzUpdatedTime":Z
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 96
    .local v1, "nitzUT":Z
    if-eqz v1, :cond_0

    .line 97
    const/4 v2, 0x1

    .line 101
    .end local v1    # "nitzUT":Z
    :cond_1
    return v2
.end method

.method public handleTimezoneFromTzdata(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "iso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getNitzUpdatedTime()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v3

    .line 108
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 114
    .local v1, "currTimeZone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 115
    .local v3, "tzID":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getPrevOperatorIso()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "preIso":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTimezoneFromTzdata timezone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getTimeZoneAndSendMsg(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 123
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getTimeZoneAndSendMsg(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public handleTimezoneFromUser()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 130
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    const-string v10, "gsm.operator.iso-country"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "iso":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v7

    .line 135
    :cond_1
    invoke-static {v4}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 136
    .local v8, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 141
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 143
    .local v1, "currTimeZone":Ljava/util/TimeZone;
    const/4 v7, 0x0

    .line 144
    .local v7, "tzID":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 145
    .local v2, "currTimezoneOffset":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    .line 146
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, v2, :cond_2

    .line 147
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 151
    .end local v6    # "tz":Ljava/util/TimeZone;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleTimezoneFromUser tz="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNitzUpdatedTime(Z)V
    .locals 3
    .param p1, "nitzUpdatedTime"    # Z

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNitzUpdatedTime mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    .line 90
    return-void
.end method
