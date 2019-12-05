.class public Lnubia/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/WheelView$TwoDigitFormatter;,
        Lnubia/widget/WheelView$Formatter;,
        Lnubia/widget/WheelView$OnScrollListener;,
        Lnubia/widget/WheelView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final LAYER_FLAGS:I = 0xd

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x4

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x9

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final sTwoDigitFormatter:Lnubia/widget/WheelView$TwoDigitFormatter;


# instance fields
.field private final EDGE_ALPHA:I

.field private final ENHANCED_ALPHA:I

.field private final MIDDLE_ALPHA:I

.field private final mAdjustDrawPos:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mCurrentAlpha:I

.field private mCurrentLocationX:F

.field private mCurrentLocationY:F

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lnubia/widget/WheelView$Formatter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMaxValue:I

.field private mMaximumFlingVelocity:I

.field private mMiddleBottom:I

.field private mMiddleBottomEnd:I

.field private mMiddleTop:I

.field private mMiddleTopEnd:I

.field private mMiddleY:F

.field private mMinValue:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lnubia/widget/WheelView$OnScrollListener;

.field private mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedWheelPaint:Landroid/graphics/Paint;

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapHeightNotWrap:I

.field private mTextBound:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextShowRect:Landroid/graphics/Rect;

.field private mTextSize:I

.field private mTextsLocation:[F

.field private mTextsScaleX:[F

.field private mTextsSize:[F

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 676
    new-instance v0, Lnubia/widget/WheelView$TwoDigitFormatter;

    invoke-direct {v0}, Lnubia/widget/WheelView$TwoDigitFormatter;-><init>()V

    sput-object v0, Lnubia/widget/WheelView;->sTwoDigitFormatter:Lnubia/widget/WheelView$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    .line 37
    const/16 v3, 0xe1

    iput v3, p0, Lnubia/widget/WheelView;->ENHANCED_ALPHA:I

    .line 38
    iput v5, p0, Lnubia/widget/WheelView;->EDGE_ALPHA:I

    .line 39
    const/16 v3, 0x96

    iput v3, p0, Lnubia/widget/WheelView;->MIDDLE_ALPHA:I

    .line 45
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 46
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    .line 47
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lnubia/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    .line 52
    new-array v3, v4, [I

    iput-object v3, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 54
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 59
    const/high16 v3, -0x80000000

    iput v3, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    .line 79
    iput v5, p0, Lnubia/widget/WheelView;->mScrollState:I

    .line 84
    new-array v3, v4, [F

    iput-object v3, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    .line 85
    new-array v3, v4, [F

    iput-object v3, p0, Lnubia/widget/WheelView;->mTextsSize:[F

    .line 86
    new-array v3, v4, [F

    iput-object v3, p0, Lnubia/widget/WheelView;->mTextsLocation:[F

    .line 94
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 95
    new-instance v3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v3, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 97
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lnubia/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v3, p0, Lnubia/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 101
    .local v1, "selectedWheelPaintColor":I
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30a0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 103
    .local v2, "textMaskPaintColor":I
    iget-object v3, p0, Lnubia/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v3, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v3, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v3, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3090023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lnubia/widget/WheelView;->mTextSize:I

    .line 109
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3090024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lnubia/widget/WheelView;->mAdjustDrawPos:I

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 112
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lnubia/widget/WheelView;->mTouchSlop:I

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lnubia/widget/WheelView;->mMinimumFlingVelocity:I

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lnubia/widget/WheelView;->mMaximumFlingVelocity:I

    .line 116
    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 414
    :cond_0
    iput v1, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 415
    if-eqz p1, :cond_1

    .line 416
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 422
    :goto_0
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    .line 423
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 438
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 439
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 438
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 442
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 443
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    .line 445
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 446
    invoke-direct {p0, v1}, Lnubia/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 447
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 242
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 247
    :cond_1
    const-string v2, ""

    .line 256
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v3, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 250
    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int v1, p1, v3

    .line 251
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 252
    goto :goto_1

    .line 253
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lnubia/widget/WheelView;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 320
    iget v0, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 321
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 322
    iput v1, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 323
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 324
    if-lez v4, :cond_2

    iget v0, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 327
    :cond_0
    iget-object v0, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 328
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    .line 329
    const/4 v1, 0x1

    .line 331
    :cond_1
    return v1

    .line 324
    :cond_2
    iget v0, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 482
    iput v1, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 483
    if-lez p1, :cond_0

    .line 484
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 489
    :goto_0
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    .line 491
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    invoke-interface {v0, p1}, Lnubia/widget/WheelView$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;
    .locals 1

    .prologue
    .line 682
    sget-object v0, Lnubia/widget/WheelView;->sTwoDigitFormatter:Lnubia/widget/WheelView$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 217
    iget v0, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 218
    iget v0, p0, Lnubia/widget/WheelView;->mMinValue:I

    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 224
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 220
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 221
    iget v0, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 427
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 430
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 431
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    .line 433
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 434
    invoke-direct {p0, v1}, Lnubia/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 435
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setVerticalFadingEdgeEnabled(Z)V

    .line 609
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnubia/widget/WheelView;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setFadingEdgeLength(I)V

    .line 610
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 579
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 580
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 581
    .local v0, "selectorIndices":[I
    array-length v4, v0

    iget v5, p0, Lnubia/widget/WheelView;->mTextSize:I

    mul-int v3, v4, v5

    .line 582
    .local v3, "totalTextHeight":I
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 583
    .local v2, "totalTextGapHeight":F
    array-length v4, v0

    int-to-float v1, v4

    .line 584
    .local v1, "textGapCount":F
    div-float v4, v2, v1

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    .line 586
    iget v4, p0, Lnubia/widget/WheelView;->mTextSize:I

    mul-int/lit8 v3, v4, 0x5

    .line 587
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 588
    const/high16 v4, 0x40a00000    # 5.0f

    div-float v4, v2, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeightNotWrap:I

    .line 590
    iget v4, p0, Lnubia/widget/WheelView;->mTextSize:I

    iget v5, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    .line 591
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    .line 592
    iget v4, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v4, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 593
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    .line 594
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    .line 595
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getDrawTextAttri()V

    .line 596
    iget v4, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    iget v5, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mMiddleY:F

    .line 597
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 260
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 261
    iget-object v3, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 262
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getValue()I

    move-result v0

    .line 263
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 264
    add-int/lit8 v4, v1, -0x4

    add-int v2, v0, v4

    .line 265
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 266
    invoke-direct {p0, v2}, Lnubia/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 268
    :cond_0
    aput v2, v3, v1

    .line 269
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lnubia/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 390
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 391
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 392
    .local v0, "amountToScroll":I
    iget v5, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 394
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 395
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 396
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 397
    if-lez v2, :cond_1

    .line 398
    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 403
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 404
    invoke-virtual {p0, v4, v0}, Lnubia/widget/WheelView;->scrollBy(II)V

    .line 407
    :goto_1
    return v3

    .line 400
    :cond_1
    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 407
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

    iget v1, p0, Lnubia/widget/WheelView;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lnubia/widget/WheelView$OnValueChangeListener;->onValueChange(Lnubia/widget/WheelView;II)V

    .line 453
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 199
    iget v0, p0, Lnubia/widget/WheelView;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iput p1, p0, Lnubia/widget/WheelView;->mScrollState:I

    .line 203
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnScrollListener:Lnubia/widget/WheelView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnScrollListener:Lnubia/widget/WheelView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lnubia/widget/WheelView$OnScrollListener;->onScrollStateChange(Lnubia/widget/WheelView;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 192
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 193
    invoke-direct {p0}, Lnubia/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    .line 196
    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 460
    iget v1, p0, Lnubia/widget/WheelView;->mValue:I

    if-ne v1, p1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 464
    invoke-direct {p0, p1}, Lnubia/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 469
    :goto_1
    iget v0, p0, Lnubia/widget/WheelView;->mValue:I

    .line 470
    .local v0, "previous":I
    iput p1, p0, Lnubia/widget/WheelView;->mValue:I

    .line 471
    if-eqz p2, :cond_1

    .line 472
    invoke-direct {p0, v0, p1}, Lnubia/widget/WheelView;->notifyChange(II)V

    .line 474
    :cond_1
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 475
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 466
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 467
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 125
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v1, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 127
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 132
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 133
    .local v0, "currentScrollerY":I
    iget v2, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 134
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 136
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lnubia/widget/WheelView;->scrollBy(II)V

    .line 137
    iput v0, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 138
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-direct {p0, v1}, Lnubia/widget/WheelView;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDrawTextAttri()V
    .locals 18

    .prologue
    .line 494
    const/4 v5, 0x0

    .line 495
    .local v5, "mRadianY":F
    const v6, 0x3ec90fdb

    .line 496
    .local v6, "mSelectRadian":F
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v6

    float-to-double v12, v12

    sub-double/2addr v10, v12

    double-to-float v7, v10

    .line 498
    .local v7, "mStartRadian":F
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x8

    int-to-float v4, v10

    .line 500
    .local v4, "mMappingViewHeight":F
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v3, v10

    .line 502
    .local v3, "mHalfViewHeight":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 503
    .local v8, "selectorIndices":[I
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    int-to-float v9, v10

    .line 504
    .local v9, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 505
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    sub-float v11, v9, v11

    mul-float/2addr v10, v11

    div-float/2addr v10, v4

    add-float v5, v7, v10

    .line 508
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mTextSize:I

    int-to-double v12, v11

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 509
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    aget v10, v10, v2

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    const/4 v11, 0x0

    aput v11, v10, v2

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsLocation:[F

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    float-to-double v12, v11

    float-to-double v14, v5

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    aget v11, v11, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    float-to-double v14, v11

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mAdjustDrawPos:I

    int-to-double v14, v11

    sub-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 515
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    const-wide v12, 0x3fe999999999999aL    # 0.8

    const-wide v14, 0x3fc999999999999aL    # 0.2

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lnubia/widget/WheelView;->mTextSize:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    aget v13, v13, v2

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    aput v11, v10, v2

    .line 517
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 519
    :cond_1
    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lnubia/widget/WheelView;->mMaxValue:I

    return v0
.end method

.method public getMiddleBottom()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    return v0
.end method

.method public getMiddleTop()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lnubia/widget/WheelView;->mMinValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lnubia/widget/WheelView;->mValue:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 523
    iget-object v3, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 524
    .local v3, "selectorIndices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 525
    aget v2, v3, v0

    .line 526
    .local v2, "selectorIndex":I
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lnubia/widget/WheelView;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 527
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextsLocation:[F

    aget v4, v4, v0

    iput v4, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    .line 528
    const/high16 v4, 0x43960000    # 300.0f

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    iget v6, p0, Lnubia/widget/WheelView;->mMiddleY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    rsub-int v4, v4, 0x96

    iput v4, p0, Lnubia/widget/WheelView;->mCurrentAlpha:I

    .line 530
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 531
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 535
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v4, v4, v0

    div-float v4, v9, v4

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 536
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mCurrentLocationX:F

    .line 537
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextsLocation:[F

    aget v4, v4, v0

    iget-object v5, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    .line 538
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationX:F

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 539
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 540
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationX:F

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 541
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 543
    iget v4, p0, Lnubia/widget/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 545
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    int-to-float v5, v5

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 547
    const/4 v4, 0x0

    iget v5, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    int-to-float v5, v5

    iget-object v6, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v6, v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    int-to-float v7, v7

    iget-object v8, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v8, v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 549
    iget-object v4, p0, Lnubia/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lnubia/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 550
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 v5, 0xe1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 551
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lnubia/widget/WheelView;->mTextSize:I

    add-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 552
    iget v4, p0, Lnubia/widget/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lnubia/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 557
    .end local v1    # "scrollSelectorValue":Ljava/lang/String;
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 570
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 571
    if-eqz p1, :cond_0

    .line 572
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheel()V

    .line 573
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeFadingEdges()V

    .line 576
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 561
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 563
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/view/View;->onMeasure(II)V

    .line 565
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 336
    iget-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 337
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 339
    :cond_0
    iget-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 386
    :cond_1
    :goto_0
    return v8

    .line 342
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lnubia/widget/WheelView;->mLastDownEventY:F

    iput v5, p0, Lnubia/widget/WheelView;->mLastDownOrMoveEventY:F

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lnubia/widget/WheelView;->mLastDownEventTime:J

    .line 344
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 345
    iget-object v5, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 346
    iget-object v5, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 347
    iget-object v5, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 348
    invoke-direct {p0, v9}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v5, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 350
    iget-object v5, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 351
    iget-object v5, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 356
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 357
    .local v0, "currentMoveY":F
    iget v5, p0, Lnubia/widget/WheelView;->mScrollState:I

    if-eq v5, v8, :cond_4

    .line 358
    iget v5, p0, Lnubia/widget/WheelView;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 359
    .local v1, "deltaDownY":I
    iget v5, p0, Lnubia/widget/WheelView;->mTouchSlop:I

    if-le v1, v5, :cond_3

    .line 360
    invoke-direct {p0, v8}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    .line 367
    .end local v1    # "deltaDownY":I
    :cond_3
    :goto_1
    iput v0, p0, Lnubia/widget/WheelView;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 363
    :cond_4
    iget v5, p0, Lnubia/widget/WheelView;->mLastDownOrMoveEventY:F

    sub-float v5, v0, v5

    float-to-int v2, v5

    .line 364
    .local v2, "deltaMoveY":I
    invoke-virtual {p0, v9, v2}, Lnubia/widget/WheelView;->scrollBy(II)V

    .line 365
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_1

    .line 371
    .end local v0    # "currentMoveY":F
    .end local v2    # "deltaMoveY":I
    :pswitch_2
    iget-object v4, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 372
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Lnubia/widget/WheelView;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 373
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 374
    .local v3, "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnubia/widget/WheelView;->mMinimumFlingVelocity:I

    if-le v5, v6, :cond_5

    .line 375
    invoke-direct {p0, v3}, Lnubia/widget/WheelView;->fling(I)V

    .line 381
    :goto_2
    iget-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 382
    const/4 v5, 0x0

    iput-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 377
    :cond_5
    invoke-direct {p0}, Lnubia/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 378
    invoke-direct {p0, v9}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_2

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 147
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 148
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 150
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 186
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 155
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_0

    .line 159
    :cond_1
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-le v1, v2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 162
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeightNotWrap:I

    iput v1, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    .line 165
    :cond_3
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 166
    :cond_4
    :goto_1
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 168
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 169
    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->decrementSelectorIndices([I)V

    .line 170
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lnubia/widget/WheelView;->setValueInternal(IZ)V

    .line 171
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 173
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_1

    .line 176
    :cond_5
    :goto_2
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_6

    .line 177
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 178
    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->incrementSelectorIndices([I)V

    .line 179
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lnubia/widget/WheelView;->setValueInternal(IZ)V

    .line 180
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 182
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_2

    .line 185
    :cond_6
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getDrawTextAttri()V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 618
    iget-object v0, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    iput-object p1, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    .line 622
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setFormatter(Lnubia/widget/WheelView$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lnubia/widget/WheelView$Formatter;

    .prologue
    .line 228
    iget-object v0, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    if-ne p1, v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    .line 232
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 291
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 294
    :cond_0
    if-gez p1, :cond_1

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_1
    iput p1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    .line 298
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mValue:I

    if-ge v1, v2, :cond_2

    .line 299
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iput v1, p0, Lnubia/widget/WheelView;->mValue:I

    .line 301
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 302
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 303
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 304
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 301
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 274
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 277
    :cond_0
    if-gez p1, :cond_1

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_1
    iput p1, p0, Lnubia/widget/WheelView;->mMinValue:I

    .line 281
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mValue:I

    if-le v1, v2, :cond_2

    .line 282
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    iput v1, p0, Lnubia/widget/WheelView;->mValue:I

    .line 284
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 285
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 286
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 287
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 284
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lnubia/widget/WheelView$OnValueChangeListener;

    .prologue
    .line 614
    iput-object p1, p0, Lnubia/widget/WheelView;->mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

    .line 615
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/WheelView;->setValueInternal(IZ)V

    .line 457
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 209
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 210
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 212
    iput-boolean p1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    .line 214
    :cond_1
    return-void

    .line 209
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
