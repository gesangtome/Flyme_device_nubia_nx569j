.class Lnubia/widget/NubiaMorePopup$5;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaMorePopup;->startEntryAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$5;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$5;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;
    invoke-static {v0}, Lnubia/widget/NubiaMorePopup;->access$400(Lnubia/widget/NubiaMorePopup;)Lnubia/widget/MorePopupRelativeLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lnubia/widget/MorePopupRelativeLayout;->setBackgroundColor(I)V

    .line 496
    return-void
.end method
