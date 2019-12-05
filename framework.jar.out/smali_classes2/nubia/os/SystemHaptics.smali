.class public Lnubia/os/SystemHaptics;
.super Lnubia/os/Haptics;
.source "SystemHaptics.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemHaptics"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lnubia/os/IHapticsService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lnubia/os/Haptics;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 32
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mPackageName:Ljava/lang/String;

    .line 33
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    .line 35
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "SystemHaptics"

    const-string v1, "SystemHaptics construct null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemHaptics mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 40
    return-void

    .line 38
    :cond_0
    const-string v0, "SystemHaptics"

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Lnubia/os/Haptics;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mPackageName:Ljava/lang/String;

    .line 44
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    .line 46
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 1
    .param p1, "log_str"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v0, "SystemHaptics"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method public getDefaultRingHapticsName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 267
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lnubia/os/IHapticsService;->getDefaultRingHapticsName(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsName()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "RingNames":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsName mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-object v0

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lnubia/os/IHapticsService;->getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValue(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValue mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 252
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-object v0

    .line 255
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lnubia/os/IHapticsService;->getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "RingValues":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValues mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 237
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-object v0

    .line 240
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lnubia/os/IHapticsService;->getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playEffectSeqBuff([BI)V
    .locals 2
    .param p1, "Sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Lnubia/os/IHapticsService;->playEffectSeqBuff([BILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequenceRepeat mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 156
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Lnubia/os/IHapticsService;->playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playPatternRTP(IIII)V
    .locals 6
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playPatternRTP mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v5, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lnubia/os/IHapticsService;->playPatternRTP(IIIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRTPSeqBuff([BI)V
    .locals 2
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRTPSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Lnubia/os/IHapticsService;->playRTPSeqBuff([BILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRTPSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRTPSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRingHaptics(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingHaptics mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 195
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lnubia/os/IHapticsService;->playRingHaptics(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playRingSeq(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingSeq mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 209
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lnubia/os/IHapticsService;->playRingSeq(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playTimedEffect(I)V
    .locals 2
    .param p1, "effectDuration"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTimedEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playTimedEffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffect(I)V
    .locals 2
    .param p1, "effectID"    # I

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playeffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playeffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffectforce(I)V
    .locals 2
    .param p1, "effectID"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playeffectforce mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playeffectforce(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 181
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopPlayingEffect()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlayingEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lnubia/os/IHapticsService;->stopPlayingEffect(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method
