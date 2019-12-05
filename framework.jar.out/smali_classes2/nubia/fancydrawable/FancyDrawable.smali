.class public abstract Lnubia/fancydrawable/FancyDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lnubia/fancydrawable/FancyDrawableListener;


# instance fields
.field protected mAvailableHeight:I

.field protected mAvailableWidth:I

.field protected mHandler:Landroid/os/Handler;

.field protected mID:Ljava/lang/String;

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 14
    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 49
    sub-int v0, p3, p1

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 50
    sub-int v0, p4, p2

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 51
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 33
    iput-object p1, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-virtual {p0}, Lnubia/fancydrawable/FancyDrawable;->startToRun()V

    .line 35
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 29
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 30
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 62
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    .line 63
    iput p2, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    .line 64
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 25
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 26
    return-void
.end method

.method public startToRun()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "nubia.fancydrawable.FancyDrawable"

    return-object v0
.end method
