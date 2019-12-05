.class public Lcn/nubia/server/policy/edge/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final ANIM_TIME:I = 0x12c

.field public static final CIRCLE_RADIUS:I = 0x2b

.field private static final PAINT_WIDTH:I = 0x12


# instance fields
.field private mAnim:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintWidth:F

.field private mRadius:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CircleView;->initView()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CircleView;->initView()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CircleView;->initView()V

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/policy/edge/CircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CircleView;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/server/policy/edge/CircleView;->mRadius:F

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/CircleView;I)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CircleView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/CircleView;->dpToPixs(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/CircleView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CircleView;

    .prologue
    .line 17
    iget v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaintWidth:F

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/policy/edge/CircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CircleView;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaintWidth:F

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/CircleView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CircleView;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private dpToPixs(I)F
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 104
    int-to-float v0, p1

    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mRadius:F

    .line 44
    iput v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaintWidth:F

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x774c4c4c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaintWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/server/policy/edge/CircleView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/server/policy/edge/CircleView;->mRadius:F

    iget-object v3, p0, Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 56
    sub-int v0, p4, p2

    iput v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mWidth:I

    .line 57
    sub-int v0, p5, p3

    iput v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mHeight:I

    .line 58
    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 69
    return-void
.end method

.method public startAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CircleView;->stopAnim()V

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f147ae1    # 0.58f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/server/policy/edge/CircleView$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/CircleView$1;-><init>(Lcn/nubia/server/policy/edge/CircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    .line 101
    :cond_0
    return-void
.end method
