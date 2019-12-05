.class Lcom/android/server/policy/NubiaGlobalActions;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/NubiaGlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;,
        Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;,
        Lcom/android/server/policy/NubiaGlobalActions$Action;,
        Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;,
        Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static mImageView:Landroid/widget/ImageView;


# instance fields
.field private mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

.field mAirplaneFrameLayout:Landroid/widget/FrameLayout;

.field mAirplaneImageView:Landroid/widget/ImageView;

.field mAirplaneLayout:Landroid/widget/LinearLayout;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mGlobalActionLayout:Landroid/widget/LinearLayout;

.field mGlobalActionView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/NubiaGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPowerOffLayout:Landroid/widget/FrameLayout;

.field mRebootLayout:Landroid/widget/FrameLayout;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field mSilentFrameLayout:Landroid/widget/FrameLayout;

.field mSilentImageView:Landroid/widget/ImageView;

.field mSilentLayout:Landroid/widget/LinearLayout;

.field private mSilentModeAction:Lcom/android/server/policy/NubiaGlobalActions$Action;

.field mVibratorFrameLayout:Landroid/widget/FrameLayout;

.field mVibratorImageView:Landroid/widget/ImageView;

.field mVibratorLayout:Landroid/widget/LinearLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    .line 115
    iput-boolean v5, p0, Lcom/android/server/policy/NubiaGlobalActions;->mKeyguardShowing:Z

    .line 116
    iput-boolean v5, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDeviceProvisioned:Z

    .line 117
    sget-object v3, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    .line 118
    iput-boolean v5, p0, Lcom/android/server/policy/NubiaGlobalActions;->mIsWaitingForEcmExit:Z

    .line 1057
    new-instance v3, Lcom/android/server/policy/NubiaGlobalActions$12;

    invoke-direct {v3, p0}, Lcom/android/server/policy/NubiaGlobalActions$12;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1089
    new-instance v3, Lcom/android/server/policy/NubiaGlobalActions$13;

    invoke-direct {v3, p0}, Lcom/android/server/policy/NubiaGlobalActions$13;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1099
    new-instance v3, Lcom/android/server/policy/NubiaGlobalActions$14;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/server/policy/NubiaGlobalActions$14;-><init>(Lcom/android/server/policy/NubiaGlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1112
    new-instance v3, Lcom/android/server/policy/NubiaGlobalActions$15;

    invoke-direct {v3, p0}, Lcom/android/server/policy/NubiaGlobalActions$15;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 143
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    const-string v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 148
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasTelephony:Z

    .line 158
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 163
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasVibrator:Z

    .line 164
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1120081

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/policy/NubiaGlobalActions;->mShowSilentToggle:Z

    .line 167
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/policy/NubiaGlobalActions;->mImageView:Landroid/widget/ImageView;

    .line 168
    sget-object v3, Lcom/android/server/policy/NubiaGlobalActions;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    return-void

    :cond_0
    move v3, v5

    .line 163
    goto :goto_0

    :cond_1
    move v4, v5

    .line 164
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/NubiaGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->setRingerModeView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/NubiaGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/NubiaGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/policy/NubiaGlobalActions;->setAirplaneView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/NubiaGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/policy/NubiaGlobalActions;Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;)Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/NubiaGlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/NubiaGlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/NubiaGlobalActions$Action;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 571
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 573
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_6

    .line 576
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 581
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 582
    .local v5, "user":Landroid/content/pm/UserInfo;
    if-nez v6, :cond_1

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    move v8, v11

    .line 584
    .local v8, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 586
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    new-instance v0, Lcom/android/server/policy/NubiaGlobalActions$11;

    const v2, 0x10803ba

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_5

    const-string v1, " \u2714"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NubiaGlobalActions$11;-><init>(Lcom/android/server/policy/NubiaGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 607
    .local v0, "switchToUser":Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    .end local v0    # "switchToUser":Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :catch_0
    move-exception v9

    .line 579
    .local v9, "re":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "currentUser":Landroid/content/pm/UserInfo;
    goto :goto_0

    .end local v9    # "re":Landroid/os/RemoteException;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    move v8, v12

    .line 582
    goto :goto_2

    :cond_1
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_2

    move v8, v11

    goto :goto_2

    :cond_2
    move v8, v12

    goto :goto_2

    .line 584
    .restart local v8    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 586
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v1, "Primary"

    goto :goto_4

    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 610
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1151
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1153
    iget-boolean v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1154
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    .line 1157
    :cond_0
    return-void

    .line 1147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1154
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Lcom/android/server/policy/NubiaShutdownRebootDialog;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 397
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "cn.nubia.gallery_lockscreen.powerlongpress"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_3

    .line 403
    new-instance v0, Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/NubiaGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentModeAction:Lcom/android/server/policy/NubiaGlobalActions$Action;

    .line 408
    :goto_0
    new-instance v0, Lcom/android/server/policy/NubiaGlobalActions$7;

    const v2, 0x108035c

    const v3, 0x108035e

    const v4, 0x1040124

    const v5, 0x1040125

    const v6, 0x1040126

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/NubiaGlobalActions$7;-><init>(Lcom/android/server/policy/NubiaGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;

    .line 450
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->onAirplaneModeChanged()V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 453
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$8;

    const v2, 0x1080030

    const v3, 0x104011b

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/NubiaGlobalActions$8;-><init>(Lcom/android/server/policy/NubiaGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$9;

    const v2, 0x1080651

    const v3, 0x104011d

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/NubiaGlobalActions$9;-><init>(Lcom/android/server/policy/NubiaGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentModeAction:Lcom/android/server/policy/NubiaGlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    const-string v0, "fw.power_user_switcher"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/NubiaGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    .line 542
    :cond_2
    new-instance v0, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    invoke-direct {v0, p0, v13}, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/NubiaGlobalActions;Lcom/android/server/policy/NubiaGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    .line 544
    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 545
    .local v9, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    iput-object v0, v9, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 546
    iput-object p0, v9, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 547
    iput-boolean v11, v9, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 548
    new-instance v7, Lcom/android/server/policy/NubiaShutdownRebootDialog;

    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x30e000e

    invoke-direct {v7, v0, v9, v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;I)V

    .line 550
    .local v7, "dialog":Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-virtual {v7, v10}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->setCanceledOnTouchOutside(Z)V

    .line 551
    new-instance v0, Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;

    invoke-direct {v0, p0, v13}, Lcom/android/server/policy/NubiaGlobalActions$CallBackShutdownReboot;-><init>(Lcom/android/server/policy/NubiaGlobalActions;Lcom/android/server/policy/NubiaGlobalActions$1;)V

    invoke-virtual {v7, v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->setCallbackShutdownOrReboot(Lcom/android/server/policy/NubiaShutdownRebootDialog$CallbackAction;)V

    .line 552
    invoke-virtual {v7}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 553
    invoke-virtual {v7}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 554
    invoke-virtual {v7}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$10;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 562
    invoke-virtual {v7}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 564
    invoke-virtual {v7}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12, v12}, Landroid/view/Window;->setLayout(II)V

    .line 566
    invoke-virtual {v7, p0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 567
    return-object v7

    .line 405
    .end local v7    # "dialog":Lcom/android/server/policy/NubiaShutdownRebootDialog;
    .end local v9    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_3
    new-instance v0, Lcom/android/server/policy/NubiaGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/NubiaGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentModeAction:Lcom/android/server/policy/NubiaGlobalActions$Action;

    goto/16 :goto_0
.end method

.method private getWallpaper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 614
    iget-object v4, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 615
    .local v3, "wallpaperMgr":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-nez v4, :cond_0

    .line 616
    iget-object v4, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 618
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 619
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 620
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 621
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->recycleBitmap()V

    .line 622
    sget-object v4, Lcom/android/server/policy/NubiaGlobalActions;->mImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 626
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "manager":Landroid/view/WindowManager;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 624
    :cond_0
    sget-object v4, Lcom/android/server/policy/NubiaGlobalActions;->mImageView:Landroid/widget/ImageView;

    const v5, -0x33777778    # -7.1582784E7f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    .line 204
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->awakenIfNecessary()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->createDialog()Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    .line 206
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->prepareDialog()V

    .line 207
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 208
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "GlobalActions"

    invoke-virtual {v7, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 210
    const v4, 0x40122

    .line 214
    .local v4, "flag":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 219
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 221
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 223
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->show()V

    .line 224
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 226
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 229
    .local v6, "airplaneModeOn":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->initView()V

    .line 230
    invoke-direct {p0, v6}, Lcom/android/server/policy/NubiaGlobalActions;->setAirplaneView(Z)V

    .line 231
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->setRingerModeView()V

    .line 234
    return-void

    .end local v6    # "airplaneModeOn":Z
    :cond_0
    move v6, v8

    .line 226
    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x3030006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    .line 240
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mVibratorImageView:Landroid/widget/ImageView;

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionLayout:Landroid/widget/LinearLayout;

    .line 244
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mPowerOffLayout:Landroid/widget/FrameLayout;

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mRebootLayout:Landroid/widget/FrameLayout;

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    .line 248
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mVibratorLayout:Landroid/widget/LinearLayout;

    .line 249
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentFrameLayout:Landroid/widget/FrameLayout;

    .line 252
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mVibratorFrameLayout:Landroid/widget/FrameLayout;

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneFrameLayout:Landroid/widget/FrameLayout;

    .line 254
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1133
    iget-boolean v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1141
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1138
    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    .line 1140
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 1136
    goto :goto_1

    .line 1138
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->refreshSilentMode()V

    .line 637
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;)V

    .line 638
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 639
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 641
    iget-boolean v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 642
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mBitmap:Landroid/graphics/Bitmap;

    .line 633
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 649
    iget-boolean v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 651
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentModeAction:Lcom/android/server/policy/NubiaGlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;)V

    .line 655
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 650
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 651
    .restart local v0    # "silentModeOn":Z
    :cond_2
    sget-object v2, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private setAirplaneView(Z)V
    .locals 2
    .param p1, "airplaneModeOn"    # Z

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x3020049

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 272
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const v0, 0x3020051

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 275
    return-void

    .line 269
    :cond_0
    const v0, 0x3020048

    goto :goto_0

    .line 272
    :cond_1
    const v0, 0x3020050

    goto :goto_1
.end method

.method private setAllClickListener()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mPowerOffLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$1;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mRebootLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$2;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$3;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mVibratorLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$4;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$5;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$6;-><init>(Lcom/android/server/policy/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method

.method private setRingerModeView()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 279
    .local v0, "ringerMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x3020050

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    const v2, 0x3020064

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x3020051

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 287
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    const v2, 0x3020065

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/NubiaGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/NubiaGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 672
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/NubiaGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/NubiaGlobalActions$Action;->onPress()V

    .line 675
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 659
    iget-boolean v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 664
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/policy/NubiaGlobalActions;->mKeyguardShowing:Z

    .line 179
    iput-boolean p2, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDeviceProvisioned:Z

    .line 180
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->dismiss()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/NubiaGlobalActions;->handleShow()V

    goto :goto_0
.end method
