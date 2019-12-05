.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
.super Ljava/lang/Object;
.source "AnimParam.java"


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x780

.field public static final DEFAULT_WIDTH:I = 0x438

.field public static final DIRECT_INVALIDATE:I = -0x1

.field public static final DIRECT_LEFT_B2T:I = 0x1

.field public static final DIRECT_LEFT_T2B:I = 0x0

.field public static final DIRECT_RIGHT_B2T:I = 0x3

.field public static final DIRECT_RIGHT_T2B:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field public static final TIME_MAX:I = 0xdac

.field public static final TIME_PAGE_ALPHA_MAX:I = 0xc8

.field public static final TIME_PAGE_ALPHA_MIN:I = 0x14

.field public static final TIME_PAGE_PAGE_FLIPPING:I = 0x1f4

.field public static final ZONE_LEFT_BOTTOM:I = 0x5

.field public static final ZONE_LEFT_TOP:I = 0x4

.field public static final ZONE_RIGHT_BOTTOM:I = 0x7

.field public static final ZONE_RIGHT_TOP:I = 0x6


# instance fields
.field private final ANGLE_APP_FLIP1:F

.field private final ANGLE_APP_FLIP1_ROTATION:F

.field private final ANGLE_APP_FLIP2:F

.field private final ANGLE_APP_FLIP2_ROTATION:F

.field private mAnimFactorEnd:F

.field private mAnimFactorStart:F

.field private final mBasePoint:Landroid/graphics/PointF;

.field private mCurrentPoint:Landroid/graphics/PointF;

.field private mDirect:I

.field private mDownY:F

.field private mFactor:F

.field private mHandler:Landroid/os/Handler;

.field private mHashcodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightRemain:F

.field private mIsFirstUpdate:Z

.field private mIsFitWindowAdded:Z

.field private mLastY:F

.field private mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipAngle:F

.field private mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

.field private mPageFlippingView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x40490fdb    # (float)Math.PI

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide v0, 0x405a400000000000L    # 105.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    .line 36
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    sub-float v0, v2, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    .line 38
    const-wide v0, 0x4052c00000000000L    # 75.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    .line 39
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    sub-float v0, v2, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    .line 66
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 67
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    return-object v0
.end method

.method public static createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 8
    .param p0, "basePoint"    # Landroid/graphics/PointF;
    .param p1, "slope"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 272
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 273
    .local v3, "point":Landroid/graphics/PointF;
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 274
    .local v0, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    .line 275
    const/high16 v4, -0x40800000    # -1.0f

    div-float p1, v4, p1

    .line 276
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1, p2, p3, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .line 277
    .local v1, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 278
    .local v2, "lineFlipEndEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    .line 279
    const/high16 v4, 0x43160000    # 150.0f

    invoke-virtual {v1, v2, v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 280
    invoke-virtual {v2, v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 281
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 282
    return-object v0
.end method

.method static getFactorByAnimationTime(I)F
    .locals 2
    .param p0, "time"    # I

    .prologue
    .line 205
    int-to-float v0, p0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getHeightRemain(F)F
    .locals 7
    .param p1, "currY"    # F

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 726
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v2

    .line 727
    .local v2, "rotation":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v3

    .line 728
    .local v3, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v0

    .line 729
    .local v0, "height":I
    const/4 v1, 0x0

    .line 731
    .local v1, "heightRemain":F
    packed-switch v2, :pswitch_data_0

    .line 773
    :goto_0
    return v1

    .line 733
    :pswitch_0
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_0

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_1

    .line 735
    :cond_0
    move v1, p1

    goto :goto_0

    .line 737
    :cond_1
    int-to-float v4, v0

    sub-float v1, v4, p1

    .line 740
    goto :goto_0

    .line 743
    :pswitch_1
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_2

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_3

    .line 745
    :cond_2
    move v1, p1

    goto :goto_0

    .line 747
    :cond_3
    int-to-float v4, v3

    sub-float v1, v4, p1

    .line 750
    goto :goto_0

    .line 753
    :pswitch_2
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_5

    .line 755
    :cond_4
    int-to-float v4, v0

    sub-float v1, v4, p1

    goto :goto_0

    .line 757
    :cond_5
    move v1, p1

    .line 760
    goto :goto_0

    .line 763
    :pswitch_3
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v4, :cond_6

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v6, v4, :cond_7

    .line 765
    :cond_6
    int-to-float v4, v3

    sub-float v1, v4, p1

    goto :goto_0

    .line 767
    :cond_7
    move v1, p1

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getLineFlipAngle(IIFF)F
    .locals 4
    .param p0, "rotation"    # I
    .param p1, "direct"    # I
    .param p2, "y"    # F
    .param p3, "height"    # F

    .prologue
    .line 549
    invoke-static {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleStart(II)F

    move-result v2

    .line 550
    .local v2, "angleStart":F
    invoke-static {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleEnd(II)F

    move-result v1

    .line 552
    .local v1, "angleEnd":F
    const/4 v3, 0x0

    invoke-static {p2, v3, p3, v2, v1}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    .line 553
    .local v0, "angle":F
    return v0
.end method

.method private static getLineFlipAngleEnd(II)F
    .locals 4
    .param p0, "rotation"    # I
    .param p1, "direct"    # I

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "angle":F
    packed-switch p0, :pswitch_data_0

    .line 544
    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1

    .line 440
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 443
    :pswitch_1
    const/high16 v0, 0x41700000    # 15.0f

    .line 444
    goto :goto_0

    .line 448
    :pswitch_2
    const/high16 v0, 0x43160000    # 150.0f

    .line 449
    goto :goto_0

    .line 453
    :pswitch_3
    const/high16 v0, 0x43250000    # 165.0f

    .line 454
    goto :goto_0

    .line 458
    :pswitch_4
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 466
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 469
    :pswitch_6
    const/high16 v0, 0x42d20000    # 105.0f

    .line 470
    goto :goto_0

    .line 474
    :pswitch_7
    const/high16 v0, 0x42700000    # 60.0f

    .line 475
    goto :goto_0

    .line 479
    :pswitch_8
    const/high16 v0, 0x42960000    # 75.0f

    .line 480
    goto :goto_0

    .line 484
    :pswitch_9
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0

    .line 492
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 495
    :pswitch_b
    const/high16 v0, 0x41f00000    # 30.0f

    .line 496
    goto :goto_0

    .line 500
    :pswitch_c
    const/high16 v0, 0x43250000    # 165.0f

    .line 501
    goto :goto_0

    .line 505
    :pswitch_d
    const/high16 v0, 0x43160000    # 150.0f

    .line 506
    goto :goto_0

    .line 510
    :pswitch_e
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 518
    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_0

    .line 521
    :pswitch_10
    const/high16 v0, 0x42f00000    # 120.0f

    .line 522
    goto :goto_0

    .line 526
    :pswitch_11
    const/high16 v0, 0x42960000    # 75.0f

    .line 527
    goto :goto_0

    .line 531
    :pswitch_12
    const/high16 v0, 0x42700000    # 60.0f

    .line 532
    goto :goto_0

    .line 536
    :pswitch_13
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    .line 440
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 466
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 492
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 518
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static getLineFlipAngleStart(II)F
    .locals 4
    .param p0, "rotation"    # I
    .param p1, "direct"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "angle":F
    packed-switch p0, :pswitch_data_0

    .line 432
    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1

    .line 328
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 331
    :pswitch_1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 332
    goto :goto_0

    .line 336
    :pswitch_2
    const/high16 v0, 0x43250000    # 165.0f

    .line 337
    goto :goto_0

    .line 341
    :pswitch_3
    const/high16 v0, 0x43160000    # 150.0f

    .line 342
    goto :goto_0

    .line 346
    :pswitch_4
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 354
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 357
    :pswitch_6
    const/high16 v0, 0x42f00000    # 120.0f

    .line 358
    goto :goto_0

    .line 362
    :pswitch_7
    const/high16 v0, 0x42960000    # 75.0f

    .line 363
    goto :goto_0

    .line 367
    :pswitch_8
    const/high16 v0, 0x42700000    # 60.0f

    .line 368
    goto :goto_0

    .line 372
    :pswitch_9
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_0

    .line 380
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 383
    :pswitch_b
    const/high16 v0, 0x41700000    # 15.0f

    .line 384
    goto :goto_0

    .line 388
    :pswitch_c
    const/high16 v0, 0x43160000    # 150.0f

    .line 389
    goto :goto_0

    .line 393
    :pswitch_d
    const/high16 v0, 0x43250000    # 165.0f

    .line 394
    goto :goto_0

    .line 398
    :pswitch_e
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 406
    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_0

    .line 409
    :pswitch_10
    const/high16 v0, 0x42d20000    # 105.0f

    .line 410
    goto :goto_0

    .line 414
    :pswitch_11
    const/high16 v0, 0x42700000    # 60.0f

    .line 415
    goto :goto_0

    .line 419
    :pswitch_12
    const/high16 v0, 0x42960000    # 75.0f

    .line 420
    goto :goto_0

    .line 424
    :pswitch_13
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 354
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 380
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 406
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private getLineFlipApp(FI)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 14
    .param p1, "factor"    # F
    .param p2, "direct"    # I

    .prologue
    .line 286
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 287
    .local v3, "basePoint":Landroid/graphics/PointF;
    const/high16 v0, 0x41f00000    # 30.0f

    .line 290
    .local v0, "ANGLE_CHANGE_TOTAL":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v10

    int-to-float v7, v10

    .line 291
    .local v7, "width":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v10

    int-to-float v4, v10

    .line 292
    .local v4, "height":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v5

    .line 294
    .local v5, "rotation":I
    packed-switch v5, :pswitch_data_0

    .line 308
    :goto_0
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    .line 309
    neg-float v1, v0

    .line 314
    .local v1, "angle":F
    :goto_1
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    mul-float v12, p1, v1

    float-to-double v12, v12

    add-double/2addr v10, v12

    double-to-float v2, v10

    .line 316
    .local v2, "angleApp":F
    float-to-double v10, v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v6, v10

    .line 318
    .local v6, "slopeApp":F
    iget v10, v3, Landroid/graphics/PointF;->x:F

    sub-float v8, v7, v10

    .line 319
    .local v8, "x":F
    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float v9, v4, v10

    .line 320
    .local v9, "y":F
    invoke-static {v3, v6, v8, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v10

    return-object v10

    .line 297
    .end local v1    # "angle":F
    .end local v2    # "angleApp":F
    .end local v6    # "slopeApp":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_0
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v7, v10

    iput v10, v3, Landroid/graphics/PointF;->x:F

    .line 298
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iput v10, v3, Landroid/graphics/PointF;->x:F

    .line 304
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v10

    iput v10, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 311
    :cond_0
    move v1, v0

    .restart local v1    # "angle":F
    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getPageAnimationTime(FF)I
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F

    .prologue
    .line 201
    const/high16 v0, 0x43fa0000    # 500.0f

    sub-float v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private intAnimParam(IF)V
    .locals 11
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .prologue
    const/4 v10, 0x0

    .line 557
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v4

    .line 558
    .local v4, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v0

    .line 559
    .local v0, "height":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v1

    .line 561
    .local v1, "rotation":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 563
    .local v3, "slopeApp":F
    packed-switch v1, :pswitch_data_0

    .line 705
    :goto_0
    int-to-float v7, v4

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v5, v7, v8

    .line 706
    .local v5, "x":F
    int-to-float v7, v0

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v6, v7, v8

    .line 708
    .local v6, "y":F
    packed-switch v1, :pswitch_data_1

    .line 720
    :goto_1
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 721
    .local v2, "slope":F
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v2, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 722
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v3, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 723
    return-void

    .line 565
    .end local v2    # "slope":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    .line 595
    :goto_2
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 568
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 569
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 570
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 574
    :pswitch_2
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 575
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 576
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 577
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 581
    :pswitch_3
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 582
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 583
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 584
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 588
    :pswitch_4
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 589
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 590
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 591
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 600
    :pswitch_5
    packed-switch p1, :pswitch_data_3

    .line 630
    :goto_3
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    .line 602
    :pswitch_6
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 603
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 604
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 605
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 606
    goto :goto_3

    .line 609
    :pswitch_7
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 610
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 611
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 612
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 613
    goto :goto_3

    .line 616
    :pswitch_8
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 617
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 618
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 619
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 620
    goto :goto_3

    .line 623
    :pswitch_9
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 624
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 625
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 626
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_3

    .line 635
    :pswitch_a
    packed-switch p1, :pswitch_data_4

    .line 665
    :goto_4
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 637
    :pswitch_b
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 638
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 639
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 640
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 641
    goto :goto_4

    .line 644
    :pswitch_c
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 645
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 646
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 647
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 648
    goto :goto_4

    .line 651
    :pswitch_d
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 652
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 653
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 654
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 655
    goto :goto_4

    .line 658
    :pswitch_e
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 659
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 660
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 661
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_4

    .line 670
    :pswitch_f
    packed-switch p1, :pswitch_data_5

    .line 700
    :goto_5
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    .line 672
    :pswitch_10
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 673
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 674
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 675
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 676
    goto :goto_5

    .line 679
    :pswitch_11
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 680
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 681
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->y:F

    .line 682
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 683
    goto :goto_5

    .line 686
    :pswitch_12
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 687
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 688
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 689
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 690
    goto :goto_5

    .line 693
    :pswitch_13
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v10, v7, Landroid/graphics/PointF;->x:F

    .line 694
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 695
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v8, v0

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 696
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v3, v8

    goto :goto_5

    .line 711
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_14
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    int-to-float v8, v0

    invoke-static {v1, p1, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v7

    iput v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto/16 :goto_1

    .line 716
    :pswitch_15
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    int-to-float v8, v4

    invoke-static {v1, p1, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v7

    iput v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto/16 :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch

    .line 708
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 565
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 600
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 635
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 670
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static isDirectLeft(I)Z
    .locals 1
    .param p0, "direct"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    .line 145
    .local v0, "isLeft":Z
    packed-switch p0, :pswitch_data_0

    .line 157
    :goto_0
    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    .line 149
    goto :goto_0

    .line 153
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method checkGuidePageAnimPara(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 241
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGuidePageAnimPara error hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkGuidePageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 247
    .local v0, "pageNum":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 248
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGuidePageAnimPara error pageNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkGuidePageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method checkLoopPageAnimPara()Z
    .locals 4

    .prologue
    .line 256
    const/4 v1, -0x1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLoopPageAnimPara error direct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkLoopPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 263
    .local v0, "pageNum":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    .line 264
    :cond_2
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLoopPageAnimPara error pageNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkLoopPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method checkPageAnimPara(Z)Z
    .locals 5
    .param p1, "needThrow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v2, -0x1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPageAnimPara error direct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; hashcode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz p1, :cond_3

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 226
    .local v0, "pageNum":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 227
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPageAnimPara error pageNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz p1, :cond_3

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_2
    const/4 v1, 0x1

    .end local v0    # "pageNum":I
    :cond_3
    return v1
.end method

.method getAnimFactorEnd()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorEnd:F

    return v0
.end method

.method getAnimFactorStart()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorStart:F

    return v0
.end method

.method getAppPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 8
    .param p1, "factor"    # F
    .param p2, "indexFg"    # I
    .param p3, "indexBg"    # I
    .param p4, "alphaFg"    # F
    .param p5, "alphaBg"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 193
    .local v7, "hashcode":I
    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v3

    .line 194
    .local v3, "textureIdFg":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 195
    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v4

    .line 196
    .local v4, "textureIdBg":I
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-direct {p0, p1, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipApp(FI)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v1

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    return-object v0
.end method

.method getDirect()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    return v0
.end method

.method public getFactor()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    return v0
.end method

.method public getFactorByY(F)F
    .locals 9
    .param p1, "y"    # F

    .prologue
    .line 923
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v4

    .line 924
    .local v4, "slope":F
    const/high16 v5, -0x40800000    # -1.0f

    div-float v4, v5, v4

    .line 926
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 938
    :goto_0
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v6, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .line 939
    .local v2, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 940
    .local v3, "point":Landroid/graphics/PointF;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v2, v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 941
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v5, v6, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFFF)V

    .line 942
    .local v1, "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    add-float/2addr v5, v6

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v6

    div-float v0, v5, v6

    .line 944
    .local v0, "factor":F
    return v0

    .line 929
    .end local v0    # "factor":F
    .end local v1    # "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v2    # "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v3    # "point":Landroid/graphics/PointF;
    :pswitch_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput p1, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 934
    :pswitch_1
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput p1, v5, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getFitWindowAdded()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    return v0
.end method

.method getHashcodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceHeight()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x780

    goto :goto_0
.end method

.method getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 8
    .param p1, "factor"    # F
    .param p2, "indexFg"    # I
    .param p3, "indexBg"    # I
    .param p4, "alphaFg"    # F
    .param p5, "alphaBg"    # F

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 183
    .local v7, "hashcode":I
    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v3

    .line 184
    .local v3, "textureIdFg":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 185
    invoke-virtual {p0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v4

    .line 186
    .local v4, "textureIdBg":I
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    return-object v0
.end method

.method getRotation()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceRotation()I

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextureId(I)I
    .locals 1
    .param p1, "hashcode"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getTextureId(I)I

    move-result v0

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceWidth()I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x438

    goto :goto_0
.end method

.method isAppWindowCreated()Z
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->isAppWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLauncherWindowCreated()Z
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->isLauncherWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAnimationEnd()V
    .locals 2

    .prologue
    .line 858
    const-string v0, "PageFlippingController"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method onDrawFirstFrame()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->onDrawFirstFrame()V

    .line 874
    :cond_0
    return-void
.end method

.method onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
    .locals 9
    .param p1, "drawContent"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    .prologue
    const/4 v8, 0x2

    .line 886
    const/4 v4, 0x0

    .line 888
    .local v4, "z":F
    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mPageList:Ljava/util/List;

    .line 890
    .local v3, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 891
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .line 892
    .local v2, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v1

    .line 893
    .local v1, "offset":[F
    aput v4, v1, v8

    .line 894
    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    aget v7, v1, v8

    invoke-virtual {v2, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setOffset(FFF)V

    .line 895
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v1    # "offset":[F
    .end local v2    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;

    invoke-direct {v7, p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    invoke-virtual {v6, v7}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 904
    return-void
.end method

.method postRunable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 877
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 878
    return-void
.end method

.method postRunable(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "time"    # I

    .prologue
    .line 881
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 882
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    .line 80
    return-void
.end method

.method setAnimFactorEnd(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 107
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorEnd:F

    .line 108
    return-void
.end method

.method setAnimFactorStart(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 99
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorStart:F

    .line 100
    return-void
.end method

.method setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V
    .locals 0
    .param p1, "animSync"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .prologue
    .line 845
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .line 846
    return-void
.end method

.method setDirect(IF)V
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .prologue
    .line 87
    const/4 v0, -0x1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v0, v1, :cond_0

    .line 88
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    .line 89
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    .line 90
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->intAnimParam(IF)V

    .line 92
    :cond_0
    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 115
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    .line 116
    return-void
.end method

.method setFitWindowAdded(Z)V
    .locals 0
    .param p1, "fitWindowAdded"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    .line 166
    return-void
.end method

.method setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "pageFlippingView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 854
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    .line 855
    return-void
.end method

.method setHashcodeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    .line 174
    return-void
.end method

.method setRender(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .prologue
    .line 841
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .line 842
    return-void
.end method

.method setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 1
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    .line 849
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 850
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    .line 851
    return-void
.end method

.method setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 0
    .param p1, "management"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .prologue
    .line 209
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 210
    return-void
.end method

.method public updateLineFlip(F)V
    .locals 12
    .param p1, "currY"    # F

    .prologue
    .line 777
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v6

    .line 779
    .local v6, "rotation":I
    const/4 v5, 0x1

    .line 781
    .local v5, "isIncreased":Z
    iget-boolean v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    if-eqz v10, :cond_0

    .line 782
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    .line 783
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    .line 784
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeightRemain(F)F

    move-result v10

    iput v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHeightRemain:F

    .line 787
    :cond_0
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    sub-float v4, p1, v10

    .line 788
    .local v4, "deltaY":F
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    .line 790
    packed-switch v6, :pswitch_data_0

    .line 816
    :goto_0
    const/4 v10, 0x0

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_6

    .line 838
    :cond_1
    :goto_1
    return-void

    .line 793
    :pswitch_0
    const/4 v10, 0x1

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v10, v11, :cond_2

    const/4 v10, 0x3

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v10, v11, :cond_3

    .line 795
    :cond_2
    neg-float v4, v4

    .line 796
    const/4 v5, 0x0

    goto :goto_0

    .line 798
    :cond_3
    const/4 v5, 0x1

    .line 801
    goto :goto_0

    .line 805
    :pswitch_1
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v10, v11, :cond_5

    .line 807
    :cond_4
    neg-float v4, v4

    .line 808
    const/4 v5, 0x0

    goto :goto_0

    .line 810
    :cond_5
    const/4 v5, 0x1

    goto :goto_0

    .line 820
    :cond_6
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleStart(II)F

    move-result v2

    .line 821
    .local v2, "angleStart":F
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleEnd(II)F

    move-result v1

    .line 822
    .local v1, "angleEnd":F
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHeightRemain:F

    div-float v10, v4, v10

    sub-float v11, v2, v1

    mul-float v3, v10, v11

    .line 824
    .local v3, "deltaAngle":F
    if-nez v5, :cond_7

    .line 825
    neg-float v3, v3

    .line 828
    :cond_7
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    add-float v0, v10, v3

    .line 829
    .local v0, "angle":F
    invoke-static {v0, v1, v2, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    .line 831
    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    cmpl-float v10, v0, v10

    if-eqz v10, :cond_1

    .line 832
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float v8, v10, v11

    .line 833
    .local v8, "x":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v9, v10, v11

    .line 834
    .local v9, "y":F
    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 835
    .local v7, "slope":F
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v10, v7, v8, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 836
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto :goto_1

    .line 790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
