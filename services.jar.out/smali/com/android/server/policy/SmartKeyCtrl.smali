.class public Lcom/android/server/policy/SmartKeyCtrl;
.super Ljava/lang/Object;
.source "SmartKeyCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# instance fields
.field private mEnableSnapshot:Z

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private final mSnapshotRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/policy/SmartKeyCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SmartKeyCtrl$1;-><init>(Lcom/android/server/policy/SmartKeyCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/SmartKeyCtrl;->mSnapshotRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object p1, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/SmartKeyCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SmartKeyCtrl;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/server/policy/SmartKeyCtrl;->mEnableSnapshot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/SmartKeyCtrl;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SmartKeyCtrl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method private static getLongPressDelay(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptSmartKey(Landroid/view/KeyEvent;J)J
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "delay"    # J

    .prologue
    const-wide/16 v8, 0x1

    const/16 v6, 0x109

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 60
    const-wide/high16 v2, -0x8000000000000000L

    .line 61
    .local v2, "result":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v1

    .line 62
    .local v0, "down":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 65
    iget-object v5, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/SmartKeyCtrl;->mSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    add-long/2addr v2, v8

    .line 68
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 77
    :cond_1
    :goto_1
    return-wide v2

    .end local v0    # "down":Z
    :cond_2
    move v0, v4

    .line 61
    goto :goto_0

    .line 72
    .restart local v0    # "down":Z
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SmartKeyCtrl;->mSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    add-long/2addr v2, v8

    goto :goto_1
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 27
    const-wide/high16 v0, -0x8000000000000000L

    .line 28
    .local v0, "result":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 36
    :goto_0
    return-wide v0

    .line 31
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/SmartKeyCtrl;->getLongPressDelay(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/policy/SmartKeyCtrl;->interceptSmartKey(Landroid/view/KeyEvent;J)J

    move-result-wide v0

    .line 32
    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 42
    const-string v0, "smartkey_screen_off_snapshot"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 45
    return-void
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/android/server/policy/SmartKeyCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartkey_screen_off_snapshot"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/SmartKeyCtrl;->mEnableSnapshot:Z

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method
