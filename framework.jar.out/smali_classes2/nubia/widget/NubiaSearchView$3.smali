.class Lnubia/widget/NubiaSearchView$3;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
    .line 199
    iput-object p1, p0, Lnubia/widget/NubiaSearchView$3;->this$0:Lnubia/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$3;->this$0:Lnubia/widget/NubiaSearchView;

    # getter for: Lnubia/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$100(Lnubia/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$3;->this$0:Lnubia/widget/NubiaSearchView;

    # getter for: Lnubia/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$100(Lnubia/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaSearchView$3;->this$0:Lnubia/widget/NubiaSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 206
    :cond_0
    return-void
.end method
