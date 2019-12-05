.class public Lcn/nubia/server/policy/edge/BrightnessDialog;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_MSG_CREATE:I = 0x3

.field private static final DIALOG_MSG_DISMISS:I = 0x2

.field private static final DIALOG_MSG_SHOW:I = 0x1

.field private static final DIALOG_TIMEOUT_TIME:I = 0x3e8

.field private static final EXIT_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "BrightnessDialog"


# instance fields
.field private mBrightnessView:Lcn/nubia/server/policy/edge/BrightnessView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDialog:Landroid/app/Dialog;

.field private mExitAnimator:Landroid/animation/ObjectAnimator;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mRegisterObserver:Z

.field private mSetShow:Z

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    .line 89
    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$UIHandler;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    .line 90
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 92
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMinimumBacklight:I

    .line 93
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMaximumBacklight:I

    .line 94
    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$1;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/policy/edge/BrightnessDialog$1;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    .line 100
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->registerReceiver()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->showDialog()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->dismissDialogWithAnim()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->updateView()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/BrightnessDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->registerContentObserver()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->dismiss()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private buildDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    new-instance v2, Lcn/nubia/server/policy/edge/BrightnessDialog$3;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/policy/edge/BrightnessDialog$3;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    .line 129
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 130
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 131
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    const-string v3, "BrightnessDialog"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->initContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 133
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcn/nubia/server/policy/edge/BrightnessDialog$4;

    invoke-direct {v3, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$4;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcn/nubia/server/policy/edge/BrightnessDialog$5;

    invoke-direct {v3, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$5;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 147
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContentView:Landroid/view/View;

    .line 149
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 150
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 151
    const/16 v2, 0x7e4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 152
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 153
    const-string v2, "BrightnessDialog"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 157
    const v2, 0x40028

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 160
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    return-object v2
.end method

.method private dismiss()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissDialogWithAnim()V
    .locals 4

    .prologue
    .line 252
    const-string v0, "BrightnessDialog"

    const-string v1, "dismissDialogWithAnim"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string v0, "BrightnessDialog"

    const-string v1, "cancel animation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    .line 262
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContentView:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    .line 265
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$6;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 263
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initContentView()Landroid/view/View;
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 165
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x3030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "contentView":Landroid/view/View;
    const v2, 0x30d0015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/BrightnessView;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mBrightnessView:Lcn/nubia/server/policy/edge/BrightnessView;

    .line 169
    return-object v0
.end method

.method private reInitView()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mCurrentMode:I

    .line 186
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->updateView()V

    .line 187
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    if-eqz v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    .line 192
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 105
    new-instance v1, Lcn/nubia/server/policy/edge/BrightnessDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/BrightnessDialog$2;-><init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 112
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 239
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 214
    const-string v0, "BrightnessDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    .line 217
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    .line 220
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->updateParams()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->reInitView()V

    .line 223
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContentView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 226
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->resetTimeout()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mSetShow:Z

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mRegisterObserver:Z

    .line 204
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private updateParams()V
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 233
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 234
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 5

    .prologue
    .line 173
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mCurrentMode:I

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMaximumBacklight:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, "value":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mBrightnessView:Lcn/nubia/server/policy/edge/BrightnessView;

    iget v2, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMinimumBacklight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMaximumBacklight:I

    iget v4, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mMinimumBacklight:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/policy/edge/BrightnessView;->refreshBrightness(II)V

    .line 178
    const-string v1, "BrightnessDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView end  brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    const-string v0, "BrightnessDialog"

    const-string v1, "show() "

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
