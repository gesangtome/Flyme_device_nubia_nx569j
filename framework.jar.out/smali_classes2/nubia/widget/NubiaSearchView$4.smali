.class Lnubia/widget/NubiaSearchView$4;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaSearchView;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 591
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    # getter for: Lnubia/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$200(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 592
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    # invokes: Lnubia/widget/NubiaSearchView;->onSearchClicked()V
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$300(Lnubia/widget/NubiaSearchView;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    # getter for: Lnubia/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$400(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 594
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    # invokes: Lnubia/widget/NubiaSearchView;->onSubmitQuery()V
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$500(Lnubia/widget/NubiaSearchView;)V

    goto :goto_0

    .line 595
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    # getter for: Lnubia/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$600(Lnubia/widget/NubiaSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 596
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$4;->this$0:Lnubia/widget/NubiaSearchView;

    # invokes: Lnubia/widget/NubiaSearchView;->onCloseClicked()V
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$700(Lnubia/widget/NubiaSearchView;)V

    goto :goto_0
.end method
