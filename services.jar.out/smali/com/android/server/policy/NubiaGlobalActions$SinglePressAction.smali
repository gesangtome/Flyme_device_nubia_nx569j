.class abstract Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/NubiaGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput p1, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    .line 780
    iput p2, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    .line 781
    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 782
    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 783
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput p1, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    .line 789
    iput-object p3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 790
    iput-object p2, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 791
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput p1, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    .line 796
    iput-object p2, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 798
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 812
    const v3, 0x1090062

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 815
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 816
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 817
    .local v1, "messageView":Landroid/widget/TextView;
    const v3, 0x102032e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 818
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 819
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 825
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 826
    iget-object v3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    :goto_1
    return-object v2

    .line 821
    :cond_1
    iget v3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v3, :cond_0

    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 828
    :cond_2
    iget v3, p0, Lcom/android/server/policy/NubiaGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
