.class final Lcom/android/server/display/NubiaOverlayDisplayWindow;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;,
        Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;,
        Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;,
        Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIELD_MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final FIELD_SINGLE_UI_MODE_SENSOR_SWITCH:Ljava/lang/String; = "single_ui_mode_sensor_switch"

.field private static KEY_MENU_AND_HOME_POS:Ljava/lang/String; = null

.field private static final NUBIA_OVERLAY_DISPLAY_CLOSE_MODE:Ljava/lang/String; = "single_ui_close_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_MERMORY:Ljava/lang/String; = "nubia_overlay_display_devices_mermory"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final NUBIA_SINGLE_KEY_STATUS:Ljava/lang/String; = "single_ui_key_status"

.field private static final NUBIA_SINGLE_SETTING_STATUS:Ljava/lang/String; = "single_ui_setting_status"

.field private static final SU_KEY_CLOSE:I = 0x0

.field private static final SU_KEY_OPEN:I = 0x1

.field private static final SU_MODE_LEFT:I = 0x2

.field private static final SU_MODE_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SingleHand"

.field private static mWindowVisible:Z


# instance fields
.field private final BW:I

.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final RESET_DELAY:J

.field private final STOP_REFRESH_DELAY:J

.field private final TW:I

.field private final WINDOW_ALPHA:F

.field private downTime:J

.field private mAdjustScreen:Landroid/view/ViewGroup;

.field private mAdjustTextView:Landroid/widget/TextView;

.field private mBottomCenterRound:Landroid/widget/ImageView;

.field private mBottomRoundView:Landroid/view/ViewGroup;

.field private mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

.field private mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

.field private mCloseSFRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCornerMarginSize:I

.field private mCornerOffsetSize:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExitSettingRunnable:Ljava/lang/Runnable;

.field private mExitTextTopMargin:I

.field private mExitTextView:Landroid/widget/TextView;

.field private final mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHigherLeftCorner:Landroid/view/ViewGroup;

.field private mHigherRightCorner:Landroid/view/ViewGroup;

.field private mInputCoverMask:Landroid/view/ViewGroup;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsRightHand:Z

.field private mIsSFRefreshing:Z

.field private mLastMode:I

.field private mLeftCenterRound:Landroid/widget/ImageView;

.field private mLeftRoundView:Landroid/view/ViewGroup;

.field private final mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

.field private mLogicalHeight:I

.field private mLogicalWidth:I

.field private mLowerLeftCorner:Landroid/view/ViewGroup;

.field private mLowerRightCorner:Landroid/view/ViewGroup;

.field private mMaskShadowMargin:I

.field private mMaxWidthVitrualScreen:I

.field private mMinWidthVitrualScreen:I

.field private mMovingHintHeight:I

.field private mMovingHintLayout:Landroid/view/View;

.field private mMovingHintLower:Landroid/view/View;

.field private mMovingHintPosOffset:I

.field private mMovingHintRound:Landroid/view/View;

.field private mMovingHintUpper:Landroid/view/View;

.field private mMovingHintWidth:I

.field private mMovingMask:Landroid/view/ViewGroup;

.field private mMovingRoundSize:I

.field private mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

.field private mOneDpMargin:I

.field private mOriHeight:I

.field private mOriWidth:I

.field private final mRate:F

.field private mRightCenterRound:Landroid/widget/ImageView;

.field private mRightRoundView:Landroid/view/ViewGroup;

.field private mRotated:I

.field private mRoundViewSize:I

.field private mSFHandler:Landroid/os/Handler;

.field private mScaleX:F

.field private mScaleY:F

.field private mScreenBackGround:Landroid/view/View;

.field private mScreenWithBar:Landroid/view/ViewGroup;

.field mSettingStatusVisible:Z

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsView:Landroid/view/ViewGroup;

.field private mSizerMask:Landroid/view/ViewGroup;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTopCenterRound:Landroid/widget/ImageView;

.field private mTopRoundView:Landroid/view/ViewGroup;

.field private mTouchSlop:I

.field private mUpdateHandler:Landroid/os/Handler;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVitrualScreen:Landroid/view/ViewGroup;

.field private mWidth:I

.field private mWindowContentNew:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowMarginSize:I

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowTopMaxMarginSize:I

.field private mWindowTopMinMarginSize:I

.field private mX:I

.field private mY:I

.field private onBarTouchListener:Landroid/view/View$OnTouchListener;

.field private onSettingClickListener:Landroid/view/View$OnClickListener;

.field private onTouchCoverListener:Landroid/view/View$OnTouchListener;

.field private upTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 901
    const-string v0, "persist.sys.key.menu2back"

    sput-object v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIIILjava/lang/String;DLcom/android/server/display/NubiaOverlayDisplayWindow$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "gravity"    # I
    .param p9, "leftOrRight"    # Ljava/lang/String;
    .param p10, "rate"    # D
    .param p12, "listener"    # Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->WINDOW_ALPHA:F

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    .line 162
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRotated:I

    .line 238
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->RESET_DELAY:J

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I

    .line 902
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    .line 903
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->upTime:J

    .line 971
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->BW:I

    .line 972
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->TW:I

    .line 1016
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$2;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1052
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 1260
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    .line 1261
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$5;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;

    .line 1288
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->STOP_REFRESH_DELAY:J

    .line 1289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    .line 1290
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    .line 1291
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    .line 1324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    .line 1325
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSettingClickListener:Landroid/view/View$OnClickListener;

    .line 1443
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onTouchCoverListener:Landroid/view/View$OnTouchListener;

    .line 1466
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 1893
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mUpdateHandler:Landroid/os/Handler;

    .line 1904
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 249
    iput p3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    .line 250
    iput p4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    .line 251
    double-to-float v0, p10

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    .line 252
    iput p6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    .line 253
    iput p5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    .line 254
    iput p8, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mGravity:I

    .line 255
    iput-object p12, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    .line 257
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 259
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 261
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 262
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 264
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    .line 265
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    .line 267
    const-string v0, "right"

    invoke-virtual {p9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->createWindow()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->registerLocaleChangedReceiver()V

    .line 276
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    goto :goto_0
.end method

.method private ResetBottomMovingHintToScreen()V
    .locals 4

    .prologue
    .line 775
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 776
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 777
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 778
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 779
    return-void
.end method

.method private ResetLowerRightMovingHint()V
    .locals 4

    .prologue
    .line 807
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 808
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 809
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 810
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/high16 v3, 0x43070000    # 135.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 811
    return-void
.end method

.method private ResetRightMovingHintToScreen()V
    .locals 4

    .prologue
    .line 791
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 792
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 793
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 794
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSide()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->exitSettingStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToVisible()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->reSetSettingsViewLocation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputCoverMask()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToInvisible()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->displayUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->relayout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintToScreen(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/display/NubiaOverlayDisplayWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/display/NubiaOverlayDisplayWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->saveDisplayMode(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenWithBarByLeft(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenWithBarByRight(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetWindowToScreen()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$5202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 124
    sput-boolean p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/NubiaOverlayDisplayWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private changeSide()V
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 1213
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 1214
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSideAnimation()V

    .line 1215
    return-void

    .line 1212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeSideAnimation()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1219
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 1221
    .local v0, "changeWidth":F
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v4, [F

    aput v0, v4, v6

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1228
    .local v1, "oaVScreen":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1229
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3e19999a    # 0.15f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1230
    new-instance v2, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;

    invoke-direct {v2, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1256
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1257
    return-void

    .line 1225
    .end local v1    # "oaVScreen":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v4, [F

    aput v5, v4, v6

    aput v0, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "oaVScreen":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private declared-synchronized changeSurfaceFlingerRefreshOptions(Z)V
    .locals 6
    .param p1, "doRefreshing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1300
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsSFRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    :try_start_1
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1303
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 1304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1305
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1306
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 1307
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1300
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1311
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private createShowAnimation()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showEnterAnimation()V

    .line 298
    return-void
.end method

.method private createWindow()V
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initSinglehandLayout()V

    .line 391
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initSingleDimensSet()V

    .line 393
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->legalizeInitSizeAndPos()V

    .line 395
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenBackGround()V

    .line 397
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initVirtualScreen()V

    .line 399
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initExitTextView()V

    .line 401
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initMask()V

    .line 403
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initVitualScreenCorner()V

    .line 405
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initRoundButton()V

    .line 407
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initMovingHintArrow()V

    .line 409
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initSettingButton()V

    .line 411
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initScaleXY()V

    .line 413
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->initTextureView()V

    .line 415
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setWindowParams()V

    .line 418
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    .line 422
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    .line 424
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->observe()V

    .line 427
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    .line 429
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->observe()V

    .line 432
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    .line 433
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->observe()V

    .line 434
    return-void
.end method

.method private displayUI(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 1452
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 1453
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1454
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->closeInputRect()V

    .line 1455
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetVitualScreenCorner()V

    .line 1456
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetRoundViewToScreen()V

    .line 1457
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 1458
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintToScreen(Landroid/view/View;)V

    .line 1463
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingUpperStartAnimation()V

    .line 1464
    return-void
.end method

.method private exitSettingStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    .line 1270
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 1271
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToInvisible()V

    .line 1272
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustTextView:Landroid/widget/TextView;

    const v1, 0x30c0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsButton:Landroid/widget/ImageView;

    const v1, 0x3020187

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    const v1, 0x30c0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1278
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1281
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_key_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1283
    return-void
.end method

.method private getViewWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 576
    .local v0, "spec":I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    return v1
.end method

.method private hideSettingButtonAnimation(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1856
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1858
    .local v0, "oaSettingButton":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1859
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1860
    return-void

    .line 1856
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private initExitTextView()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    .line 556
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustTextView:Landroid/widget/TextView;

    .line 558
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V

    .line 559
    return-void
.end method

.method private initMask()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    .line 585
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    .line 586
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    .line 588
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onTouchCoverListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 590
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 591
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 592
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputCoverMask()V

    .line 593
    return-void
.end method

.method private initMovingHintArrow()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    .line 733
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    .line 734
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintRound:Landroid/view/View;

    .line 735
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    .line 736
    return-void
.end method

.method private initRoundButton()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    .line 682
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopCenterRound:Landroid/widget/ImageView;

    .line 684
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    .line 686
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomCenterRound:Landroid/widget/ImageView;

    .line 688
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    .line 690
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftCenterRound:Landroid/widget/ImageView;

    .line 692
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    .line 694
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightCenterRound:Landroid/widget/ImageView;

    .line 697
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetRoundViewToScreen()V

    .line 699
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 703
    return-void
.end method

.method private initScaleXY()V
    .locals 2

    .prologue
    .line 881
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    if-ge v0, v1, :cond_0

    .line 882
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleX:F

    .line 883
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleY:F

    .line 888
    :goto_0
    return-void

    .line 885
    :cond_0
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleX:F

    .line 886
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleY:F

    goto :goto_0
.end method

.method private initSettingButton()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    .line 850
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsButton:Landroid/widget/ImageView;

    .line 852
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->reSetSettingsViewLocation()V

    .line 854
    return-void
.end method

.method private initSingleDimensSet()V
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 447
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x3090083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    .line 449
    const v1, 0x3090082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    .line 452
    const v1, 0x3090084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    .line 454
    const v1, 0x3090086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintWidth:I

    .line 455
    const v1, 0x3090085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintHeight:I

    .line 458
    const v1, 0x3090089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    .line 459
    const v1, 0x309008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    .line 460
    const v1, 0x3090088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingRoundSize:I

    .line 461
    const v1, 0x309008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    .line 462
    const v1, 0x309008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    .line 463
    const v1, 0x3090092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaskShadowMargin:I

    .line 464
    const v1, 0x3090093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOneDpMargin:I

    .line 465
    const v1, 0x3090094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTouchSlop:I

    .line 467
    const v1, 0x309008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I

    .line 469
    const v1, 0x309008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMaxMarginSize:I

    .line 472
    const v1, 0x3090090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextTopMargin:I

    .line 473
    return-void
.end method

.method private initSinglehandLayout()V
    .locals 3

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 438
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x303003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    .line 440
    return-void
.end method

.method private initTextureView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 893
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setPivotX(F)V

    .line 894
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setPivotY(F)V

    .line 895
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 896
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 897
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 899
    return-void
.end method

.method private initVirtualScreen()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    .line 523
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 524
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 526
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    .line 528
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 529
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 530
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 532
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 534
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    .line 536
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetScreenLocation()V

    .line 537
    return-void
.end method

.method private initVitualScreenCorner()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    .line 627
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    .line 629
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    .line 631
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v1, 0x30d00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    .line 634
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetVitualScreenCorner()V

    .line 636
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 640
    return-void
.end method

.method private isRightHand()Z
    .locals 1

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    return v0
.end method

.method private legalizeInitSizeAndPos()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    if-gt v0, v1, :cond_0

    .line 479
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    .line 480
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    .line 482
    :cond_0
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    if-lt v0, v1, :cond_1

    .line 483
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    .line 484
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    .line 487
    :cond_1
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    if-gtz v0, :cond_2

    .line 488
    iput v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    .line 489
    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 490
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    .line 491
    :cond_3
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    if-gtz v0, :cond_4

    .line 492
    iput v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    .line 493
    :cond_4
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5

    .line 494
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    .line 495
    :cond_5
    return-void
.end method

.method private declared-synchronized needSingleLayerRefreshHere()V
    .locals 4

    .prologue
    .line 1316
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    if-nez v0, :cond_0

    .line 1317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1320
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    monitor-exit p0

    return-void

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reSetSettingsViewLocation()V
    .locals 4

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 859
    .local v0, "marginWidth":F
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setX(F)V

    .line 865
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit16 v2, v2, -0x96

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 867
    return-void

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    goto :goto_0
.end method

.method private registerLocaleChangedReceiver()V
    .locals 3

    .prologue
    .line 1888
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1889
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1890
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1891
    return-void
.end method

.method private relayout()V
    .locals 3

    .prologue
    .line 1042
    sget-boolean v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateWindowParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    :cond_0
    return-void
.end method

.method private resetExitTextViewToScreen()V
    .locals 4

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMaxMarginSize:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    const/high16 v3, 0x42280000    # 42.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setY(F)V

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->getViewWidth(Landroid/view/View;)I

    move-result v0

    .line 570
    .local v0, "textWidth":I
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 571
    return-void

    .line 566
    .end local v0    # "textWidth":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextTopMargin:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setY(F)V

    goto :goto_0
.end method

.method private resetHigherLeftMovingHint()V
    .locals 4

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 800
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 801
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 802
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/high16 v3, 0x43070000    # 135.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 803
    return-void
.end method

.method private resetHigherRightMovingHint()V
    .locals 4

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 816
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 817
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 818
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 819
    return-void
.end method

.method private resetInputCoverMask()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 615
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 616
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 618
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 620
    return-void
.end method

.method private resetLeftMovingHintToScreen()V
    .locals 4

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 784
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 785
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 786
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 787
    return-void
.end method

.method private resetLowerLeftMovingHint()V
    .locals 4

    .prologue
    .line 823
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 824
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 825
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 826
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 827
    return-void
.end method

.method private resetMovingMask()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaskShadowMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 598
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaskShadowMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 600
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaskShadowMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 602
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaskShadowMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 604
    return-void
.end method

.method private resetRoundViewToScreen()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 707
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v2

    .line 708
    .local v1, "vitualScreenWidth":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v2

    .line 710
    .local v0, "vitualScreenHeight":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 712
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOneDpMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 715
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 717
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOneDpMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 720
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOneDpMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 722
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 725
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOneDpMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 727
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRoundViewSize:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 729
    return-void
.end method

.method private resetScreenLocation()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 543
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 545
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 546
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 550
    :cond_0
    return-void
.end method

.method private resetSettingToInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1428
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1438
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1441
    return-void
.end method

.method private resetSettingToVisible()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1354
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    .line 1355
    .local v2, "screenX":F
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    .line 1356
    .local v3, "screenY":F
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v4

    .line 1357
    .local v1, "screenWidth":F
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v4

    .line 1359
    .local v0, "screenHeight":F
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1360
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1361
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1367
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 1369
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1370
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1376
    :goto_1
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1377
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1378
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1384
    :goto_2
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 1385
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1386
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1392
    :goto_3
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 1394
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1399
    :goto_4
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 1401
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1406
    :goto_5
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 1409
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1414
    :goto_6
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowMarginSize:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 1417
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1422
    :goto_7
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1423
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1424
    return-void

    .line 1363
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1364
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1372
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1373
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1380
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1381
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1388
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1389
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightCenterRound:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1396
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 1403
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 1411
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 1419
    :cond_7
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7
.end method

.method private resetSizerMask()V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 608
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 609
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 610
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 611
    return-void
.end method

.method private resetTopMovingHintToScreen()V
    .locals 4

    .prologue
    .line 768
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 769
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 770
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setMovingHintXY(FF)V

    .line 771
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 772
    return-void
.end method

.method private resetVitualScreenCorner()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 646
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 649
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 653
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 656
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 658
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 665
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 671
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerMarginSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCornerOffsetSize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 675
    return-void
.end method

.method private resetWindowToScreen()V
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetVitualScreenCorner()V

    .line 836
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetRoundViewToScreen()V

    .line 837
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 838
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 839
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputCoverMask()V

    .line 840
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToVisible()V

    .line 843
    :cond_0
    return-void
.end method

.method private saveDisplayMode(I)V
    .locals 3
    .param p1, "suModeLeftOrRight"    # I

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I

    .line 1594
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1596
    return-void
.end method

.method private setInputRect(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 977
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 979
    .local v2, "mRect3":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRotated:I

    packed-switch v3, :pswitch_data_0

    .line 983
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 984
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 985
    .local v0, "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1012
    .local v1, "mRect2":Landroid/graphics/Rect;
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/display/SingleUIRectNotifyer;->notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1014
    return-void

    .line 987
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 988
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 990
    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 992
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 993
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 994
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 996
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, 0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, 0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 997
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, 0x64

    add-int/lit8 v4, v4, -0x32

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, 0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1000
    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 1002
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1003
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, -0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1004
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, -0x64

    add-int/lit16 v4, v4, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, -0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 1007
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1008
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 370
    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 371
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000328

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 380
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 381
    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 382
    const-string v0, "singleUI_view_layer"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method private setMovingHintRoundLocation(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintRound:Landroid/view/View;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingRoundSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 831
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintRound:Landroid/view/View;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingRoundSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 832
    return-void
.end method

.method private setMovingHintToScreen(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 740
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetTopMovingHintToScreen()V

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    .line 742
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetBottomMovingHintToScreen()V

    goto :goto_0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_3

    .line 744
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetLeftMovingHintToScreen()V

    goto :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_4

    .line 748
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetRightMovingHintToScreen()V

    goto :goto_0

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_5

    .line 750
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetHigherLeftMovingHint()V

    goto :goto_0

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_6

    .line 752
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetHigherRightMovingHint()V

    goto :goto_0

    .line 753
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_7

    .line 754
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetLowerLeftMovingHint()V

    goto :goto_0

    .line 755
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetLowerRightMovingHint()V

    goto :goto_0
.end method

.method private setMovingHintXY(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 763
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 764
    return-void
.end method

.method private setScreenBackGround()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 498
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v2, 0x30d0093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    .line 500
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x5a

    invoke-static {v1, v2, v3}, Lnubia/util/BlurUtil;->clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    .local v0, "backgroundBlured":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    new-instance v2, Lcom/android/server/display/OnDoubleClickListener;

    new-instance v3, Lcom/android/server/display/NubiaOverlayDisplayWindow$1;

    invoke-direct {v3, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$1;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-direct {v2, v3}, Lcom/android/server/display/OnDoubleClickListener;-><init>(Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    return-void
.end method

.method private setScreenWidthHeight(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriWidth:I

    .line 1685
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriHeight:I

    .line 1686
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1687
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1689
    return-void
.end method

.method private setScreenWithBarByLeft(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # F

    .prologue
    .line 1600
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 1601
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float p2, v0

    .line 1606
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenWidthHeight(F)V

    .line 1608
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1610
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1615
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setVitrualScreenSize(F)V

    .line 1616
    return-void

    .line 1602
    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 1603
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float p2, v0

    goto :goto_0
.end method

.method private setScreenWithBarByRight(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # F

    .prologue
    .line 1620
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 1621
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float p2, v0

    .line 1626
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setScreenWidthHeight(F)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 1629
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1632
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetScreenLocation()V

    .line 1633
    invoke-direct {p0, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setVitrualScreenSize(F)V

    .line 1634
    return-void

    .line 1622
    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 1623
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float p2, v0

    goto :goto_0
.end method

.method private setSizerMaskWidthHeight(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriWidth:I

    .line 1769
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriHeight:I

    .line 1770
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1771
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1772
    return-void
.end method

.method private setVitrualScreenSize(F)V
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1693
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1694
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1697
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    .line 1698
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    .line 1701
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;->onWindowSizeChanged(II)V

    .line 1704
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1705
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 1707
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1708
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1710
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setPivotX(F)V

    .line 1711
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setPivotY(F)V

    .line 1712
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1713
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1714
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1716
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1717
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 1719
    .local v1, "tran_x":F
    neg-float v2, v1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1720
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1721
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v6}, Landroid/view/TextureView;->setScaleX(F)V

    .line 1722
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v6}, Landroid/view/TextureView;->setScaleY(F)V

    .line 1725
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetWindowToScreen()V

    .line 1726
    return-void
.end method

.method private setWindowParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7ea

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 872
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 873
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 874
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 875
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 876
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 878
    return-void
.end method

.method private showEnterAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1779
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1781
    .local v1, "scale":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v7, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 1783
    .local v8, "pivotY":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    div-float v6, v3, v4

    .line 1785
    .local v6, "pivotX":F
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1786
    sub-float v6, v2, v6

    .line 1789
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1792
    .local v0, "enter":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1793
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e23d70a    # 0.16f

    const v5, 0x3dcccccd    # 0.1f

    const v7, 0x3e19999a    # 0.15f

    invoke-direct {v3, v4, v5, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1794
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1795
    return-void
.end method

.method private showExitAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1799
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1801
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    .line 1802
    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .line 1805
    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v1

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1808
    .local v0, "exit":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1809
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e23d70a    # 0.16f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e19999a    # 0.15f

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1810
    new-instance v1, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;

    invoke-direct {v1, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1844
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1845
    return-void

    .line 1805
    .end local v0    # "exit":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showMovingUpperStartAnimation()V
    .locals 4

    .prologue
    .line 1864
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLayout:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1866
    .local v0, "oaMovingLayout":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1867
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1869
    return-void

    .line 1864
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private showSettingButtonAnimation(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1849
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1851
    .local v0, "oaSettingButton":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1852
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1853
    return-void

    .line 1849
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const-string v0, "SingleHand"

    const-string v1, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateWindowParams()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 935
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 936
    .local v1, "rotation":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 937
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch v1, :pswitch_data_0

    .line 942
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 943
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 944
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 945
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 948
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRate:F

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 949
    .local v2, "tran_x":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 950
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 951
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleX(F)V

    .line 952
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleY(F)V

    .line 954
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .line 968
    .end local v2    # "tran_x":F
    :goto_0
    return v7

    .line 960
    :pswitch_1
    const-string v3, "SingleHand"

    const-string v4, "singleUI closed for screen is landscape"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_close_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 963
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adjustHorizontalPosition(Landroid/view/View;F)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deltaX"    # F

    .prologue
    .line 1661
    const/4 v2, 0x0

    .line 1662
    .local v2, "minX":F
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v1, v3

    .line 1663
    .local v1, "maxX":F
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 1666
    .local v0, "marginWidth":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v3, v0

    add-float/2addr v3, p2

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    .line 1667
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float v3, v2, v3

    sub-float p2, v3, v0

    .line 1671
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 1673
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetWindowToScreen()V

    .line 1675
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLeftRoundView:Landroid/view/ViewGroup;

    if-ne p1, v3, :cond_3

    .line 1676
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetLeftMovingHintToScreen()V

    .line 1680
    :cond_1
    :goto_1
    return-void

    .line 1668
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, p2

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 1669
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    sub-float p2, v3, v4

    goto :goto_0

    .line 1677
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRightRoundView:Landroid/view/ViewGroup;

    if-ne p1, v3, :cond_1

    .line 1678
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetRightMovingHintToScreen()V

    goto :goto_1
.end method

.method public adjustVerticalPosition(Landroid/view/View;F)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deltaY"    # F

    .prologue
    .line 1638
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowTopMinMarginSize:I

    int-to-float v2, v3

    .line 1639
    .local v2, "minY":F
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v1, v3

    .line 1640
    .local v1, "maxY":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v3

    .line 1643
    .local v0, "mScreenHeight":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, p2

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    .line 1644
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float p2, v2, v3

    .line 1649
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 1650
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetWindowToScreen()V

    .line 1651
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTopRoundView:Landroid/view/ViewGroup;

    if-ne p1, v3, :cond_3

    .line 1652
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetTopMovingHintToScreen()V

    .line 1656
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->reSetSettingsViewLocation()V

    .line 1657
    return-void

    .line 1645
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, v0

    add-float/2addr v3, p2

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 1646
    sub-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    sub-float p2, v3, v4

    goto :goto_0

    .line 1653
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mBottomRoundView:Landroid/view/ViewGroup;

    if-ne p1, v3, :cond_1

    .line 1654
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetBottomMovingHintToScreen()V

    goto :goto_1
.end method

.method public closeInputRect()V
    .locals 4

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setInputRect(IIII)V

    .line 1875
    return-void
.end method

.method public createDismissAnimation()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showExitAnimation()V

    .line 348
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 301
    sget-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_key_status"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideSettingButtonAnimation(Landroid/view/ViewGroup;)V

    .line 313
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 316
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->createDismissAnimation()V

    .line 318
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    .line 322
    sget-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 333
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    .line 334
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->unobserve()V

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    .end local v0    # "status":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleY()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public resetInputRect()V
    .locals 4

    .prologue
    .line 1878
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    if-eqz v0, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->closeInputRect()V

    .line 1885
    :goto_0
    return-void

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setInputRect(IIII)V

    goto :goto_0
.end method

.method public sendInjectEvent(II)V
    .locals 15
    .param p1, "action"    # I
    .param p2, "actionCode"    # I

    .prologue
    .line 907
    packed-switch p1, :pswitch_data_0

    .line 932
    :goto_0
    return-void

    .line 909
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    .line 910
    iget-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 915
    .local v13, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 917
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 922
    .end local v13    # "down":Landroid/view/KeyEvent;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->upTime:J

    .line 923
    iget-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->upTime:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 927
    .local v14, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 929
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSizerMaskSizebyLeft(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # F

    .prologue
    .line 1731
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 1732
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float p2, v0

    .line 1737
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setSizerMaskWidthHeight(F)V

    .line 1739
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 1740
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1743
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1746
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1747
    return-void

    .line 1733
    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 1734
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float p2, v0

    goto :goto_0
.end method

.method public setSizerMaskSizebyRight(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # F

    .prologue
    .line 1752
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 1753
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float p2, v0

    .line 1758
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setSizerMaskWidthHeight(F)V

    .line 1760
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightCorner:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOriHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1764
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1765
    return-void

    .line 1754
    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 1755
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float p2, v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 281
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateWindowParams()Z

    .line 288
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->createShowAnimation()V

    .line 290
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showSettingButtonAnimation(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public updateSUMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1126
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ss_multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1128
    .local v0, "isMultiWindow":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1132
    :cond_0
    return-void
.end method
