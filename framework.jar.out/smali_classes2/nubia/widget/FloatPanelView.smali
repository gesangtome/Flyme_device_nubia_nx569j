.class public Lnubia/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mBottomOffset:I

.field private mOnTop:Z

.field private mPos:I

.field private mRoundCornerWidth:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/FloatPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/FloatPanelView;->mOnTop:Z

    .line 31
    invoke-direct {p0, p1}, Lnubia/widget/FloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x3090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lnubia/widget/FloatPanelView;->mTopOffset:I

    .line 38
    const v1, 0x3090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lnubia/widget/FloatPanelView;->mBottomOffset:I

    .line 40
    const v1, 0x3090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lnubia/widget/FloatPanelView;->mRoundCornerWidth:I

    .line 42
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 47
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 48
    const v11, 0x30d0089

    invoke-virtual {p0, v11}, Lnubia/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 49
    .local v5, "arrowUpView":Landroid/view/View;
    const v11, 0x30d008a

    invoke-virtual {p0, v11}, Lnubia/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "arrowDownView":Landroid/view/View;
    const v11, 0x30d0081

    invoke-virtual {p0, v11}, Lnubia/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    .local v0, "actionPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const-string v11, "NubiaWidget"

    const-string v12, "can\'t find view"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 58
    :cond_1
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 59
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-boolean v11, p0, Lnubia/widget/FloatPanelView;->mOnTop:Z

    if-eqz v11, :cond_4

    move-object v9, v1

    .line 61
    .local v9, "showArrow":Landroid/view/View;
    :goto_1
    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    move-object v10, v9

    .line 62
    check-cast v10, Landroid/widget/ImageView;

    .line 64
    .local v10, "showImageView":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 65
    .local v6, "arrowWidth":I
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 67
    .local v2, "arrowHeight":I
    iget v11, p0, Lnubia/widget/FloatPanelView;->mPos:I

    div-int/lit8 v12, v6, 0x2

    sub-int v3, v11, v12

    .line 68
    .local v3, "arrowPosX":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v11

    iget v12, p0, Lnubia/widget/FloatPanelView;->mBottomOffset:I

    sub-int v4, v11, v12

    .line 69
    .local v4, "arrowPosY":I
    const/4 v8, 0x0

    .line 70
    .local v8, "panelPosY":I
    const v7, 0x302016e

    .line 72
    .local v7, "panelBgResId":I
    iget v11, p0, Lnubia/widget/FloatPanelView;->mRoundCornerWidth:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v3, v11, :cond_5

    .line 73
    iget v11, p0, Lnubia/widget/FloatPanelView;->mRoundCornerWidth:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v12

    add-int v3, v11, v12

    .line 80
    :cond_2
    :goto_2
    iget-boolean v11, p0, Lnubia/widget/FloatPanelView;->mOnTop:Z

    if-nez v11, :cond_3

    .line 81
    iget v11, p0, Lnubia/widget/FloatPanelView;->mTopOffset:I

    sub-int v8, v2, v11

    .line 82
    const/4 v4, 0x0

    .line 83
    const v7, 0x3020166

    .line 86
    :cond_3
    add-int v11, v3, v6

    add-int v12, v4, v2

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 88
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v11

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v12

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v0, v11, v8, v12, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 91
    iget-object v11, p0, Lnubia/widget/FloatPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v2    # "arrowHeight":I
    .end local v3    # "arrowPosX":I
    .end local v4    # "arrowPosY":I
    .end local v6    # "arrowWidth":I
    .end local v7    # "panelBgResId":I
    .end local v8    # "panelPosY":I
    .end local v9    # "showArrow":Landroid/view/View;
    .end local v10    # "showImageView":Landroid/widget/ImageView;
    :cond_4
    move-object v9, v5

    .line 60
    goto :goto_1

    .line 75
    .restart local v2    # "arrowHeight":I
    .restart local v3    # "arrowPosX":I
    .restart local v4    # "arrowPosY":I
    .restart local v6    # "arrowWidth":I
    .restart local v7    # "panelBgResId":I
    .restart local v8    # "panelPosY":I
    .restart local v9    # "showArrow":Landroid/view/View;
    .restart local v10    # "showImageView":Landroid/widget/ImageView;
    :cond_5
    sub-int v11, p4, v6

    iget v12, p0, Lnubia/widget/FloatPanelView;->mRoundCornerWidth:I

    sub-int/2addr v11, v12

    if-le v3, v11, :cond_2

    .line 76
    sub-int v11, p4, v6

    iget v12, p0, Lnubia/widget/FloatPanelView;->mRoundCornerWidth:I

    sub-int v3, v11, v12

    goto :goto_2
.end method

.method public final setArrow(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 96
    iget-boolean v0, p0, Lnubia/widget/FloatPanelView;->mOnTop:Z

    if-ne v0, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-boolean p1, p0, Lnubia/widget/FloatPanelView;->mOnTop:Z

    .line 100
    invoke-virtual {p0}, Lnubia/widget/FloatPanelView;->requestLayout()V

    goto :goto_0
.end method

.method public final setArrowPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 104
    iget v0, p0, Lnubia/widget/FloatPanelView;->mPos:I

    if-ne v0, p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iput p1, p0, Lnubia/widget/FloatPanelView;->mPos:I

    .line 108
    invoke-virtual {p0}, Lnubia/widget/FloatPanelView;->requestLayout()V

    goto :goto_0
.end method
