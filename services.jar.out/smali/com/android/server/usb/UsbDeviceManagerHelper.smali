.class public Lcom/android/server/usb/UsbDeviceManagerHelper;
.super Ljava/lang/Object;
.source "UsbDeviceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;
    }
.end annotation


# static fields
.field private static final CHARGE_SOUND:Ljava/lang/String; = "/system/media/audio/ui/charge.ogg"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbDMHelper"


# instance fields
.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

.field private mIsChanging:Z

.field private mSound:Landroid/media/SoundPool;

.field private mSoundId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    .line 62
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->init()V

    .line 64
    new-instance v0, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;-><init>(Lcom/android/server/usb/UsbDeviceManagerHelper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mHandler:Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManagerHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManagerHelper;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/usb/UsbDeviceManagerHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManagerHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManagerHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManagerHelper;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->playSound()V

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 157
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v3

    .line 158
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 161
    .local v1, "ri":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->initSound()V

    .line 69
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->initReceiver()V

    .line 70
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/android/server/usb/UsbDeviceManagerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManagerHelper$1;-><init>(Lcom/android/server/usb/UsbDeviceManagerHelper;)V

    .line 99
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method private initSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 73
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 76
    .local v0, "attributes":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    .line 77
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/charge.ogg"

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    .line 78
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    if-nez v1, :cond_0

    .line 79
    const-string v1, "UsbDMHelper"

    const-string v2, "failed to load sound from /system/media/audio/ui/charge.ogg"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method private isInCallUI(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 167
    if-eqz p1, :cond_0

    const-string v0, "com.android.incallui.InCallActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInHome(Landroid/content/ComponentName;)Z
    .locals 9
    .param p1, "activity"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v5

    .line 173
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 176
    .local v0, "defaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 177
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 178
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v6

    .line 181
    .local v3, "isHome":Z
    :goto_1
    if-eqz v3, :cond_2

    move v5, v6

    goto :goto_0

    .end local v3    # "isHome":Z
    :cond_3
    move v3, v5

    .line 178
    goto :goto_1

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method private markChanging()V
    .locals 4

    .prologue
    .line 128
    const-string v0, "UsbDMHelper"

    const-string v1, "markChanging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    .line 130
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mHandler:Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    return-void
.end method

.method private playSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 103
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    if-nez v0, :cond_1

    .line 104
    const-string v0, "UsbDMHelper"

    const-string v1, "failed to load sound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "UsbDMHelper"

    const-string v1, "play sound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    const/16 v4, 0x64

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private satisfyShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 144
    .local v1, "topActivity":Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManagerHelper;->isInCallUI(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 149
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManagerHelper;->isInHome(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public markBootCompleted()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    .line 135
    return-void
.end method

.method public settingAdbEnable(ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "curEnabled"    # Z

    .prologue
    .line 112
    if-eq p1, p2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->markChanging()V

    .line 115
    :cond_0
    return-void
.end method

.method public settingEnabledFunctions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "curFunctions"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p1, :cond_1

    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->markChanging()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->markChanging()V

    goto :goto_0
.end method

.method public showOptions(ZLandroid/content/Intent;)V
    .locals 1
    .param p1, "isConnected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->satisfyShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    :cond_0
    return-void
.end method
