.class public Lcom/android/server/policy/TouchGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

.field private static final TAG:Ljava/lang/String; = "TouchGesturePolicy"


# instance fields
.field private isScreenSaverShow:Z

.field private mContext:Landroid/content/Context;

.field mDbStatus:Z

.field private mGestureListener:Lnubia/gesture/touch/GestureListener;

.field private mGestureMode:I

.field private mHandler:Landroid/os/Handler;

.field private mMultiFingerMove:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

.field private pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v1, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 240
    new-instance v1, Lcom/android/server/policy/TouchGestureFuncsCtrl$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$4;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 64
    iput-object p2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v1, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    invoke-direct {v1, p1, p2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->isScreenSaverShow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/TouchGestureFuncsCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->isScreenSaverShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->takeSnot()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->doPalmCoverLockScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lnubia/gesture/touch/GestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doPalmCoverLockScreen()V
    .locals 6

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "isValid":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 226
    .local v2, "telephonyManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    const-string v3, "TouchGesturePolicy"

    const-string v4, "palm error because phone"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v2    # "telephonyManager":Landroid/telecom/TelecomManager;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v2    # "telephonyManager":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x1

    .line 234
    .end local v2    # "telephonyManager":Landroid/telecom/TelecomManager;
    :goto_1
    if-eqz v1, :cond_0

    .line 237
    iget-object v3, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "TouchGesturePolicy"

    const-string v4, "getPhoneInterface() error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private takeSnot()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method


# virtual methods
.method public disableTouchGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 188
    iput-object v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0}, Lnubia/gesture/touch/GestureManager;->unDetect(Lnubia/gesture/touch/GestureListener;)V

    .line 192
    iput-object v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-nez v0, :cond_2

    .line 195
    const-string v0, "persist.sys.gesture.capture"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void
.end method

.method public enableTouchGesture()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$2;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Lnubia/gesture/touch/GestureArg;

    const/4 v1, 0x0

    new-instance v2, Lnubia/gesture/touch/PalmCoverArg;

    invoke-direct {v2}, Lnubia/gesture/touch/PalmCoverArg;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lnubia/gesture/touch/MultiPointArg;

    invoke-direct {v2}, Lnubia/gesture/touch/MultiPointArg;-><init>()V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0, v1}, Lnubia/gesture/touch/GestureManager;->detect([Lnubia/gesture/touch/GestureArg;Lnubia/gesture/touch/GestureListener;)Lnubia/gesture/touch/ListenerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnubia/gesture/touch/ListenerClient;->setContext(Landroid/content/Context;)V

    .line 178
    iget-boolean v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "persist.sys.gesture.capture"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    const-string v0, "multi_point_up"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    const-string v0, "multi_point_right"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    const-string v0, "multi_point_left"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    const-string v0, "palm_cover"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    return-void
.end method

.method public updateSettings()V
    .locals 11

    .prologue
    const/4 v9, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 92
    iget-object v6, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 93
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "multi_point_up"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 95
    .local v5, "upMove":I
    const-string v6, "palm_cover"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 97
    .local v2, "palmCover":I
    const-string v6, "multi_point_left"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 99
    .local v1, "leftMove":I
    const-string v6, "multi_point_right"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 101
    .local v4, "rightMove":I
    const-string v6, "TouchGesturePolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "upMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " leftMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rightMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " palmCover = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    or-int v6, v5, v2

    or-int/2addr v6, v1

    or-int v0, v6, v4

    .line 104
    .local v0, "gestureMode":I
    if-eq v5, v8, :cond_0

    if-eq v1, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    move v6, v8

    :goto_0
    iput-boolean v6, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    .line 106
    iget-object v6, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    if-eq v1, v8, :cond_1

    if-ne v4, v8, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    invoke-virtual {v6, v7}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->setEnable(Z)V

    .line 108
    iget v6, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eq v6, v0, :cond_3

    .line 109
    iput v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureMode:I

    .line 110
    iget v6, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eqz v6, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->enableTouchGesture()V

    .line 117
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v6, v7

    .line 104
    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->disableTouchGesture()V

    goto :goto_1
.end method
