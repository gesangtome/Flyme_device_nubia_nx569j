.class Lnubia/widget/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Lnubia/widget/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lnubia/widget/FloatingActionButton$1;->this$0:Lnubia/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnubia/widget/FloatingActionButton$1;->this$0:Lnubia/widget/FloatingActionButton;

    invoke-virtual {v0}, Lnubia/widget/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    iget-object v0, p0, Lnubia/widget/FloatingActionButton$1;->this$0:Lnubia/widget/FloatingActionButton;

    # invokes: Lnubia/widget/FloatingActionButton;->setShader()V
    invoke-static {v0}, Lnubia/widget/FloatingActionButton;->access$000(Lnubia/widget/FloatingActionButton;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method
