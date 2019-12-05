.class Lnubia/widget/NubiaDoubleCardView$1;
.super Ljava/lang/Object;
.source "NubiaDoubleCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaDoubleCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaDoubleCardView;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaDoubleCardView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lnubia/widget/NubiaDoubleCardView$1;->this$0:Lnubia/widget/NubiaDoubleCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView$1;->this$0:Lnubia/widget/NubiaDoubleCardView;

    iget-object v0, v0, Lnubia/widget/NubiaDoubleCardView;->mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView$1;->this$0:Lnubia/widget/NubiaDoubleCardView;

    iget-object v0, v0, Lnubia/widget/NubiaDoubleCardView;->mOnCardClickListener:Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;

    iget-object v1, p0, Lnubia/widget/NubiaDoubleCardView$1;->this$0:Lnubia/widget/NubiaDoubleCardView;

    # getter for: Lnubia/widget/NubiaDoubleCardView;->mCheckedItem:I
    invoke-static {v1}, Lnubia/widget/NubiaDoubleCardView;->access$000(Lnubia/widget/NubiaDoubleCardView;)I

    move-result v1

    invoke-interface {v0, v1}, Lnubia/widget/NubiaDoubleCardView$OnCardClickListener;->onCardClick(I)V

    .line 120
    :cond_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView$1;->this$0:Lnubia/widget/NubiaDoubleCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDoubleCardView;->setCardInUse(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lnubia/widget/NubiaDoubleCardView$1;->this$0:Lnubia/widget/NubiaDoubleCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaDoubleCardView;->setCardInUse(I)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x30d004b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
