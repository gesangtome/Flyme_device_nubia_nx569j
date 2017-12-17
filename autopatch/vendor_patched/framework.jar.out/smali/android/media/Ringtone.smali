.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Ringtone$MyOnCompletionListener;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final TAG:Ljava/lang/String; = "Ringtone"

.field private static final sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusChangeListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mIsLooping:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mPlaybackSettingsLock:Ljava/lang/Object;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    .line 90
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/Ringtone;->mVolume:F

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 104
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 105
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 106
    return-void

    :cond_1
    move-object v0, v1

    .line 104
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/Ringtone;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioFocusChangeListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Landroid/media/Ringtone;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private applyPlaybackProperties_sync()V
    .locals 5

    .prologue
    .line 188
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 190
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    const-string v2, "Problem setting playback properties: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "Ringtone"

    const-string v2, "Neither local nor remote player available when applying playback properties"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 395
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 397
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v1

    .line 398
    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    monitor-exit v1

    .line 401
    :cond_0
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 221
    .local v1, "res":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 223
    .local v14, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "authority":Ljava/lang/String;
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    if-eqz p2, :cond_0

    .line 230
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 231
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 237
    .local v8, "actualUri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {p0, v8, v2, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "actualTitle":Ljava/lang/String;
    const v2, #android:string@ringtone_default_with_actual#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 280
    .end local v7    # "actualTitle":Ljava/lang/String;
    .end local v8    # "actualUri":Landroid/net/Uri;
    .end local v10    # "authority":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v14, :cond_1

    const v2, #android:string@ringtone_unknown#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    const-string v14, ""

    :cond_1
    move-object v2, v14

    :goto_2
    return-object v2

    .restart local v10    # "authority":Ljava/lang/String;
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .restart local v8    # "actualUri":Landroid/net/Uri;
    goto :goto_0

    .line 244
    .end local v8    # "actualUri":Landroid/net/Uri;
    :cond_3
    const/4 v11, 0x0

    .line 246
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "media"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    if-eqz p3, :cond_5

    const/4 v4, 0x0

    .line 248
    .local v4, "mediaSelection":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 249
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 250
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 269
    if-eqz v11, :cond_4

    .line 270
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 247
    .end local v4    # "mediaSelection":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v4, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 269
    :cond_6
    if-eqz v11, :cond_7

    .line 270
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_7
    const/4 v11, 0x0

    .line 274
    :goto_4
    if-nez v14, :cond_0

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 255
    :catch_0
    move-exception v12

    .line 256
    .local v12, "e":Ljava/lang/SecurityException;
    const/4 v13, 0x0

    .line 257
    .local v13, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    if-eqz p3, :cond_8

    .line 258
    :try_start_2
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 260
    .local v9, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 262
    .end local v9    # "audioManager":Landroid/media/AudioManager;
    :cond_8
    if-eqz v13, :cond_9

    .line 264
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 269
    :cond_9
    :goto_5
    if-eqz v11, :cond_a

    .line 270
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_a
    const/4 v11, 0x0

    .line 273
    goto :goto_4

    .line 269
    .end local v12    # "e":Ljava/lang/SecurityException;
    .end local v13    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_b

    .line 270
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_b
    const/4 v11, 0x0

    throw v2

    .line 265
    .restart local v12    # "e":Ljava/lang/SecurityException;
    .restart local v13    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :catch_1
    move-exception v2

    goto :goto_5
.end method

.method private playFallbackRingtone()Z
    .locals 10

    .prologue
    .line 436
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v9

    .line 440
    .local v9, "subId":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:raw@fallbackring#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 447
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_2

    .line 448
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 449
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 456
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 457
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 459
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 461
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 462
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 463
    const/4 v0, 0x1

    .line 477
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "subId":I
    :goto_1
    return v0

    .line 452
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "subId":I
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 467
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 468
    .local v7, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 469
    const-string v0, "Ringtone"

    const-string v1, "Failed to open fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "subId":I
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 459
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "subId":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 470
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 471
    .local v8, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "Ringtone"

    const-string v1, "Fallback ringtone does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 465
    .end local v8    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_2
    :try_start_5
    const-string v0, "Ringtone"

    const-string v1, "Could not load fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 474
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_3
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not playing fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private startLocalPlayer()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v1

    .line 408
    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 411
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 489
    :cond_0
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 421
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 431
    :goto_0
    return v1

    .line 422
    :cond_0
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_1

    .line 424
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 7

    .prologue
    .line 343
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioFocusChangeListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioFocusChangeListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 355
    :cond_2
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    .line 359
    .local v2, "canonicalUri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-boolean v5, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 361
    .local v5, "looping":Z
    iget v4, p0, Landroid/media/Ringtone;->mVolume:F

    .line 362
    .local v4, "volume":F
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :try_start_1
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface/range {v0 .. v5}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v6

    .line 366
    .local v6, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem playing ringtone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v4    # "volume":F
    .end local v5    # "looping":Z
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 371
    .end local v2    # "canonicalUri":Landroid/net/Uri;
    :cond_3
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string v0, "Ringtone"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 145
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 146
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "looping"    # Z

    .prologue
    .line 163
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 165
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 119
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 301
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 302
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 312
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 313
    iget-object v2, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 315
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 327
    const-string v1, "Ringtone"

    const-string v2, "Successfully created local player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 320
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_1

    .line 321
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "Ringtone"

    const-string v2, "Problem opening; delegating to remote player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 176
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 178
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 179
    :cond_1
    :try_start_0
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 180
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 382
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_0

    .line 385
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLocalPlayerValid()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playLocal()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setRingVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method
