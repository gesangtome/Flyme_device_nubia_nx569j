.class public abstract Lnubia/widget/MagnifierController;
.super Ljava/lang/Object;
.source "MagnifierController.java"


# static fields
.field private static final SCALE:F = 1.4f


# instance fields
.field private mAnchorLocation:[I

.field private mClipRect:Landroid/graphics/Rect;

.field private mContainer:Landroid/widget/PopupWindow;

.field private mContext:Landroid/content/Context;

.field protected mLongClickX:I

.field protected mLongClickY:I

.field private mMagnifierHeight:I

.field private mMagnifierView:Lnubia/widget/MagnifierView;

.field private mMagnifierWidth:I

.field private mMoveEvent:Landroid/view/MotionEvent;

.field protected mParent:Landroid/view/View;

.field private mParentGroup:Landroid/view/ViewGroup;

.field private mScaleMagnifierHeight:I

.field private mScaleMagnifierWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    .line 48
    iput-object p1, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierController;->initPopupWindow(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->getViewGroup()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/MagnifierController;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/MagnifierController;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnubia/widget/MagnifierController;->postAsync(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private addMagnifierListener()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    new-instance v1, Lnubia/widget/MagnifierController$1;

    invoke-direct {v1, p0}, Lnubia/widget/MagnifierController$1;-><init>(Lnubia/widget/MagnifierController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMagnifierListener(Landroid/view/ViewGroup$IMagnifierListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method private adjustClip(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 160
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_2

    .line 161
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_3

    .line 166
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 170
    :cond_1
    :goto_1
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lnubia/widget/MagnifierView;->setShowRect(Landroid/graphics/Rect;)V

    .line 171
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lnubia/widget/MagnifierController;->mScreenWidth:I

    if-le v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierController;->mScreenWidth:I

    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lnubia/widget/MagnifierController;->mScreenHeight:I

    if-le v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierController;->mScreenHeight:I

    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private getContainerLocation()Landroid/graphics/Point;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 101
    iget v2, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    .line 102
    .local v2, "windowW":I
    iget v1, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    .line 104
    .local v1, "windowH":I
    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    sub-int/2addr v4, v1

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 105
    .local v0, "p":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_0

    .line 106
    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 107
    :cond_0
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, p0, Lnubia/widget/MagnifierController;->mScreenWidth:I

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_1

    .line 108
    iget v3, p0, Lnubia/widget/MagnifierController;->mScreenWidth:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 109
    :cond_1
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-gez v3, :cond_2

    .line 110
    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 111
    :cond_2
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lnubia/widget/MagnifierController;->mScreenHeight:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_3

    .line 112
    iget v3, p0, Lnubia/widget/MagnifierController;->mScreenHeight:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 113
    :cond_3
    return-object v0
.end method

.method private getLongClickXY(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnubia/widget/MagnifierController;->mLongClickX:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnubia/widget/MagnifierController;->mLongClickX:I

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    goto :goto_0
.end method

.method private getViewGroup()V
    .locals 3

    .prologue
    .line 259
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 260
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    .line 261
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 262
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 263
    check-cast v0, Landroid/view/View;

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 266
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 267
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    .line 270
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method private hideContainer()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    :cond_0
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x3fb33333    # 1.4f

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 55
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    .line 57
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 58
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 60
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 62
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    const v3, 0x30e0059

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 63
    new-instance v2, Lnubia/widget/MagnifierView;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-direct {v2, v3}, Lnubia/widget/MagnifierView;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    .line 64
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "magnifierGroup":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, "magnifierGroupParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v2}, Lnubia/widget/MagnifierView;->viewWidth()I

    move-result v2

    iput v2, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    .line 71
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v2}, Lnubia/widget/MagnifierView;->viewHeight()I

    move-result v2

    iput v2, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    .line 72
    iget v2, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierWidth:I

    .line 73
    iget v2, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierHeight:I

    .line 74
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierWidth:I

    iget v4, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierHeight:I

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    .line 75
    return-void
.end method

.method public static isMagnifierEnabled(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "anchor"    # Landroid/widget/TextView;

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method private moveContainer(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, -0x1

    .line 117
    invoke-direct {p0, p1, p2}, Lnubia/widget/MagnifierController;->adjustClip(II)V

    .line 118
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->getContainerLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 119
    .local v0, "p":Landroid/graphics/Point;
    iget-object v1, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lnubia/widget/MagnifierView;->setPosition(II)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lnubia/widget/MagnifierView;->setPosition(II)V

    .line 123
    iget-object v1, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private postAsync(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lnubia/widget/MagnifierController$2;

    invoke-direct {v1, p0, p1}, Lnubia/widget/MagnifierController$2;-><init>(Lnubia/widget/MagnifierController;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method private removeMagnifierListener()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParentGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMagnifierListener(Landroid/view/ViewGroup$IMagnifierListener;)V

    .line 276
    :cond_0
    return-void
.end method

.method private setVisibleScreenSize(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 214
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lnubia/widget/MagnifierController;->mScreenWidth:I

    .line 215
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lnubia/widget/MagnifierController;->mScreenHeight:I

    .line 216
    const-string v5, "input_method"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 218
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 219
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 220
    .local v1, "location":[I
    iget-object v3, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    .line 221
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 222
    .local v4, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 223
    check-cast v3, Landroid/view/View;

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 227
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v1, v6

    sub-int/2addr v5, v6

    iput v5, p0, Lnubia/widget/MagnifierController;->mScreenHeight:I

    .line 230
    .end local v1    # "location":[I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method private showMagnifier()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->onPreShow()V

    .line 97
    iget v0, p0, Lnubia/widget/MagnifierController;->mLongClickX:I

    iget v1, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    invoke-direct {p0, v0, v1}, Lnubia/widget/MagnifierController;->moveContainer(II)V

    .line 98
    return-void
.end method

.method private updatePosition()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lnubia/widget/MagnifierController;->onUpdatePosition(Landroid/view/MotionEvent;)Z

    .line 175
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->showMagnifier()V

    .line 176
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iput-boolean v1, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    .line 148
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mMoveEvent:Landroid/view/MotionEvent;

    .line 152
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->hideContainer()V

    .line 153
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->removeMagnifierListener()V

    .line 154
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->onPostHide()V

    .line 155
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    return v0
.end method

.method public abstract onHandleController(Landroid/view/MotionEvent;)V
.end method

.method public onParentChanged()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->showMagnifier()V

    .line 135
    :cond_0
    return-void
.end method

.method public abstract onPostHide()V
.end method

.method public abstract onPreShow()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lnubia/widget/MagnifierController;->getLongClickXY(Landroid/view/MotionEvent;)V

    .line 180
    iput-object p1, p0, Lnubia/widget/MagnifierController;->mMoveEvent:Landroid/view/MotionEvent;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "result":Z
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->hide()V

    .line 197
    :goto_0
    invoke-virtual {p0, p1}, Lnubia/widget/MagnifierController;->onHandleController(Landroid/view/MotionEvent;)V

    .line 199
    :cond_0
    return v0

    .line 186
    :pswitch_0
    iget-object v1, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->showMagnifier()V

    .line 191
    :goto_1
    const/4 v0, 0x1

    .line 192
    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->updatePosition()V

    goto :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onUpdatePosition(Landroid/view/MotionEvent;)Z
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    .line 139
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 141
    :cond_0
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierController;->setVisibleScreenSize(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 143
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->addMagnifierListener()V

    .line 144
    return-void
.end method
