.class public Lcom/android/server/policy/SingleUICtrl;
.super Ljava/lang/Object;
.source "SingleUICtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SingleUICtrl$LockScreenBroadcastReceiver;,
        Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BLACK_APP_START:Ljava/lang/String; = "android.intent.action.SINGLE_UI_BLACK_APP_START"

.field private static final CTS_TEST_PACKAGE_NAME:Ljava/lang/String; = "com.android.cts.verifier"

.field private static final DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

.field private static final FIELD_MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field private static final FIELD_SU_BLACK_LIST:Ljava/lang/String; = "single_ui_black_list"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE_EXTERNAL:Ljava/lang/String; = "single_ui_mode_external"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final NUBIA_OVERLAY_DISPLAY_SWITCH:Ljava/lang/String; = "single_ui_on_off"

.field private static final NUBIA_SINGLE_KEY_STATUS:Ljava/lang/String; = "single_ui_key_status"

.field private static final NUBIA_SINGLE_SETTING_STATUS:Ljava/lang/String; = "single_ui_setting_status"

.field private static final NUBIA_SINGLE_UI_PROMPT:Ljava/lang/String; = "single_ui_prompt"

.field private static final NUBIA_WFD_SINGLE_HANDLE_POLICY:Ljava/lang/String; = "nubia_wfd_single_ui_policy"

.field static final SEPARATOR_APP_LIST:Ljava/lang/String; = "/"

.field private static final SINGLE_UI_GUIDE_CLASS:Ljava/lang/String; = "cn.nubia.singlehandpageset.MainActivity"

.field private static final SINGLE_UI_GUIDE_LEFT_OR_RIGHT:Ljava/lang/String; = "leftorright"

.field private static final SINGLE_UI_GUIDE_PACKAGE:Ljava/lang/String; = "cn.nubia.singlehandpageset"

.field private static final SINGLE_UI_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final SINGLE_UI_PROMPTS_ACTION:Ljava/lang/String; = "android.intent.action.SHOW_DIALOG"

.field private static final SINGLE_UI_PROMPTS_SHOW:Ljava/lang/String; = "cn.nubia.singlehandpageset.ShowPromptsActivity"

.field private static final SU_KEY_CLOSE:I = 0x0

.field private static final SU_KEY_OPEN:I = 0x1

.field private static final SU_MODE_CLOSE:I = 0x0

.field private static final SU_MODE_EXTERNAL_INVALID:I = 0x64

.field private static final SU_MODE_EXTERNAL_LEFT_A:I = 0xa

.field private static final SU_MODE_EXTERNAL_LEFT_B:I = 0xb

.field private static final SU_MODE_EXTERNAL_RIGHT_A:I = 0x0

.field private static final SU_MODE_EXTERNAL_RIGHT_B:I = 0x1

.field private static final SU_MODE_LEFT:I = 0x2

.field private static final SU_MODE_RIGHT:I = 0x1

.field private static final SU_PROMPT_CLOSE:I = 0x0

.field private static final SU_PROMPT_OPEN:I = 0x1

.field private static final SU_SWITCH_OFF:I = 0x0

.field private static final SU_SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SingleHand"

.field private static mPkgName:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mArBlackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mSingleMode:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cn.nubia.singlehandpageset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.cts.verifier"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/policy/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/SingleUICtrl;->mSingleMode:I

    .line 100
    iput-object p2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/android/server/policy/SingleUICtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->initDisplayForRotation()V

    .line 104
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->initBlackListReceiver()V

    .line 105
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->initLockScreenReceiver()V

    .line 106
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->registerExternalControllerObserver()V

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/SingleUICtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleUICtrl;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/SingleUICtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SingleUICtrl;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleUICtrl;->startSingleHandGuidePage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/SingleUICtrl;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleUICtrl;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/SingleUICtrl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SingleUICtrl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private createSingleDialog(I)V
    .locals 2
    .param p1, "suModeLeftOrRight"    # I

    .prologue
    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/policy/SingleUICtrl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SingleUICtrl$2;-><init>(Lcom/android/server/policy/SingleUICtrl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method private static currentAppIsInBlackList(Landroid/app/ActivityManager;Ljava/util/ArrayList;)Z
    .locals 3
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 432
    .local v0, "flag":Z
    invoke-static {p0}, Lcom/android/server/policy/SingleUICtrl;->getCurrentRuningApp(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 433
    .local v1, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/SingleUICtrl;->mPkgName:Ljava/lang/String;

    .line 436
    :cond_0
    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/server/policy/SingleUICtrl;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    const/4 v0, 0x1

    .line 439
    :cond_1
    return v0
.end method

.method private static getCurrentRuningApp(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 448
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 449
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 450
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 451
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 452
    .restart local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 453
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 454
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 459
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method private static getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_black_list"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "blackList":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "i":I
    sget-object v4, Lcom/android/server/policy/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    array-length v2, v4

    .line 415
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 417
    if-eqz v1, :cond_0

    .line 418
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_0
    sget-object v4, Lcom/android/server/policy/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v0
.end method

.method private initBlackListReceiver()V
    .locals 4

    .prologue
    .line 119
    new-instance v1, Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;-><init>(Lcom/android/server/policy/SingleUICtrl;Lcom/android/server/policy/SingleUICtrl$1;)V

    .line 120
    .local v1, "receiver":Lcom/android/server/policy/SingleUICtrl$BlackListAppsBrocastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SINGLE_UI_BLACK_APP_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 127
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/SingleUICtrl;->getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/policy/SingleUICtrl;->updateBlackList(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private initDisplayForRotation()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mWindowManager:Landroid/view/WindowManager;

    .line 113
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mDefaultDisplay:Landroid/view/Display;

    .line 114
    return-void
.end method

.method private initLockScreenReceiver()V
    .locals 3

    .prologue
    .line 134
    new-instance v1, Lcom/android/server/policy/SingleUICtrl$LockScreenBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/SingleUICtrl$LockScreenBroadcastReceiver;-><init>(Lcom/android/server/policy/SingleUICtrl;Lcom/android/server/policy/SingleUICtrl$1;)V

    .line 135
    .local v1, "receiver":Lcom/android/server/policy/SingleUICtrl$LockScreenBroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method private isLandscapeInDisplay()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 203
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 204
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 212
    const-string v2, "SingleHand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined rotation in SingleUICtrl at rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    :pswitch_0
    return v1

    .line 207
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isMultiWindowOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ss_multi_window_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "multiWindowOpened":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSingleHandClosed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 241
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_on_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "suSwitch":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSingleHandNeverStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "status":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSinglePromptOpened()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    iget-object v3, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_prompt"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, "mode":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isWfdNeedSingleToast()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_wfd_single_ui_policy"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private registerExternalControllerObserver()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode_external"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/policy/SingleUICtrl$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SingleUICtrl$1;-><init>(Lcom/android/server/policy/SingleUICtrl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    return-void
.end method

.method private showStartSingleDialog(I)V
    .locals 2
    .param p1, "suModeLeftOrRight"    # I

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->isSinglePromptOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "SingleHand"

    const-string v1, "Single prompt page is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    const-string v0, "SingleHand"

    const-string v1, "mDialog != null and mDialog.isShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleUICtrl;->createSingleDialog(I)V

    goto :goto_0
.end method

.method private showToastByRunnable(I)V
    .locals 2
    .param p1, "toBeShowed"    # I

    .prologue
    .line 490
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 491
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/policy/SingleUICtrl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SingleUICtrl$3;-><init>(Lcom/android/server/policy/SingleUICtrl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method private startSingleHandGuidePage(I)V
    .locals 4
    .param p1, "leftOrRight"    # I

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "leftorright"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.singlehandpageset"

    const-string v3, "cn.nubia.singlehandpageset.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method private startSingleHandPrompts(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "android.intent.action.SHOW_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.singlehandpageset"

    const-string v3, "cn.nubia.singlehandpageset.ShowPromptsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method static string2list(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "array":[Ljava/lang/String;
    array-length v2, v0

    .line 481
    .local v2, "length":I
    const/4 v1, 0x0

    .line 482
    .local v1, "i":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    .local v3, "outputArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-ge v1, v2, :cond_0

    .line 484
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_0
    return-object v3
.end method

.method private updateBlackList(Ljava/lang/String;)V
    .locals 2
    .param p1, "blackList"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {p1}, Lcom/android/server/policy/SingleUICtrl;->string2list(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    .line 467
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.singlehandpageset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.singlehandpageset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.cts.verifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    const-string v1, "com.android.cts.verifier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_1
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_setting_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "status":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_setting_status"

    const-string v3, "open"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 382
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    .line 172
    const-string v0, "single_ui_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    const-string v0, "single_ui_black_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 178
    const-string v0, "single_ui_on_off"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    return-void
.end method

.method public startSingleHand(I)V
    .locals 6
    .param p1, "suModeLeftOrRight"    # I

    .prologue
    const/4 v5, 0x0

    .line 278
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->isSingleHandClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    const-string v2, "SingleHand"

    const-string v3, "SingleHand switch is closed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->isLandscapeInDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    const v2, 0x30c0045

    invoke-direct {p0, v2}, Lcom/android/server/policy/SingleUICtrl;->showToastByRunnable(I)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->isMultiWindowOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    const v2, 0x30c0046

    invoke-direct {p0, v2}, Lcom/android/server/policy/SingleUICtrl;->showToastByRunnable(I)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->isWfdNeedSingleToast()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    const v2, 0x30c0047

    invoke-direct {p0, v2}, Lcom/android/server/policy/SingleUICtrl;->showToastByRunnable(I)V

    goto :goto_0

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/server/policy/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/server/policy/SingleUICtrl;->currentAppIsInBlackList(Landroid/app/ActivityManager;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 300
    sget-object v2, Lcom/android/server/policy/SingleUICtrl;->mPkgName:Ljava/lang/String;

    const-string v3, "com.android.cts.verifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    sget-object v2, Lcom/android/server/policy/SingleUICtrl;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/policy/SingleUICtrl;->startSingleHandPrompts(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_key_status"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 308
    .local v0, "key_mode":I
    if-eqz v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 314
    .local v1, "mode":I
    if-eq v1, p1, :cond_7

    .line 315
    invoke-direct {p0}, Lcom/android/server/policy/SingleUICtrl;->isSingleHandNeverStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleUICtrl;->showStartSingleDialog(I)V

    goto :goto_0

    .line 318
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 322
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SingleUICtrl;->updateSingleModeState(Landroid/content/ContentResolver;)V

    .line 186
    return-void
.end method

.method updateSingleModeState(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/SingleUICtrl;->getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/policy/SingleUICtrl;->updateBlackList(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_on_off"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 195
    .local v0, "suSwitch":I
    if-nez v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_0
    return-void
.end method
