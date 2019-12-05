.class public Lcn/nubia/server/policy/TouchHomeLightCtrl;
.super Ljava/lang/Object;
.source "TouchHomeLightCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final ACTION_CLOSE_LIGHT:Ljava/lang/String; = "com.ztemt.v5light.home_key_close_light"

.field private static final ACTION_OPEN_LIGHT:Ljava/lang/String; = "com.ztemt.v5light.home_key_open_light"

.field private static final ACTIVITY_ALARM_NAME:Ljava/lang/String; = "cn.nubia.deskclock.activity.AlarmAlertFullScreen"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "cn.nubia.v5light.HomeKeyActivity"

.field private static final LONG_PRESS_FAST_ON_FLASHLIGHT:Ljava/lang/String; = "long_press_fast_on_flash_light"

.field private static final TAG:Ljava/lang/String; = "TouchHomeLightCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLightOpened:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    .line 28
    iput-object p2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 29
    iput-object p1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;-><init>(Lcn/nubia/server/policy/TouchHomeLightCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mRunnable:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/TouchHomeLightCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCurrentLightActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/TouchHomeLightCtrl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/TouchHomeLightCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V

    return-void
.end method

.method private closeLight(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 68
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->startTimer()V

    .line 70
    iput-boolean v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    .line 72
    :cond_0
    return-void

    .end local v0    # "down":Z
    :cond_1
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method private isCurrentAlarmActivity()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 124
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "cn":Ljava/lang/String;
    const-string v2, "cn.nubia.deskclock.activity.AlarmAlertFullScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 128
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private isCurrentLightActivity()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    iget-object v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "cn":Ljava/lang/String;
    const-string v2, "cn.nubia.v5light.HomeKeyActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 118
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private longPressFastOnFlashlight()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "long_press_fast_on_flash_light"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    .local v1, "state":I
    if-nez v1, :cond_0

    .line 142
    .end local v1    # "state":I
    :goto_0
    return v2

    .line 137
    .restart local v1    # "state":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private openLight(Landroid/view/WindowManagerPolicy$WindowState;I)V
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "repeatCount"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 75
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 76
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-nez v0, :cond_2

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 75
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    .local v1, "type":I
    const/16 v2, 0x7ed

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4

    .line 82
    :cond_3
    if-ne p2, v4, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    if-nez v2, :cond_0

    .line 84
    const-string v2, "com.ztemt.v5light.home_key_open_light"

    invoke-direct {p0, v2}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V

    .line 86
    iput-boolean v3, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    goto :goto_1

    .line 89
    :cond_4
    if-ne p2, v4, :cond_0

    .line 90
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V

    .line 91
    iput-boolean v3, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    goto :goto_1
.end method

.method private sendLightBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 48
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 49
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 50
    .local v1, "repeatCount":I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 51
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->longPressFastOnFlashlight()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-direct {p0, p2}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->closeLight(Landroid/view/KeyEvent;)V

    .line 53
    invoke-direct {p0, p1, v1}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->openLight(Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCurrentLightActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    :cond_1
    :goto_0
    return-wide v2

    .line 58
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCurrentAlarmActivity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    :cond_3
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method
