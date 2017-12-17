.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 151
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 180
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 188
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 196
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 201
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 203
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 205
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 209
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 211
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 234
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1270
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1272
    :pswitch_0
    const-string v0, "APP_STATE_IDLE"

    goto :goto_0

    .line 1274
    :pswitch_1
    const-string v0, "APP_STATE_READY"

    goto :goto_0

    .line 1276
    :pswitch_2
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_0

    .line 1278
    :pswitch_3
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 1223
    packed-switch p0, :pswitch_data_0

    .line 1264
    :pswitch_0
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 1225
    :pswitch_1
    const-string v0, "TRANSIT_UNSET"

    goto :goto_0

    .line 1228
    :pswitch_2
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    .line 1231
    :pswitch_3
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_0

    .line 1234
    :pswitch_4
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_0

    .line 1237
    :pswitch_5
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_0

    .line 1240
    :pswitch_6
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_0

    .line 1243
    :pswitch_7
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_0

    .line 1246
    :pswitch_8
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_0

    .line 1249
    :pswitch_9
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_0

    .line 1252
    :pswitch_a
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_0

    .line 1255
    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_0

    .line 1258
    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_0

    .line 1261
    :pswitch_d
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    goto :goto_0

    .line 1223
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 459
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 460
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 461
    int-to-float v1, p0

    .line 463
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 521
    if-eqz p2, :cond_1

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 525
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 527
    .local v9, "appHeight":I
    const/16 v18, 0x0

    .line 528
    .local v18, "t":F
    if-lez v9, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 531
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x40e00000    # 7.0f

    div-float v22, v22, v23

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 534
    .local v20, "translationY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v11, v21, v22

    .line 535
    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v12, v21, v22

    .line 538
    .local v12, "centerY":I
    new-instance v13, Landroid/view/animation/ClipRectLRAnimation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v21, v11, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v11

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v13, v0, v1, v2, v10}, Landroid/view/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 542
    .local v13, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 543
    const-wide/16 v22, 0x86

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 544
    new-instance v14, Landroid/view/animation/ClipRectTBAnimation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v21, v12, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v12

    sub-int v22, v22, v20

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v9}, Landroid/view/animation/ClipRectTBAnimation;-><init>(IIII)V

    .line 548
    .local v14, "clipAnimTB":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 549
    const-wide/16 v22, 0x150

    move-wide/from16 v0, v22

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 551
    new-instance v19, Landroid/view/animation/TranslateYAnimation;

    const/16 v21, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 553
    .local v19, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 554
    const-wide/16 v22, 0x150

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 557
    const/16 v7, 0x54

    .line 558
    .local v7, "alphaDuration":I
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 559
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v22, 0x54

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 562
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 563
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 564
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 565
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 566
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 567
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 568
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 569
    move-object v8, v15

    .line 597
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "alphaDuration":I
    .end local v9    # "appHeight":I
    .end local v10    # "appWidth":I
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v13    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v14    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "t":F
    .end local v19    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .end local v20    # "translationY":I
    .local v8, "anim":Landroid/view/animation/Animation;
    :goto_0
    return-object v8

    .line 572
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 578
    const-wide/16 v16, 0x150

    .line 581
    .local v16, "duration":J
    :goto_1
    const/16 v21, 0xe

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    const/16 v21, 0xf

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 587
    :cond_2
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 588
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 593
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 594
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 595
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0

    .line 575
    .end local v8    # "anim":Landroid/view/animation/Animation;
    .end local v16    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 576
    .restart local v16    # "duration":J
    goto :goto_1

    .line 591
    :cond_3
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v8    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 468
    const/4 v11, 0x0

    .line 469
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 471
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 472
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 473
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 476
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 478
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 479
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 481
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 482
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 483
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 484
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 485
    move-object v11, v13

    .line 503
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 509
    const-wide/16 v14, 0x150

    .line 512
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 515
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 516
    return-object v11

    .line 486
    .end local v14    # "duration":J
    :cond_0
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 492
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 493
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 496
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 506
    :pswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v14, v6

    .line 507
    .restart local v14    # "duration":J
    goto :goto_1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 372
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 377
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 378
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_0

    .line 379
    const-string v0, "android"

    .line 383
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 386
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :goto_1
    return-object v2

    .line 376
    :cond_1
    const-string v0, "android"

    goto :goto_0

    .line 386
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 392
    if-eqz p1, :cond_1

    .line 393
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 394
    const-string p1, "android"

    .line 398
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 435
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 437
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 438
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 439
    move v0, p2

    .line 442
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 443
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 445
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method

.method private nubiaCreateScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 1371
    const/4 v14, 0x0

    .line 1372
    .local v14, "nubiaAnimation":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 1373
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int v12, v5, v6

    .line 1374
    .local v12, "centerX":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int v13, v5, v6

    .line 1375
    .local v13, "centerY":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v5, v5

    move/from16 v0, p3

    int-to-float v6, v0

    div-float v16, v5, v6

    .line 1376
    .local v16, "scaleW":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v5, v5

    move/from16 v0, p4

    int-to-float v6, v0

    div-float v15, v5, v6

    .line 1378
    .local v15, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v9, v12

    int-to-float v10, v13

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1379
    .local v4, "scale":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e947ae1    # 0.29f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1381
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1382
    .local v11, "alpha":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e947ae1    # 0.29f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1384
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1385
    .local v17, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1386
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1387
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 1388
    move-object/from16 v14, v17

    .line 1410
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "centerX":I
    .end local v13    # "centerY":I
    .end local v15    # "scaleH":F
    .end local v16    # "scaleW":F
    .end local v17    # "set":Landroid/view/animation/AnimationSet;
    :goto_0
    const-wide/16 v6, 0x96

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1411
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1412
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1413
    return-object v14

    .line 1389
    :cond_0
    const/16 v5, 0xe

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0xf

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 1395
    :cond_1
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    .end local v14    # "nubiaAnimation":Landroid/view/animation/Animation;
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1396
    .restart local v14    # "nubiaAnimation":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 1398
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1399
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1401
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f666666    # 0.9f

    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1402
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e3851ec    # 0.18f

    const v7, 0x3ca3d70a    # 0.02f

    const v8, 0x3ea8f5c3    # 0.33f

    const v9, 0x3f6b851f    # 0.92f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1404
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1405
    .local v18, "set2":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1406
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1407
    move-object/from16 v14, v18

    goto :goto_0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1285
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1287
    :pswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    .line 1289
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_0

    .line 1291
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    goto :goto_0

    .line 1293
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_0

    .line 1295
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_0

    .line 1297
    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_0

    .line 1299
    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_0

    .line 1301
    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_0

    .line 1285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 955
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 327
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 329
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 20
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v16, v0

    .line 727
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_0

    move/from16 v0, v16

    int-to-float v15, v0

    .line 728
    .local v15, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 729
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_1

    int-to-float v13, v14

    .line 732
    .local v13, "thumbHeight":F
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 733
    .local v2, "scale":F
    const/4 v11, 0x0

    .line 735
    .local v11, "scaledTopDecor":I
    packed-switch p1, :pswitch_data_0

    .line 835
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Invalid thumbnail transition state"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 727
    .end local v2    # "scale":F
    .end local v11    # "scaledTopDecor":I
    .end local v13    # "thumbHeight":F
    .end local v14    # "thumbHeightI":I
    .end local v15    # "thumbWidth":F
    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_0

    .line 729
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_1
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_1

    .line 738
    .restart local v2    # "scale":F
    .restart local v11    # "scaledTopDecor":I
    .restart local v13    # "thumbHeight":F
    :pswitch_0
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    .line 740
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v15, v3

    .line 741
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 742
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 743
    .local v18, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 756
    .end local v18    # "unscaledThumbHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 760
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v8, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    move v4, v2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 763
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 764
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v11

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 766
    .local v17, "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 767
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 768
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 769
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 770
    move-object v4, v12

    .line 838
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_3
    const/16 v3, 0x150

    const/16 v5, 0x150

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 840
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 748
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    :cond_2
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v13, v3

    .line 749
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 750
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 751
    .local v19, "unscaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 775
    .end local v19    # "unscaledThumbWidth":I
    :pswitch_1
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 778
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 780
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 782
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 786
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 789
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 791
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 793
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 797
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 799
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v15, v3

    .line 800
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 801
    div-float v3, v13, v2

    float-to-int v0, v3

    move/from16 v18, v0

    .line 802
    .restart local v18    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v18

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 815
    .end local v18    # "unscaledThumbHeight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, v1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 822
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 823
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-int v8, v11

    int-to-float v8, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 825
    .restart local v17    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 826
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 827
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 828
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 830
    move-object v4, v12

    .line 831
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_3

    .line 807
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v13, v3

    .line 808
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 809
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 810
    .restart local v19    # "unscaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 662
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_0

    move/from16 v0, v16

    int-to-float v15, v0

    .line 663
    .local v15, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 664
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_1

    int-to-float v13, v14

    .line 666
    .local v13, "thumbHeight":F
    :goto_1
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v4, v3, v15

    .line 667
    .local v4, "scaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    .line 668
    .local v20, "unscaledWidth":F
    mul-float v18, v13, v4

    .line 669
    .local v18, "unscaledHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    sub-float v5, v18, v13

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v19, v3, v5

    .line 670
    .local v19, "unscaledStartY":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_2

    .line 672
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v15, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v13, v9

    add-float/2addr v8, v9

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 675
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 676
    const-wide/16 v8, 0x150

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 677
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 678
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 679
    const-wide/16 v8, 0x150

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 680
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v19

    neg-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 682
    .local v17, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 683
    const-wide/16 v8, 0x150

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 686
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 687
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 688
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 689
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 690
    move-object v6, v12

    .line 714
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 662
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v13    # "thumbHeight":F
    .end local v14    # "thumbHeightI":I
    .end local v15    # "thumbWidth":F
    .end local v17    # "translate":Landroid/view/animation/Animation;
    .end local v18    # "unscaledHeight":F
    .end local v19    # "unscaledStartY":F
    .end local v20    # "unscaledWidth":F
    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 664
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_1
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 693
    .restart local v4    # "scaleW":F
    .restart local v13    # "thumbHeight":F
    .restart local v18    # "unscaledHeight":F
    .restart local v19    # "unscaledStartY":F
    .restart local v20    # "unscaledWidth":F
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v15, v8

    add-float/2addr v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v13, v9

    add-float/2addr v9, v3

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 696
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 697
    const-wide/16 v8, 0x150

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 698
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 699
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 700
    const-wide/16 v8, 0x150

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 701
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    neg-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 703
    .restart local v17    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 704
    const-wide/16 v8, 0x150

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 707
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 708
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 709
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 710
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 711
    move-object v6, v12

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 891
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 892
    .local v20, "thumbWidthI":I
    if-lez v20, :cond_0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 893
    .local v19, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 894
    .local v18, "thumbHeightI":I
    if-lez v18, :cond_1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 896
    .local v17, "thumbHeight":F
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 943
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "Invalid thumbnail transition state"

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 892
    .end local v17    # "thumbHeight":F
    .end local v18    # "thumbHeightI":I
    .end local v19    # "thumbWidth":F
    :cond_0
    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_0

    .line 894
    .restart local v18    # "thumbHeightI":I
    .restart local v19    # "thumbWidth":F
    :cond_1
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_1

    .line 899
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 900
    .local v5, "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 901
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 946
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    .line 908
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v6, 0xe

    move/from16 v0, p4

    if-ne v0, v6, :cond_2

    .line 912
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 915
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 917
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 922
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 923
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 927
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 928
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 929
    .restart local v7    # "scaleH":F
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v6, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move v10, v5

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 933
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 935
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 936
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 937
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 938
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 939
    move-object/from16 v4, v16

    .line 940
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 896
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    .prologue
    .line 850
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 851
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 852
    .local v16, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 853
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    int-to-float v14, v15

    .line 855
    .local v14, "thumbHeight":F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_2

    .line 857
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 858
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 859
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 862
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 864
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 865
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 868
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 869
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 870
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 871
    move-object v5, v13

    .line 881
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 851
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v15    # "thumbHeightI":I
    .end local v16    # "thumbWidth":F
    :cond_0
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_0

    .line 853
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1

    .line 874
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 875
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 876
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1310
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1358
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1362
    :cond_1
    return-void

    .line 1317
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1333
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1337
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_0

    .line 1344
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1346
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1348
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 1315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 335
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 336
    return-void
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingX()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    return v0
.end method

.method getStartingY()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    .line 639
    if-eqz p1, :cond_1

    .line 640
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 649
    :goto_0
    return v0

    .line 643
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 646
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 647
    const/4 v0, 0x1

    goto :goto_0

    .line 649
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;)V
    .locals 4
    .param p1, "openingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "closingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    .prologue
    const/4 v0, 0x0

    .line 316
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 317
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 318
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v2, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :goto_2
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :cond_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 323
    return-void

    :cond_1
    move-object v3, v0

    .line 318
    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 259
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 247
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z

    .prologue
    .line 964
    if-eqz p10, :cond_2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    const/16 v1, 0xa

    if-ne p2, v1, :cond_2

    .line 967
    :cond_0
    if-eqz p3, :cond_1

    const v1, 0x10a007e

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1112
    .local v9, "a":Landroid/view/animation/Animation;
    :goto_1
    return-object v9

    .line 967
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_1
    const v1, 0x10a007f

    goto :goto_0

    .line 974
    :cond_2
    if-eqz p10, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0x9

    if-eq p2, v1, :cond_3

    const/16 v1, 0xb

    if-ne p2, v1, :cond_5

    .line 977
    :cond_3
    if-eqz p3, :cond_4

    const v1, 0x10a007c

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_4
    const v1, 0x10a007d

    goto :goto_2

    .line 984
    :cond_5
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 985
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_6

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_6
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3

    .line 992
    :cond_7
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 993
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 999
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_8
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 1000
    move-object/from16 v0, p9

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1005
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_9
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1010
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/wm/AppTransition;->nubiaCreateScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1017
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_a
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 1019
    :cond_b
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1021
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move/from16 v0, p5

    invoke-virtual {p0, v1, p4, v0, p2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1019
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 1031
    :cond_d
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_e

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_10

    .line 1033
    :cond_e
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1035
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v2

    move-object v1, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 1033
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_f
    const/4 v1, 0x0

    goto :goto_5

    .line 1047
    :cond_10
    const/4 v10, 0x0

    .line 1048
    .local v10, "animAttr":I
    packed-switch p2, :pswitch_data_0

    .line 1104
    :goto_6
    if-eqz v10, :cond_1c

    invoke-virtual {p0, p1, v10}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v9

    .restart local v9    # "a":Landroid/view/animation/Animation;
    :goto_7
    goto/16 :goto_1

    .line 1050
    .end local v9    # "a":Landroid/view/animation/Animation;
    :pswitch_0
    if-eqz p3, :cond_11

    const/4 v10, 0x4

    .line 1053
    :goto_8
    goto :goto_6

    .line 1050
    :cond_11
    const/4 v10, 0x5

    goto :goto_8

    .line 1055
    :pswitch_1
    if-eqz p3, :cond_12

    const/4 v10, 0x6

    .line 1058
    :goto_9
    goto :goto_6

    .line 1055
    :cond_12
    const/4 v10, 0x7

    goto :goto_9

    .line 1060
    :pswitch_2
    if-eqz p3, :cond_13

    const/16 v10, 0x8

    .line 1063
    :goto_a
    goto :goto_6

    .line 1060
    :cond_13
    const/16 v10, 0x9

    goto :goto_a

    .line 1065
    :pswitch_3
    if-eqz p3, :cond_14

    const/16 v10, 0xa

    .line 1068
    :goto_b
    goto :goto_6

    .line 1065
    :cond_14
    const/16 v10, 0xb

    goto :goto_b

    .line 1070
    :pswitch_4
    if-eqz p3, :cond_15

    const/16 v10, 0xc

    .line 1073
    :goto_c
    goto :goto_6

    .line 1070
    :cond_15
    const/16 v10, 0xd

    goto :goto_c

    .line 1075
    :pswitch_5
    if-eqz p3, :cond_16

    const/16 v10, 0xe

    .line 1078
    :goto_d
    goto :goto_6

    .line 1075
    :cond_16
    const/16 v10, 0xf

    goto :goto_d

    .line 1080
    :pswitch_6
    if-eqz p3, :cond_17

    const/16 v10, 0x10

    .line 1083
    :goto_e
    goto :goto_6

    .line 1080
    :cond_17
    const/16 v10, 0x11

    goto :goto_e

    .line 1085
    :pswitch_7
    if-eqz p3, :cond_18

    const/16 v10, 0x12

    .line 1088
    :goto_f
    goto :goto_6

    .line 1085
    :cond_18
    const/16 v10, 0x13

    goto :goto_f

    .line 1090
    :pswitch_8
    if-eqz p3, :cond_19

    const/16 v10, 0x14

    .line 1093
    :goto_10
    goto :goto_6

    .line 1090
    :cond_19
    const/16 v10, 0x15

    goto :goto_10

    .line 1095
    :pswitch_9
    if-eqz p3, :cond_1a

    const/16 v10, 0x16

    .line 1098
    :goto_11
    goto :goto_6

    .line 1095
    :cond_1a
    const/16 v10, 0x17

    goto :goto_11

    .line 1100
    :pswitch_a
    if-eqz p3, :cond_1b

    const/16 v10, 0x19

    :goto_12
    goto :goto_6

    :cond_1b
    const/16 v10, 0x18

    goto :goto_12

    .line 1104
    :cond_1c
    const/4 v9, 0x0

    goto :goto_7

    .line 1048
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 407
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 409
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 410
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 411
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 414
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 417
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 422
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 424
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 425
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 427
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 429
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1204
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1205
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1126
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1128
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1129
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1131
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    if-eqz p7, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1188
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1189
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1190
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1191
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1192
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1193
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1195
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1199
    :goto_1
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    .line 1197
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1156
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1157
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1158
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1159
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1163
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1141
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1142
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1143
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1144
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1145
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1146
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1148
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1150
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1171
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1172
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1173
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1174
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1176
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1180
    :goto_1
    return-void

    .line 1168
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1178
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 4

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1120
    :cond_0
    return-void
.end method

.method prepare()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 309
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_0
    return v0
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 622
    packed-switch p4, :pswitch_data_0

    .line 628
    const/16 v4, 0x150

    .line 631
    .local v4, "duration":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 625
    .end local v4    # "duration":I
    :pswitch_0
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 626
    .restart local v4    # "duration":I
    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 605
    if-lez p4, :cond_0

    .line 606
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 608
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 609
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 610
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 611
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 256
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1365
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1366
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 273
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 265
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
