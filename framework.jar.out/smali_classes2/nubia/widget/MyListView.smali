.class public Lnubia/widget/MyListView;
.super Landroid/widget/ListView;
.source "MyListView.java"


# instance fields
.field private mMaxHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/MyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/MyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lnubia/widget/MyListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30900a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnubia/widget/MyListView;->mMaxHeight:F

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 33
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 34
    .local v1, "heightSize":I
    int-to-float v3, v1

    iget v4, p0, Lnubia/widget/MyListView;->mMaxHeight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v3, v1

    :goto_0
    float-to-int v1, v3

    .line 35
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 37
    .local v2, "maxHeightMeasureSpec":I
    invoke-super {p0, p1, v2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 38
    return-void

    .line 34
    .end local v2    # "maxHeightMeasureSpec":I
    :cond_0
    iget v3, p0, Lnubia/widget/MyListView;->mMaxHeight:F

    goto :goto_0
.end method
