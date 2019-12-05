.class public Lcn/nubia/server/policy/VolleyGestureCtrl;
.super Ljava/lang/Object;
.source "VolleyGestureCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;


# instance fields
.field private final ORIENTATION_E:I

.field private final ORIENTATION_N:I

.field private final ORIENTATION_S:I

.field private final ORIENTATION_W:I

.field private final SUB_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final VOLLEY_FILTER_CLASS_NAME:[Ljava/lang/String;

.field private final VOLLEY_Followed_FILTER_PACKAGE_NAME:[Ljava/lang/String;

.field private final VOLLEY_WHITE_LIST:Ljava/lang/String;

.field private currPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

.field private mVolleyFilter:Ljava/lang/String;

.field private mVolleyListener:Lnubia/gesture/sensor/MotionListener;

.field private mVolleyMode:I

.field private mVolleyRegistered:Z

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private moveStatus:I

.field private now_x:I

.field private now_y:I

.field screenOnOffFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "TouchGesturePolicy"

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "VolleyGestureCtrl"

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->SUB_TAG:Ljava/lang/String;

    .line 35
    const-string v0, "volley_white_list"

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->VOLLEY_WHITE_LIST:Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.phone.InCallScreen"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->VOLLEY_FILTER_CLASS_NAME:[Ljava/lang/String;

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cn.nubia.launcher"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->VOLLEY_Followed_FILTER_PACKAGE_NAME:[Ljava/lang/String;

    .line 41
    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyMode:I

    .line 42
    iput-object v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    .line 43
    iput-object v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    .line 44
    iput-object v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 45
    iput-boolean v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyRegistered:Z

    .line 46
    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    .line 47
    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    .line 49
    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    .line 50
    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    .line 52
    iput v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->ORIENTATION_N:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->ORIENTATION_S:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->ORIENTATION_W:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->ORIENTATION_E:I

    .line 57
    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    .line 80
    new-instance v0, Lcn/nubia/server/policy/VolleyGestureCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/VolleyGestureCtrl$1;-><init>(Lcn/nubia/server/policy/VolleyGestureCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/VolleyGestureCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/VolleyGestureCtrl;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->enableVolleyGesture()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/VolleyGestureCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/VolleyGestureCtrl;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->disableVolleyGesture()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/VolleyGestureCtrl;Lnubia/gesture/sensor/MotionState;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/VolleyGestureCtrl;
    .param p1, "x1"    # Lnubia/gesture/sensor/MotionState;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->dispatchVolleyEvent(Lnubia/gesture/sensor/MotionState;)V

    return-void
.end method

.method private beginToHandleVolley()V
    .locals 7

    .prologue
    .line 151
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 155
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "clazzName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcn/nubia/server/policy/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "TouchGesturePolicy"

    const-string v5, "[VolleyGestureCtrl]  do Enable Volley Gesture failed!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableVolleyGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    const-string v0, "TouchGesturePolicy"

    const-string v1, "[VolleyGestureCtrl] disableVolleyGesture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->unregisterVolleyListener()V

    .line 168
    iput-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 170
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-eqz v0, :cond_1

    .line 171
    iput-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    .line 173
    :cond_1
    return-void
.end method

.method private dispatchVolleyEvent(Lnubia/gesture/sensor/MotionState;)V
    .locals 10
    .param p1, "state"    # Lnubia/gesture/sensor/MotionState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v5, 0xa

    .line 239
    const/4 v8, 0x2

    .line 240
    .local v8, "speed":I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v6, "dm":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 243
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 244
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    .line 245
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    .line 246
    const/4 v7, 0x0

    .line 247
    .local v7, "oritation":I
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    if-le v0, v1, :cond_1

    .line 248
    const/4 v7, 0x1

    .line 252
    :goto_0
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 335
    :cond_0
    :goto_1
    return-void

    .line 250
    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    .line 254
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->filterFollowVolleyPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    if-ne v7, v3, :cond_2

    .line 258
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->handleEnter(II)V

    goto :goto_1

    .line 259
    :cond_2
    if-ne v7, v2, :cond_0

    .line 260
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->handleLandEnter(II)V

    goto :goto_1

    .line 264
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->filterFollowVolleyPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    if-ne v7, v3, :cond_3

    .line 268
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->handleHold(I)V

    goto :goto_1

    .line 269
    :cond_3
    if-ne v7, v2, :cond_0

    .line 270
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->handleLandHold(I)V

    goto :goto_1

    .line 274
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->filterFollowVolleyPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    if-ne v7, v3, :cond_4

    .line 278
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->handleOut(II)V

    goto :goto_1

    .line 279
    :cond_4
    if-ne v7, v2, :cond_0

    .line 280
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    invoke-direct {p0, v8, v0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->handleLandOut(II)V

    goto :goto_1

    .line 284
    :sswitch_3
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getSpeed()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 304
    :pswitch_1
    if-ne v7, v2, :cond_7

    .line 305
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto :goto_1

    .line 286
    :pswitch_2
    if-ne v7, v2, :cond_5

    .line 287
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 289
    :cond_5
    if-ne v7, v3, :cond_0

    .line 290
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 295
    :pswitch_3
    if-ne v7, v2, :cond_6

    .line 296
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 298
    :cond_6
    if-ne v7, v3, :cond_0

    .line 299
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 307
    :cond_7
    if-ne v7, v3, :cond_0

    .line 308
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 313
    :pswitch_4
    if-ne v7, v2, :cond_8

    .line 314
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 316
    :cond_8
    if-ne v7, v3, :cond_0

    .line 317
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipe(IIIII)Z

    goto/16 :goto_1

    .line 326
    :sswitch_4
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->filterFollowVolleyPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeRelease(II)Z

    .line 330
    iput v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    .line 331
    iput v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    .line 332
    iput v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    goto/16 :goto_1

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
        0x82 -> :sswitch_2
        0x8c -> :sswitch_3
        0x96 -> :sswitch_4
    .end sparse-switch

    .line 284
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private enableVolleyGesture()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Lcn/nubia/server/policy/VolleyGestureCtrl$2;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/VolleyGestureCtrl$2;-><init>(Lcn/nubia/server/policy/VolleyGestureCtrl;)V

    iput-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    .line 137
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-nez v2, :cond_1

    .line 138
    iget-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lnubia/gesture/sensor/MotionManager;->getDefaultDetector(Landroid/content/Context;I)Lnubia/gesture/sensor/MotionDetector;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    .line 140
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->beginToHandleVolley()V

    .line 142
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 145
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    .line 147
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    .line 148
    return-void
.end method

.method private filterFollowVolleyPackage()Z
    .locals 6

    .prologue
    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, "result":Z
    iget-object v5, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->currPackageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->VOLLEY_Followed_FILTER_PACKAGE_NAME:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_1

    .line 211
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->VOLLEY_Followed_FILTER_PACKAGE_NAME:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 212
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->currPackageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    const/4 v4, 0x1

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private filterVolleyApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v5, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    iget-object v5, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->VOLLEY_FILTER_CLASS_NAME:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 197
    .local v1, "filter":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filter":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 196
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "filter":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "filter":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private handleEnter(II)V
    .locals 6
    .param p1, "point_size"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v5, 0x4

    .line 338
    if-eqz p2, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 358
    :goto_1
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    .line 359
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    .line 360
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    goto :goto_0

    .line 342
    :pswitch_0
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 346
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 350
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 354
    :pswitch_3
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleHold(I)V
    .locals 6
    .param p1, "o"    # I

    .prologue
    const/4 v5, 0x2

    .line 391
    if-eqz p1, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 398
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    add-int/2addr v3, v0

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 399
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    goto :goto_0

    .line 402
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 404
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    sub-int v3, v0, v3

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 405
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    goto :goto_0

    .line 408
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 411
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    sub-int v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 412
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 415
    :pswitch_3
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 418
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    add-int/2addr v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 419
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    goto/16 :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLandEnter(II)V
    .locals 6
    .param p1, "point_size"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v5, 0x4

    .line 365
    if-eqz p2, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 385
    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    .line 386
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    .line 387
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 369
    :pswitch_0
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 373
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 377
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 381
    :pswitch_3
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v0, 0x4

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v0, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeFirst(IIIII)Z

    goto :goto_1

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLandHold(I)V
    .locals 6
    .param p1, "o"    # I

    .prologue
    const/4 v5, 0x2

    .line 425
    if-eqz p1, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 432
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    sub-int v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 433
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 436
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 438
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x32

    add-int/2addr v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 439
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    goto :goto_0

    .line 442
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_0

    .line 445
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    sub-int v3, v0, v3

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 446
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    goto :goto_0

    .line 449
    :pswitch_3
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    .line 452
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x32

    add-int/2addr v3, v0

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeMiddle(IIIII)Z

    .line 453
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v1, v1, 0x32

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    goto/16 :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleLandOut(II)V
    .locals 7
    .param p1, "speed"    # I
    .param p2, "out_orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 482
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 485
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 499
    :goto_1
    iput v6, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    .line 500
    iput v6, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    .line 501
    iput v6, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    goto :goto_0

    .line 487
    :pswitch_0
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 490
    :pswitch_1
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 493
    :pswitch_2
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 496
    :pswitch_3
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v0, v3

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleOut(II)V
    .locals 7
    .param p1, "speed"    # I
    .param p2, "out_orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 459
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 462
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 476
    :goto_1
    iput v6, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    .line 477
    iput v6, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    .line 478
    iput v6, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->moveStatus:I

    goto :goto_0

    .line 464
    :pswitch_0
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v0, v3

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 467
    :pswitch_1
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowWidth:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 470
    :pswitch_2
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 473
    :pswitch_3
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v3, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_x:I

    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->now_y:I

    iget v4, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mWindowHeight:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/VolleyGestureCtrl;->swipeAfter(IIIII)Z

    goto :goto_1

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerScreenOnOffReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->screenOnOffFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->screenOnOffFilter:Landroid/content/IntentFilter;

    .line 70
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->screenOnOffFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->screenOnOffFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->screenOnOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method private registerVolleyListener()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    invoke-virtual {v0, v1}, Lnubia/gesture/sensor/MotionDetector;->registerListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 224
    const-string v0, "TouchGesturePolicy"

    const-string v1, "[VolleyGestureCtrl] registerVolley"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyRegistered:Z

    .line 227
    :cond_0
    return-void
.end method

.method private swipe(IIIII)Z
    .locals 20
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 619
    const-string v4, "TouchGesturePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VolleyGestureCtrl] swipe steps = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v14, 0x0

    .line 621
    .local v14, "ret":Z
    move/from16 v15, p5

    .line 622
    .local v15, "swipeSteps":I
    const-wide/16 v16, 0x0

    .line 623
    .local v16, "xStep":D
    const-wide/16 v18, 0x0

    .line 624
    .local v18, "yStep":D
    const-wide/16 v2, 0x0

    .line 626
    .local v2, "downTime":J
    if-nez v15, :cond_0

    .line 627
    const/4 v15, 0x1

    .line 629
    :cond_0
    sub-int v4, p3, p1

    int-to-double v4, v4

    int-to-double v6, v15

    div-double v16, v4, v6

    .line 630
    sub-int v4, p4, p2

    int-to-double v4, v4

    int-to-double v6, v15

    div-double v18, v4, v6

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 634
    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    const/4 v9, 0x1

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 636
    .local v10, "event1":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 637
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v10, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v14

    .line 640
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    int-to-double v8, v13

    mul-double v8, v8, v16

    double-to-int v7, v8

    add-int v7, v7, p1

    int-to-float v7, v7

    int-to-double v8, v13

    mul-double v8, v8, v18

    double-to-int v8, v8

    add-int v8, v8, p2

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 646
    .local v11, "event2":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v11, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 647
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v11, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    and-int/2addr v14, v4

    .line 649
    if-nez v14, :cond_2

    .line 653
    .end local v11    # "event2":Landroid/view/MotionEvent;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move/from16 v0, p3

    int-to-float v7, v0

    move/from16 v0, p4

    int-to-float v8, v0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 655
    .local v12, "event3":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v12, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 656
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v12, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    and-int/2addr v14, v4

    .line 658
    return v14

    .line 651
    .end local v12    # "event3":Landroid/view/MotionEvent;
    .restart local v11    # "event2":Landroid/view/MotionEvent;
    :cond_2
    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 640
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method private swipeAfter(IIIII)Z
    .locals 20
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 531
    const/4 v13, 0x0

    .line 532
    .local v13, "ret":Z
    move/from16 v14, p5

    .line 533
    .local v14, "swipeSteps":I
    const-wide/16 v16, 0x0

    .line 534
    .local v16, "xStep":D
    const-wide/16 v18, 0x0

    .line 535
    .local v18, "yStep":D
    const-wide/16 v2, 0x0

    .line 537
    .local v2, "downTime":J
    if-nez v14, :cond_0

    .line 538
    const/4 v14, 0x1

    .line 540
    :cond_0
    sub-int v4, p3, p1

    int-to-double v4, v4

    int-to-double v6, v14

    div-double v16, v4, v6

    .line 541
    sub-int v4, p4, p2

    int-to-double v4, v4

    int-to-double v6, v14

    div-double v18, v4, v6

    .line 543
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_2

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    int-to-double v8, v12

    mul-double v8, v8, v16

    double-to-int v7, v8

    add-int v7, v7, p1

    int-to-float v7, v7

    int-to-double v8, v12

    mul-double v8, v8, v18

    double-to-int v8, v8

    add-int v8, v8, p2

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 549
    .local v10, "event2":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 550
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v10, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    and-int/2addr v13, v4

    .line 552
    if-nez v13, :cond_1

    .line 556
    :cond_1
    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 543
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 559
    .end local v10    # "event2":Landroid/view/MotionEvent;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move/from16 v0, p3

    int-to-float v7, v0

    move/from16 v0, p4

    int-to-float v8, v0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 561
    .local v11, "event3":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v11, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 562
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v11, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    and-int/2addr v13, v4

    .line 565
    return v13
.end method

.method private swipeFirst(IIIII)Z
    .locals 20
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 569
    const/4 v13, 0x0

    .line 570
    .local v13, "ret":Z
    move/from16 v14, p5

    .line 571
    .local v14, "swipeSteps":I
    const-wide/16 v16, 0x0

    .line 572
    .local v16, "xStep":D
    const-wide/16 v18, 0x0

    .line 573
    .local v18, "yStep":D
    const-wide/16 v2, 0x0

    .line 575
    .local v2, "downTime":J
    if-nez v14, :cond_0

    .line 576
    const/4 v14, 0x1

    .line 578
    :cond_0
    sub-int v4, p3, p1

    int-to-double v4, v4

    int-to-double v6, v14

    div-double v16, v4, v6

    .line 579
    sub-int v4, p4, p2

    int-to-double v4, v4

    int-to-double v6, v14

    div-double v18, v4, v6

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 583
    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    const/4 v9, 0x1

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 585
    .local v10, "event1":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 586
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v10, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v13

    .line 589
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_1

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    int-to-double v8, v12

    mul-double v8, v8, v16

    double-to-int v7, v8

    add-int v7, v7, p1

    int-to-float v7, v7

    int-to-double v8, v12

    mul-double v8, v8, v18

    double-to-int v8, v8

    add-int v8, v8, p2

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 595
    .local v11, "event2":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v11, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 596
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v11, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    and-int/2addr v13, v4

    .line 600
    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 589
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 602
    .end local v11    # "event2":Landroid/view/MotionEvent;
    :cond_1
    return v13
.end method

.method private swipeMiddle(IIIII)Z
    .locals 16
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .prologue
    .line 506
    const/4 v10, 0x0

    .line 507
    .local v10, "ret":Z
    move/from16 v11, p5

    .line 508
    .local v11, "swipeSteps":I
    const-wide/16 v12, 0x0

    .line 509
    .local v12, "xStep":D
    const-wide/16 v14, 0x0

    .line 510
    .local v14, "yStep":D
    const-wide/16 v0, 0x0

    .line 512
    .local v0, "downTime":J
    if-nez v11, :cond_0

    .line 513
    const/4 v11, 0x1

    .line 514
    :cond_0
    sub-int v2, p3, p1

    int-to-double v2, v2

    int-to-double v4, v11

    div-double v12, v2, v4

    .line 515
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, v11

    div-double v14, v2, v4

    .line 516
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    int-to-double v6, v9

    mul-double/2addr v6, v12

    double-to-int v5, v6

    add-int v5, v5, p1

    int-to-float v5, v5

    int-to-double v6, v9

    mul-double/2addr v6, v14

    double-to-int v6, v6

    add-int v6, v6, p2

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 522
    .local v8, "event2":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 523
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v8, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    and-int/2addr v10, v2

    .line 525
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 516
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 527
    .end local v8    # "event2":Landroid/view/MotionEvent;
    :cond_1
    return v10
.end method

.method private swipeRelease(II)Z
    .locals 10
    .param p1, "upX"    # I
    .param p2, "upY"    # I

    .prologue
    const/4 v4, 0x1

    .line 606
    const-string v2, "hanchuang"

    const-string v3, "swipeRelease"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v9, 0x0

    .line 608
    .local v9, "ret":Z
    const-wide/16 v0, 0x0

    .line 609
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, p1

    int-to-float v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 612
    .local v8, "event3":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 613
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v8, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    and-int/2addr v9, v2

    .line 615
    return v9
.end method

.method private unregisterScreenOnOffReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    return-void
.end method

.method private unregisterVolleyListener()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyDetector:Lnubia/gesture/sensor/MotionDetector;

    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyListener:Lnubia/gesture/sensor/MotionListener;

    invoke-virtual {v0, v1}, Lnubia/gesture/sensor/MotionDetector;->unregisterListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 233
    const-string v0, "TouchGesturePolicy"

    const-string v1, "[VolleyGestureCtrl] unregisterVolley"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyRegistered:Z

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 99
    const-string v0, "slide_screen"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    const-string v0, "volley_white_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p2, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->currPackageName:Ljava/lang/String;

    .line 180
    iget v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-boolean v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyRegistered:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/VolleyGestureCtrl;->filterVolleyApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->unregisterVolleyListener()V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/VolleyGestureCtrl;->filterVolleyApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->registerVolleyListener()V

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 109
    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "slide_screen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 112
    .local v0, "volley":I
    iget v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyMode:I

    if-eq v1, v0, :cond_0

    .line 113
    iput v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyMode:I

    .line 114
    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->enableVolleyGesture()V

    .line 116
    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->registerScreenOnOffReceiver(Landroid/content/Context;)V

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volley_white_list"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mVolleyFilter:Ljava/lang/String;

    .line 125
    return-void

    .line 118
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/VolleyGestureCtrl;->disableVolleyGesture()V

    .line 119
    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->unregisterScreenOnOffReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method
