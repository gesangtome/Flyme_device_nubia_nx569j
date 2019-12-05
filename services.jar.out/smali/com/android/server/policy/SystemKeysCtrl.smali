.class public Lcom/android/server/policy/SystemKeysCtrl;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_BOTTOM_KEY_FUNC:Z = false

.field private static final EXTERNAL_INTERCEPT_HOMEKEY_DB:Ljava/lang/String; = "external_intercept_homekey"

.field private static final FUN_:I = -0x1

.field private static final FUN_CANCEL_APP:I = 0x2

.field private static final FUN_DEFAULT:I = -0x1

.field private static final FUN_OPEN_MENU:I = 0x1

.field private static final FUN_OPEN_MULTITASK:I = 0x1

.field private static final FUN_OPEN_NOTIFICATION:I = 0x3

.field private static final FUN_OPEN_SINGLE_HAND:I = 0x4

.field private static final SINGLE_HAND_MODE_CLOSE:I = 0x0

.field private static final SINGLE_HAND_MODE_LEFT:I = 0x2

.field private static final SINGLE_HAND_MODE_RIGHT:I = 0x1

.field private static final SINGLE_UI_DB:Ljava/lang/String; = "single_ui_mode"

.field private static final SYSTEM_KEYS_CLICK_MENU:Ljava/lang/String; = "system_keys_onclick_menu"

.field private static final SYSTEM_KEYS_LONG_PRESS_BACK:Ljava/lang/String; = "system_keys_long_press_back"

.field private static final SYSTEM_KEYS_LONG_PRESS_HOME:Ljava/lang/String; = "system_keys_long_press_home"

.field private static final SYSTEM_KEYS_LONG_PRESS_MENU:Ljava/lang/String; = "system_keys_long_press_menu"

.field private static final SYSTEM_KEYS_REVERSE:Ljava/lang/String; = "system_keys_reverse"

.field private static final TAG:Ljava/lang/String; = "SystemKeysCtrl"


# instance fields
.field private isBackLongPress:Z

.field private isBackLongPressCancelCurrentApp:Z

.field private isBackLongPressExpandNotificationPanel:Z

.field private isExternalInterceptHomeKey:Z

.field private isHomeLPMultiTask:Z

.field private isHomeLongPress:Z

.field private isHomeLongPressCancelCurrentApp:Z

.field private isHomeLongPressExpandNotificationPanel:Z

.field private isMenuBackLongPressOpenSingleHand:Z

.field private isMenuClickMultiTask:Z

.field private isMenuLongPress:Z

.field private isMenuLongPressCancelCurrentApp:Z

.field private isMenuLongPressExpandNotificationPanel:Z

.field private isMenuLongPressMenu:Z

.field private isMenuOnClick:Z

.field private isSingleHandBack:Z

.field private isTheKeysReverse:Z

.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

.field private mSingleUIMode:I

.field private mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    .line 42
    sput-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isSingleHandBack:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mSingleUIMode:I

    .line 55
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isExternalInterceptHomeKey:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    .line 84
    iput-object p2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    .line 85
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/Motor/VibrationMotorFactory;->createVibrationMotor(Landroid/content/Context;)Lcn/nubia/Motor/IVibrationMotor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    .line 88
    return-void
.end method

.method private cancelCurrentApp()V
    .locals 12

    .prologue
    .line 403
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SystemKeysCtrl"

    const-string v10, "cancelCurrentApp"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    invoke-interface {v9}, Lcn/nubia/Motor/IVibrationMotor;->longPressMenuBackHomeKey()V

    .line 406
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 407
    .local v3, "iam":Landroid/app/IActivityManager;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v5

    .line 408
    .local v5, "listTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 409
    .local v7, "taskId":I
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, "topPkg":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "pkg":Ljava/lang/String;
    const-string v1, ""

    .line 412
    .local v1, "appLabel":Ljava/lang/String;
    const-string v9, "cn.nubia.launcher"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->collapseNotificationsPanel()V

    .line 415
    :cond_1
    const-string v0, "com.android.systemui.action.auto_test.clear"

    .line 416
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "auto_clear_flag"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v9, "auto_clear_taskid"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v9, "auto_clear_pkg"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v9, "auto_clear_topPkg"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v9, "auto_clear_label"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "appLabel":Ljava/lang/String;
    .end local v3    # "iam":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "listTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "taskId":I
    .end local v8    # "topPkg":Ljava/lang/String;
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "SystemKeysCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelCurrentApp Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelScreenPin()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 389
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 390
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    const/4 v2, 0x1

    .line 398
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return v2

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SystemKeysCtrl"

    const-string v4, "Unable to reach activity manager"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseNotificationsPanel()V
    .locals 4

    .prologue
    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 357
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 358
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemKeysCtrl"

    const-string v3, "Exception when expandNotificationsPanel"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private expandNotificationsPanel()V
    .locals 4

    .prologue
    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isTopIsFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    invoke-interface {v2}, Lcn/nubia/Motor/IVibrationMotor;->longPressMenuBackHomeKey()V

    .line 342
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 343
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 344
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemKeysCtrl"

    const-string v3, "Exception when expandNotificationsPanel"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private iniKeyFunction()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 243
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    .line 244
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 245
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    .line 246
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    .line 247
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 248
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    .line 249
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    .line 250
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 251
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    .line 253
    iget-object v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "system_keys_long_press_menu"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 254
    .local v5, "menuLong":I
    iget-object v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "system_keys_onclick_menu"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 256
    .local v4, "menuClick":I
    iget-object v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "system_keys_long_press_home"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "homeLong":I
    iget-object v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "system_keys_long_press_back"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, "backLong":I
    iget-object v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "system_keys_reverse"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 259
    .local v3, "keysReverse":I
    iget-object v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "external_intercept_homekey"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, "externalInterceptHome":I
    const/4 v5, 0x4

    .line 263
    const/4 v0, 0x4

    .line 264
    const/4 v4, 0x1

    .line 267
    if-ne v4, v9, :cond_2

    .line 268
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    .line 273
    :goto_0
    if-ne v5, v9, :cond_3

    .line 274
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 288
    :goto_1
    if-ne v2, v11, :cond_7

    .line 289
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 297
    :goto_2
    if-ne v0, v11, :cond_9

    .line 298
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 309
    :goto_3
    if-ne v3, v9, :cond_c

    .line 310
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    .line 315
    :cond_0
    :goto_4
    if-ne v1, v9, :cond_d

    .line 316
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isExternalInterceptHomeKey:Z

    .line 321
    :goto_5
    sget-boolean v6, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 322
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isExternalInterceptHomeKey "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isExternalInterceptHomeKey:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isMenuBackLongPressOpenSingleHand "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isTheKeysReverse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isMenuClickMultiTask "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isMenuLongPressMenu "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isMenuLongPressCancelCurrentApp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isMenuLongPressExpandNotificationPanel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isHomeLongPressCancelCurrentApp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isHomeLongPressExpandNotificationPanel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isBackLongPressExpandNotificationPanel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v6, "SystemKeysCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GGG isBackLongPressCancelCurrentApp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    return-void

    .line 270
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    goto/16 :goto_0

    .line 275
    :cond_3
    if-ne v5, v11, :cond_4

    .line 276
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    goto/16 :goto_1

    .line 277
    :cond_4
    if-ne v5, v10, :cond_5

    .line 278
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    goto/16 :goto_1

    .line 279
    :cond_5
    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 280
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    goto/16 :goto_1

    .line 282
    :cond_6
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 283
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    .line 284
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    .line 285
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    goto/16 :goto_1

    .line 290
    :cond_7
    if-ne v2, v10, :cond_8

    .line 291
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    goto/16 :goto_2

    .line 293
    :cond_8
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 294
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    goto/16 :goto_2

    .line 299
    :cond_9
    if-ne v0, v10, :cond_a

    .line 300
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    goto/16 :goto_3

    .line 301
    :cond_a
    const/4 v6, 0x4

    if-ne v0, v6, :cond_b

    .line 302
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    goto/16 :goto_3

    .line 304
    :cond_b
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 305
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    .line 306
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    goto/16 :goto_3

    .line 311
    :cond_c
    if-ne v3, v12, :cond_0

    .line 312
    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    goto/16 :goto_4

    .line 318
    :cond_d
    iput-boolean v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->isExternalInterceptHomeKey:Z

    goto/16 :goto_5
.end method

.method private toggleRecentApps()V
    .locals 4

    .prologue
    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 374
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelScreenPin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 377
    .restart local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemKeysCtrl"

    const-string v3, "Exception when toggleRecentApps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateSingleUIMode()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mSingleUIMode:I

    .line 435
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 92
    iget-boolean v6, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    .line 93
    .local v6, "leftBack":Z
    iget-object v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v5

    .line 94
    .local v5, "keyguardOn":Z
    if-eqz v5, :cond_0

    .line 95
    const-wide/high16 v10, -0x8000000000000000L

    .line 238
    :goto_0
    return-wide v10

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 98
    .local v4, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 99
    .local v8, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 100
    .local v7, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 101
    .local v2, "flags":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_5

    const/4 v1, 0x1

    .line 102
    .local v1, "down":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 103
    .local v0, "canceled":Z
    if-nez v8, :cond_6

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    .line 105
    .local v3, "isClick":Z
    :goto_2
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "SystemKeysCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "... islong? = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    and-int/lit16 v11, v11, 0x80

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  flag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " FLAG_LONG = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "SystemKeysCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "... repeatCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    const/4 v9, 0x4

    if-ne v4, v9, :cond_13

    .line 110
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_e

    .line 111
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 112
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    if-eqz v9, :cond_7

    .line 113
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_BACK FLAG_LONG_PRESS open NotificationPanel"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->expandNotificationsPanel()V

    .line 131
    :cond_4
    :goto_3
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 101
    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v3    # "isClick":Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 103
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 115
    .restart local v3    # "isClick":Z
    :cond_7
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    if-eqz v9, :cond_9

    .line 116
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_BACK FLAG_LONG_PRESS cancel current app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_8
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelCurrentApp()V

    goto :goto_3

    .line 118
    :cond_9
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    if-eqz v9, :cond_4

    .line 119
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "SystemKeysCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KEYCODE_BACK FLAG_LONG_PRESS open SingleHand isTheKeysReverse = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_a
    if-eqz v6, :cond_c

    .line 121
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_b

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Left:Back:Long press:single hand"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_b
    :goto_4
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    if-eqz v9, :cond_d

    .line 126
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/server/policy/SystemKeysCtrl;->startSingleHand(I)V

    goto :goto_3

    .line 123
    :cond_c
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_b

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Right:Back:Long press:single hand"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 128
    :cond_d
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/policy/SystemKeysCtrl;->startSingleHand(I)V

    goto :goto_3

    .line 134
    :cond_e
    if-nez v1, :cond_f

    .line 135
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    if-eqz v9, :cond_10

    .line 136
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 137
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 140
    :cond_f
    if-eqz v6, :cond_12

    .line 141
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_10

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Left:Back:Click:normal back"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_10
    :goto_5
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_11

    const-string v9, "SystemKeysCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "return to-->{PhoneWindowManager} "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_11
    const-wide/high16 v10, -0x8000000000000000L

    goto/16 :goto_0

    .line 143
    :cond_12
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_10

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Right:Back:Click:normal back"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 146
    :cond_13
    const/4 v9, 0x3

    if-ne v4, v9, :cond_21

    .line 148
    if-eqz v3, :cond_15

    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isExternalInterceptHomeKey:Z

    if-eqz v9, :cond_15

    .line 149
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_14

    const-string v9, "SystemKeysCtrl"

    const-string v10, "...the home key event_down intercepted outside !"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_14
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 153
    :cond_15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_1c

    .line 154
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    if-eqz v9, :cond_18

    .line 155
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_16

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS cancel current app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_16
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_17

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Long press:cancel current app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_17
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 158
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelCurrentApp()V

    .line 159
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 160
    :cond_18
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    if-eqz v9, :cond_1b

    .line 161
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_19

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS  open NotificationPanel"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_19
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_1a

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Long press:Expand notification"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 164
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->expandNotificationsPanel()V

    .line 165
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 167
    :cond_1b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    .line 168
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_1c

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Long press:MultiTask"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1c
    if-nez v1, :cond_10

    .line 173
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    if-eqz v9, :cond_1d

    .line 174
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 175
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 176
    :cond_1d
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isExternalInterceptHomeKey:Z

    if-eqz v9, :cond_1f

    .line 178
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_1e

    const-string v9, "SystemKeysCtrl"

    const-string v10, "...the home key event_up intercepted outside !"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1e
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 180
    :cond_1f
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    if-nez v9, :cond_20

    .line 181
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_20

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Click:Launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_20
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    goto/16 :goto_5

    .line 185
    :cond_21
    const/16 v9, 0x52

    if-ne v4, v9, :cond_10

    .line 188
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    if-eqz v9, :cond_22

    if-eqz v3, :cond_22

    .line 189
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    .line 190
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 192
    :cond_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2d

    .line 193
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    .line 194
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    if-eqz v9, :cond_24

    .line 195
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_23

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_MENU long press cancel current app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_23
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelCurrentApp()V

    .line 197
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 198
    :cond_24
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    if-eqz v9, :cond_26

    .line 199
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_25

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_MENU long press open notification panel"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_25
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->expandNotificationsPanel()V

    .line 201
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 202
    :cond_26
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    if-eqz v9, :cond_28

    .line 203
    iget-object v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    invoke-interface {v9}, Lcn/nubia/Motor/IVibrationMotor;->longPressMenuBackHomeKey()V

    .line 204
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_27

    const-string v9, "SystemKeysCtrl"

    const-string v10, "KEYCODE_MENU long press open menu"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_27
    :goto_6
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 205
    :cond_28
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    if-eqz v9, :cond_27

    .line 206
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v9, :cond_29

    const-string v9, "SystemKeysCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KEYCODE_MENU long press open singleHand! isTheKeysReverse = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_29
    if-eqz v6, :cond_2b

    .line 208
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_2a

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Right:Menu:Long press:single hand"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2a
    :goto_7
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    if-eqz v9, :cond_2c

    .line 213
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/policy/SystemKeysCtrl;->startSingleHand(I)V

    goto :goto_6

    .line 210
    :cond_2b
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_2a

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Left:Menu:Long press:single hand"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 215
    :cond_2c
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/server/policy/SystemKeysCtrl;->startSingleHand(I)V

    goto :goto_6

    .line 220
    :cond_2d
    if-nez v1, :cond_10

    .line 221
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    if-eqz v9, :cond_2e

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    .line 223
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 225
    :cond_2e
    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    if-eqz v9, :cond_10

    iget-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    if-eqz v9, :cond_10

    .line 226
    if-eqz v6, :cond_30

    .line 227
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_2f

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Right:Menu:Click:MultiTask"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2f
    :goto_8
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->toggleRecentApps()V

    .line 232
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    .line 233
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_0

    .line 229
    :cond_30
    sget-boolean v9, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v9, :cond_2f

    const-string v9, "SystemKeysCtrl"

    const-string v10, "[Key]Left:Menu:Click:MultiTask"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 445
    const-string v0, "system_keys_onclick_menu"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 449
    const-string v0, "system_keys_long_press_back"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 453
    const-string v0, "system_keys_long_press_menu"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 457
    const-string v0, "system_keys_long_press_home"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 461
    const-string v0, "system_keys_reverse"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    const-string v0, "single_ui_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 469
    const-string v0, "external_intercept_homekey"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 472
    return-void
.end method

.method public setSingleUICtrl(Lcom/android/server/policy/SingleUICtrl;)V
    .locals 0
    .param p1, "singleUICtrl"    # Lcom/android/server/policy/SingleUICtrl;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

    .line 431
    return-void
.end method

.method public startSingleHand(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 438
    const-string v0, "SystemKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSingleHand called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mSingleUICtrl:Lcom/android/server/policy/SingleUICtrl;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleUICtrl;->startSingleHand(I)V

    .line 441
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->iniKeyFunction()V

    .line 477
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->updateSingleUIMode()V

    .line 478
    return-void
.end method
