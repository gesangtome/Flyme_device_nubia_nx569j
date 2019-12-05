.class public Lcn/nubia/server/policy/edge/CommunalService;
.super Ljava/lang/Object;
.source "CommunalService.java"


# static fields
.field public static final MULTI_WINDOW_MODE:Ljava/lang/String; = "ss_multi_window_enabled"

.field public static final ORIENTATION_DOWN:I = 0x4e24

.field public static final ORIENTATION_LEFT:I = 0x4e21

.field public static final ORIENTATION_RIGHT:I = 0x4e22

.field public static final ORIENTATION_UP:I = 0x4e23

.field public static final SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field public static final SWITCH_STATE_NEW_APP:I = 0x2711

.field public static final SWITCH_STATE_SWITCH_APP:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "CommunalService"

.field private static volatile instance:Lcn/nubia/server/policy/edge/CommunalService;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenshotTakeFinished:Z

.field private mIsSingleSlide:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

.field private mRunnale:Ljava/lang/Runnable;

.field private mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

.field private mScreenshotBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcn/nubia/server/policy/edge/CommunalService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/CommunalService$2;-><init>(Lcn/nubia/server/policy/edge/CommunalService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 73
    iput-object p3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 74
    iput-object p4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mActivityManager:Landroid/app/ActivityManager;

    .line 76
    new-instance v0, Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/CommunalService;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->finishScreenShot(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/server/policy/edge/CommunalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsSingleSlide:Z

    return p1
.end method

.method private canCancelPreScreenShot(Z)Z
    .locals 4
    .param p1, "singleSlide"    # Z

    .prologue
    .line 209
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsSingleSlide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsSingleSlide:Z

    .line 213
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finishScreenShot(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 179
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    .line 181
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 185
    :cond_0
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 186
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->onScreenshotTake()V

    .line 187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "bitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    const-string v2, "CommunalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeScreenShot finish, bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://cn.nubia.launcher.settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "launcherFit"

    const-string v5, "initBitmap"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    const-string v2, "CommunalService"

    const-string v3, "takeScreenShot initMagicBook"

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CommunalService"

    const-string v3, "Exception happened "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDefault()Lcn/nubia/server/policy/edge/CommunalService;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    return-object v0
.end method

.method private getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)Lcn/nubia/server/policy/edge/CommunalService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lcn/nubia/server/policy/edge/CommunalService;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcn/nubia/server/policy/edge/CommunalService;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/CommunalService;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V

    sput-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isExcludedFocusWindow()Z
    .locals 5

    .prologue
    .line 375
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 376
    .local v1, "focusWindow":Landroid/view/WindowManagerPolicy$WindowState;
    if-nez v1, :cond_0

    .line 377
    const/4 v2, 0x0

    .line 379
    :goto_0
    return v2

    .line 378
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 379
    .local v0, "arrts":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "GlobalActions"

    const-string v3, "android"

    const/16 v4, 0x7d9

    invoke-direct {p0, v0, v2, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "arrts"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    .line 386
    .local v0, "matched":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 389
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 392
    :cond_1
    if-eqz v0, :cond_2

    if-lez p4, :cond_2

    .line 393
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt p4, v1, :cond_3

    const/4 v0, 0x1

    .line 395
    :cond_2
    :goto_0
    const-string v1, "CommunalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLayoutParamsMatched, title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return v0

    .line 393
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiWindowMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ss_multi_window_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 319
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return v1

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 321
    .local v0, "same":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 324
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 327
    goto :goto_0

    :cond_3
    move v0, v1

    .line 325
    goto :goto_1
.end method

.method private isSameFocusWindow(Ljava/lang/String;)Z
    .locals 4
    .param p1, "windowName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 357
    .local v1, "focusWindow":Landroid/view/WindowManagerPolicy$WindowState;
    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v2

    .line 359
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 360
    .local v0, "arrts":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isSetupWizardComponent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 311
    const-string v0, "CommunalService"

    const-string v1, "setup wizard hasn\'t finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x1

    .line 314
    :cond_0
    return v0
.end method

.method private isSingleUIMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isStateBarHide()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isTopIsFullscreen()Z

    move-result v0

    return v0
.end method

.method private isSuperSnapWindow()Z
    .locals 5

    .prologue
    .line 367
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 368
    .local v1, "focusWindow":Landroid/view/WindowManagerPolicy$WindowState;
    if-nez v1, :cond_0

    .line 369
    const/4 v2, 0x0

    .line 371
    :goto_0
    return v2

    .line 370
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 371
    .local v0, "arrts":Landroid/view/WindowManager$LayoutParams;
    const-string v2, ""

    const-string v3, "cn.nubia.supersnap"

    const/4 v4, -0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private isThirdPartyLauncher()Z
    .locals 6

    .prologue
    .line 331
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 335
    .local v2, "launcherComponent":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 336
    .local v0, "currentComponent":Landroid/content/ComponentName;
    const-string v3, "cn.nubia.launcher"

    const-string v4, ""

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    const/4 v3, 0x0

    .line 344
    :goto_0
    return v3

    .line 339
    :cond_0
    const-string v3, "cn.nubia.launcher"

    const-string v4, "com.android.launcher3.Launcher"

    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    const-string v3, "CommunalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isThirdPartyLauncher, component is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v3, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v3, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v3

    goto :goto_0
.end method

.method private isZBiglauncherDefault()Z
    .locals 4

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 352
    .local v1, "launcherComponent":Landroid/content/ComponentName;
    const-string v2, "cn.nubia.zbiglauncher.preset"

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private needCancelSingleSlideGesture(Z)Z
    .locals 7
    .param p1, "isUp"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0, v4}, Lcn/nubia/server/policy/edge/CommunalService;->getSingleSlideFuns(I)I

    move-result v1

    .line 460
    .local v1, "funs":I
    const/16 v5, 0x2712

    if-ne v5, v1, :cond_2

    .line 461
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextAppIndex(Z)I

    move-result v5

    if-gez v5, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 461
    goto :goto_0

    .line 463
    :cond_2
    if-eqz p1, :cond_3

    const/16 v5, 0x4e23

    :goto_1
    invoke-virtual {p0, v4, v5}, Lcn/nubia/server/policy/edge/CommunalService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v2

    .line 465
    .local v2, "startComponent":Landroid/content/ComponentName;
    if-nez v2, :cond_4

    .line 466
    const-string v4, "CommunalService"

    const-string v5, "single slide for next component is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v2    # "startComponent":Landroid/content/ComponentName;
    :cond_3
    const/16 v5, 0x4e24

    goto :goto_1

    .line 469
    .restart local v2    # "startComponent":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 471
    .local v0, "currentComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 476
    goto :goto_0
.end method

.method private onScreenshotTake()V
    .locals 3

    .prologue
    .line 107
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    if-eqz v0, :cond_0

    .line 108
    const-string v1, "CommunalService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenshotTake, screenshot bitmap is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;->onScreenUploaded(Landroid/graphics/Bitmap;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 112
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getCancelGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)I

    move-result v0

    .line 425
    .local v0, "cancelAction":I
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1, v0}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 427
    const/4 v1, 0x1

    .line 429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCancelGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)I
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    .line 433
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    .line 434
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    .line 455
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 438
    :sswitch_0
    const/16 v1, 0x1003

    goto :goto_0

    .line 441
    :sswitch_1
    const/16 v1, 0x3003

    goto :goto_0

    .line 447
    :sswitch_2
    const/16 v1, 0x4003

    goto :goto_0

    .line 451
    :sswitch_3
    const/16 v1, 0x2003

    goto :goto_0

    .line 434
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0x2001 -> :sswitch_3
        0x2002 -> :sswitch_3
        0x2003 -> :sswitch_3
        0x3001 -> :sswitch_1
        0x3003 -> :sswitch_1
        0x4003 -> :sswitch_2
        0x4008 -> :sswitch_2
        0x4009 -> :sswitch_2
        0x400a -> :sswitch_2
        0x5001 -> :sswitch_2
    .end sparse-switch
.end method

.method public getCurrentAppIndex()I
    .locals 3

    .prologue
    .line 497
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/RecentTasks;->getTargetAppIndex()I

    move-result v1

    .line 498
    .local v1, "index":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 499
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v2, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v2, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isRecentTaksActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    const/4 v1, -0x1

    .line 501
    :cond_1
    return v1
.end method

.method public getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/RecentTasks;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRunPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 100
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNextAppIndex(Z)I
    .locals 9
    .param p1, "isUp"    # Z

    .prologue
    const/4 v5, -0x1

    .line 505
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 506
    .local v4, "recentTaskNum":I
    iget-object v6, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/RecentTasks;->getRecentTaskNum()I

    move-result v2

    .line 507
    .local v2, "maxNum":I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 509
    .local v1, "length":I
    if-gtz v1, :cond_1

    .line 510
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recent task\'s length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 536
    :cond_0
    :goto_0
    return v3

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentAppIndex()I

    move-result v0

    .line 514
    .local v0, "index":I
    move v3, v0

    .line 515
    .local v3, "nextIndex":I
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNextAppIndex curent index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", total lenght: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-eqz p1, :cond_3

    .line 517
    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_2

    .line 518
    const/4 v3, 0x0

    .line 531
    :goto_1
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNextAppIndex return index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", total lenght: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    if-ne v3, v0, :cond_0

    .line 533
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current index is the same as the next, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", total length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 534
    goto :goto_0

    .line 520
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 523
    :cond_3
    if-gez v3, :cond_4

    .line 524
    const/4 v6, 0x1

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 525
    :cond_4
    if-nez v3, :cond_5

    .line 526
    add-int/lit8 v3, v1, -0x1

    goto :goto_1

    .line 528
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method public getNextStartComponentName(II)Landroid/content/ComponentName;
    .locals 9
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 555
    iget-object v5, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/GestureSettings;->getSingleSlideStartAppInfo()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "value":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "switch_app"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    :cond_0
    const-string v5, "CommunalService"

    const-string v6, "single side switch is off or switch_app"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_0
    return-object v4

    .line 563
    :cond_1
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "apps":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-eq v5, v8, :cond_3

    .line 565
    :cond_2
    const-string v5, "CommunalService"

    const-string v6, "app length is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_3
    const/16 v5, 0x4e23

    if-ne p2, v5, :cond_4

    aget-object v0, v1, v6

    .line 570
    .local v0, "app":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 571
    const-string v5, "CommunalService"

    const-string v6, "app is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v0    # "app":Ljava/lang/String;
    :cond_4
    aget-object v0, v1, v7

    goto :goto_1

    .line 575
    .restart local v0    # "app":Ljava/lang/String;
    :cond_5
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "component":[Ljava/lang/String;
    if-eqz v2, :cond_6

    array-length v5, v2

    if-eq v5, v8, :cond_7

    .line 577
    :cond_6
    const-string v5, "CommunalService"

    const-string v6, "app\'s component is invalid !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_7
    aget-object v5, v2, v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, v2, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 582
    :cond_8
    const-string v5, "CommunalService"

    const-string v6, "app\'s component is empty !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_9
    new-instance v4, Landroid/content/ComponentName;

    aget-object v5, v2, v6

    aget-object v6, v2, v7

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecentTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTaskList(Z)Ljava/util/List;
    .locals 1
    .param p1, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->getRecentTaskList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShot(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .prologue
    .line 115
    const-string v1, "CommunalService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenShot, screenshot bitmap is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 117
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->onScreenshotTake()V

    .line 118
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSingleSlideFuns(I)I
    .locals 2
    .param p1, "leftOrRight"    # I

    .prologue
    .line 545
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->getSingleSlideStartAppInfo()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "value":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "switch_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    :cond_0
    const/16 v1, 0x2712

    .line 551
    :goto_0
    return v1

    :cond_1
    const/16 v1, 0x2711

    goto :goto_0
.end method

.method public getTargeAppIndex(Z)I
    .locals 4
    .param p1, "isUp"    # Z

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextAppIndex(Z)I

    move-result v0

    .line 225
    .local v0, "index":I
    const-string v1, "CommunalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTargeAppIndex isUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", next index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-gez v0, :cond_0

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->setTargetAppIndex(I)V

    goto :goto_0
.end method

.method public isGestureEnable(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 590
    const/16 v0, 0x4000

    if-eq v0, p1, :cond_0

    const/16 v0, 0x5000

    if-ne v0, p1, :cond_1

    .line 592
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_in_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    .line 607
    :goto_0
    return v0

    .line 594
    :cond_1
    const/16 v0, 0x1000

    if-ne v0, p1, :cond_2

    .line 595
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_single_move_switch"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 597
    :cond_2
    const/16 v0, 0x6000

    if-ne v0, p1, :cond_3

    .line 598
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_double_click"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 600
    :cond_3
    const/16 v0, 0x2000

    if-ne v0, p1, :cond_4

    .line 601
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_double_side_move"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 603
    :cond_4
    const/16 v0, 0x3000

    if-ne v0, p1, :cond_5

    .line 604
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 607
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHomeApplication()Z
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 541
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isHomeApplicationAndFocused()Z
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 481
    .local v0, "component":Landroid/content/ComponentName;
    const-string v1, "cn.nubia.launcher"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    const-string v1, "cn.nubia.launcher"

    const-string v2, "com.android.launcher3.Launcher"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    const-string v1, "cn.nubia.launcher"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSameFocusWindow(Ljava/lang/String;)Z

    move-result v1

    .line 488
    :goto_0
    return v1

    .line 486
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 488
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSupportedAtPresent(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x5000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 239
    .local v0, "component":Landroid/content/ComponentName;
    const-string v3, "cn.nubia.edge"

    const-string v4, "cn.nubia.edge.instruct.InstructActivity"

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cn.nubia.zbiglauncher.preset"

    const-string v4, ""

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isZBiglauncherDefault()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSetupWizardComponent()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 286
    :cond_1
    :goto_0
    return v1

    .line 247
    :cond_2
    const/16 v3, 0x2000

    if-eq v3, p1, :cond_1

    .line 251
    const/16 v3, 0x6000

    if-ne v3, p1, :cond_3

    .line 252
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 253
    goto :goto_0

    .line 259
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSingleUIMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.incallui"

    const-string v4, ""

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "cn.nubia.supersnap"

    const-string v4, ""

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSuperSnapWindow()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isExcludedFocusWindow()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 266
    goto :goto_0

    .line 269
    :cond_5
    const/16 v3, 0x4000

    if-eq v3, p1, :cond_6

    if-ne v5, p1, :cond_1

    .line 271
    :cond_6
    if-ne v5, p1, :cond_7

    .line 272
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isThirdPartyLauncher()Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 273
    goto :goto_0

    .line 275
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_8
    const-string v3, "cn.nubia.gallery3d"

    const-string v4, ""

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.recentsview.nubiauiv3.RecentsActivity"

    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isStateBarHide()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public removeScreenShotCallback()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "CommunalService"

    const-string v1, "removeScreenShotCallback"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 123
    return-void
.end method

.method public takeScreenShot(Z)V
    .locals 4
    .param p1, "singleSlide"    # Z

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->canCancelPreScreenShot(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v0, "CommunalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeScreenShot start for single slide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    .line 129
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 132
    :cond_1
    new-instance v0, Lcn/nubia/server/policy/edge/CommunalService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/CommunalService$1;-><init>(Lcn/nubia/server/policy/edge/CommunalService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    .line 175
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateGesture(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 6
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    const/16 v5, 0x4008

    const/16 v4, 0x1001

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    .line 406
    .local v0, "action":I
    if-eq v0, v4, :cond_0

    const/16 v3, 0x1002

    if-ne v0, v3, :cond_4

    .line 408
    :cond_0
    if-ne v0, v4, :cond_2

    .line 409
    .local v1, "isUp":Z
    :goto_0
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->needCancelSingleSlideGesture(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    if-eqz v1, :cond_3

    const v2, 0x10001

    :goto_1
    invoke-virtual {p1, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 421
    .end local v1    # "isUp":Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v2

    .line 408
    goto :goto_0

    .line 410
    .restart local v1    # "isUp":Z
    :cond_3
    const v2, 0x10002

    goto :goto_1

    .line 413
    .end local v1    # "isUp":Z
    :cond_4
    if-eq v0, v5, :cond_5

    const/16 v3, 0x4009

    if-ne v0, v3, :cond_1

    .line 415
    :cond_5
    if-ne v0, v5, :cond_6

    .line 416
    .restart local v1    # "isUp":Z
    :goto_3
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->needCancelSingleSlideGesture(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    if-eqz v1, :cond_7

    const v2, 0x40001

    :goto_4
    invoke-virtual {p1, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    goto :goto_2

    .end local v1    # "isUp":Z
    :cond_6
    move v1, v2

    .line 415
    goto :goto_3

    .line 417
    .restart local v1    # "isUp":Z
    :cond_7
    const v2, 0x40002

    goto :goto_4
.end method

.method public updateRecentTasksFlag(Z)V
    .locals 1
    .param p1, "changeBySwitch"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->updateRecentTasksFlag(Z)V

    .line 221
    return-void
.end method
