.class Lnubia/widget/NubiaSearchView$6;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 769
    iput-object p1, p0, Lnubia/widget/NubiaSearchView$6;->this$0:Lnubia/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 781
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 773
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$6;->this$0:Lnubia/widget/NubiaSearchView;

    # invokes: Lnubia/widget/NubiaSearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lnubia/widget/NubiaSearchView;->access$800(Lnubia/widget/NubiaSearchView;Ljava/lang/CharSequence;)V

    .line 778
    return-void
.end method
