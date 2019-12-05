.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_FILES:[Ljava/lang/String;

.field private static final SOUND_NOT_LOADED:I = -0x1

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final SYSTEM_CAMERA_CLICK_SOUND:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field private static final SYSTEM_CAMERA_COUNTDOWN_FAST_SOUND:Ljava/lang/String; = "/system/media/audio/ui/cameraCountdownFast.ogg"

.field private static final SYSTEM_CAMERA_COUNTDOWN_SLOW_SOUND:Ljava/lang/String; = "/system/media/audio/ui/cameraCountdownSlow.ogg"

.field private static final SYSTEM_CAMERA_FOCUS_SOUND:Ljava/lang/String; = "/system/media/audio/ui/camera_focus.ogg"

.field private static final SYSTEM_VIDEO_RECORD_SOUND:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static final SYSTEM_ZOOM_SOUND:Ljava/lang/String; = "/system/media/audio/ui/ZoomSound.ogg"

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"

.field private static final THEME_CAMERA_CLICK_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/camera_click.ogg"

.field private static final THEME_CAMERA_COUNTDOWN_FAST_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/cameraCountdownFast.ogg"

.field private static final THEME_CAMERA_COUNTDOWN_SLOW_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/cameraCountdownSlow.ogg"

.field private static final THEME_CAMERA_FOCUS_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/camera_focus.ogg"

.field private static final THEME_VIDEO_RECORD_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/VideoRecord.ogg"

.field private static final THEME_ZOOM_SOUND:Ljava/lang/String; = "/data/system/theme/current/audioeffect/ZoomSound.ogg"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/camera_focus.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/ZoomSound.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/system/media/audio/ui/cameraCountdownSlow.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/media/audio/ui/cameraCountdownFast.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v1, Landroid/media/MediaActionSound$1;

    invoke-direct {v1, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 136
    invoke-direct {p0}, Landroid/media/MediaActionSound;->initSoundFiles()V

    .line 138
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 140
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 141
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aput v5, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iput v5, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 146
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaActionSound;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaActionSound;

    .prologue
    .line 48
    iget v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/MediaActionSound;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaActionSound;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    return p1
.end method

.method private initSoundFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 248
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/current/audioeffect/camera_click.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/data/system/theme/current/audioeffect/camera_click.ogg"

    aput-object v3, v1, v2

    .line 253
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/camera_focus.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "/data/system/theme/current/audioeffect/camera_focus.ogg"

    aput-object v3, v1, v2

    .line 258
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/VideoRecord.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "/data/system/theme/current/audioeffect/VideoRecord.ogg"

    aput-object v3, v1, v2

    .line 261
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "/data/system/theme/current/audioeffect/VideoRecord.ogg"

    aput-object v3, v1, v2

    .line 264
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/ZoomSound.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "/data/system/theme/current/audioeffect/ZoomSound.ogg"

    aput-object v3, v1, v2

    .line 269
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/cameraCountdownSlow.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const-string v2, "/data/system/theme/current/audioeffect/cameraCountdownSlow.ogg"

    aput-object v2, v1, v4

    .line 274
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/system/theme/current/audioeffect/cameraCountdownFast.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    const-string v2, "/data/system/theme/current/audioeffect/cameraCountdownFast.ogg"

    aput-object v2, v1, v4

    .line 278
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .param p1, "soundName"    # I

    .prologue
    .line 161
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .param p1, "soundName"    # I

    .prologue
    .line 202
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 206
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    .line 208
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    iget v1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    aget v0, v0, p1

    iput v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 241
    :cond_0
    return-void
.end method
