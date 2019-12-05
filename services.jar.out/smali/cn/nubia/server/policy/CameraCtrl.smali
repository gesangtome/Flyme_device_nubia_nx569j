.class public Lcn/nubia/server/policy/CameraCtrl;
.super Ljava/lang/Object;
.source "CameraCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final ON_TICK_TIME_FOR_SEND_INTENT:J = 0x1f4L

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "CameraCtrl"


# instance fields
.field private final mCameraLongPress:Ljava/lang/Runnable;

.field private mCleckCount:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyCleckTime:J

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeUpCleckCount:I

.field private mVolumeUpCleckTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyguard_locked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 43
    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    iput v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 45
    iput-wide v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    .line 46
    iput v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 47
    iput-wide v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    .line 50
    new-instance v0, Lcn/nubia/server/policy/CameraCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/CameraCtrl$1;-><init>(Lcn/nubia/server/policy/CameraCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcn/nubia/server/policy/CameraCtrl$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/CameraCtrl$2;-><init>(Lcn/nubia/server/policy/CameraCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 62
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/CameraCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/CameraCtrl;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/CameraCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/CameraCtrl;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/CameraCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/CameraCtrl;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCamera()V

    return-void
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private getUserTime()J
    .locals 4

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getVolumeUpUserTime()J
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private handleKeycodeCamera(ZZZ)V
    .locals 4
    .param p1, "down"    # Z
    .param p2, "isScreenOn"    # Z
    .param p3, "up"    # Z

    .prologue
    .line 181
    if-eqz p1, :cond_1

    .line 182
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isCanEnterCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 185
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p3, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleKeycodeVolumeDown(Z)V
    .locals 5
    .param p1, "down"    # Z

    .prologue
    const/4 v4, 0x1

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 165
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    if-ne v0, v4, :cond_1

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->getUserTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 169
    const-string v0, "CameraCtrl"

    const-string v1, "CameraCtrl send captureCamera intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCaptureCamearService()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    goto :goto_0

    .line 174
    :cond_2
    iput v4, p0, Lcn/nubia/server/policy/CameraCtrl;->mCleckCount:I

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mKeyCleckTime:J

    goto :goto_0
.end method

.method private handleKeycodeVolumeUp(Z)V
    .locals 5
    .param p1, "down"    # Z

    .prologue
    const/4 v4, 0x1

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 147
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    if-ne v0, v4, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->getVolumeUpUserTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 151
    const-string v0, "CameraCtrl"

    const-string v1, "CameraCtrl send captureCamera intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCaptureCamearService()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_0

    .line 156
    :cond_2
    iput v4, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckCount:I

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 68
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CameraCtrl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mVibrator:Landroid/os/Vibrator;

    .line 71
    return-void
.end method

.method private isCameraRunning()Z
    .locals 5

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "flag":Z
    iget-object v3, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 258
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 259
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 260
    const-string v4, "com.android.camera"

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 265
    :cond_0
    return v0
.end method

.method private isCanEnterCamera()Z
    .locals 5

    .prologue
    .line 214
    const/4 v0, 0x1

    .line 215
    .local v0, "bconfilc":Z
    iget-object v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visitor"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, "state":I
    const-string v2, "CameraCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez v1, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 87
    :try_start_0
    const-class v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 88
    .local v1, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/policy/PhoneWindowManager;>;"
    const-string v3, "isKeyguardShowingAndNotOccluded"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    iget-object v3, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 105
    .end local v1    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/policy/PhoneWindowManager;>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "CameraCtrl"

    const-string v5, "NoSuchMethodException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "CameraCtrl"

    const-string v5, "IllegalArgumentException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 96
    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "CameraCtrl"

    const-string v5, "IllegalAccessException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 99
    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "CameraCtrl"

    const-string v5, "InvocationTargetException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 102
    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "CameraCtrl"

    const-string v5, "SecurityException in Method isKeyguardShowingAndNotOccluded"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 105
    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_0
.end method

.method private setScreenOn()V
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 248
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v2, 0x10000006

    const-string v3, "CameraCtrl"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 251
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 252
    return-void
.end method

.method private startCamera()V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->closeCamera()V

    .line 230
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->setScreenOn()V

    .line 233
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x2d

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 234
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcn/nubia/server/policy/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    .line 243
    :cond_2
    return-void

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v0, Lcn/nubia/server/policy/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private startCaptureCamearService()V
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.captureCamera.CaptureCameraService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    .line 119
    .local v0, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcn/nubia/server/policy/CameraCtrl;->startCamera()V

    .line 124
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 131
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 132
    .local v1, "up":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    .line 133
    invoke-direct {p0, v0, p3, v1}, Lcn/nubia/server/policy/CameraCtrl;->handleKeycodeCamera(ZZZ)V

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/CameraCtrl;->handleKeycodeVolumeDown(Z)V

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_2

    .line 139
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/CameraCtrl;->handleKeycodeVolumeUp(Z)V

    .line 141
    :cond_2
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .end local v0    # "down":Z
    .end local v1    # "up":Z
    :cond_3
    move v0, v3

    .line 130
    goto :goto_0

    .restart local v0    # "down":Z
    :cond_4
    move v1, v3

    .line 131
    goto :goto_1
.end method
