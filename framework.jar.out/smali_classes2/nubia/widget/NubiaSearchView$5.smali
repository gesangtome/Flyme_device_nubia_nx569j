.class Lnubia/widget/NubiaSearchView$5;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 601
    iput-object p1, p0, Lnubia/widget/NubiaSearchView$5;->this$0:Lnubia/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 607
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$5;->this$0:Lnubia/widget/NubiaSearchView;

    # invokes: Lnubia/widget/NubiaSearchView;->onSubmitQuery()V
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$500(Lnubia/widget/NubiaSearchView;)V

    .line 608
    const/4 v0, 0x1

    return v0
.end method
