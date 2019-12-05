.class Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableColorFilterAction"
.end annotation


# static fields
.field public static final TAG:I = 0x11


# instance fields
.field final color:I

.field final index:I

.field final isRelative:Z

.field final mode:Landroid/graphics/PorterDuff$Mode;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "index"    # I
    .param p5, "color"    # I
    .param p6, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1729
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1730
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    .line 1731
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    .line 1732
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    .line 1733
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    .line 1734
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 1735
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1737
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    .line 1739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    .line 1740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    .line 1741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    .line 1742
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 1743
    return-void

    .line 1739
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1747
    .local v0, "mode":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1748
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v1, v1, v0

    .line 1750
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1765
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1766
    .local v2, "target":Landroid/widget/TextView;
    if-nez v2, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1770
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    :goto_1
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    if-ltz v3, :cond_2

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    .line 1771
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "index must be in range [0, 3]."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1767
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1773
    .restart local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    aget-object v0, v1, v3

    .line 1774
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1775
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1776
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1781
    const-string v0, "TextViewDrawableColorFilterAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1755
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    return-void

    .line 1757
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
