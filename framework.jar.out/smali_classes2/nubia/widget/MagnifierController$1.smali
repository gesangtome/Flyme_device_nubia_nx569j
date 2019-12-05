.class Lnubia/widget/MagnifierController$1;
.super Ljava/lang/Object;
.source "MagnifierController.java"

# interfaces
.implements Landroid/view/ViewGroup$IMagnifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/MagnifierController;->addMagnifierListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/MagnifierController;


# direct methods
.method constructor <init>(Lnubia/widget/MagnifierController;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lnubia/widget/MagnifierController$1;->this$0:Lnubia/widget/MagnifierController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Lnubia/widget/MagnifierController$1;->this$0:Lnubia/widget/MagnifierController;

    # invokes: Lnubia/widget/MagnifierController;->postAsync(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lnubia/widget/MagnifierController;->access$000(Lnubia/widget/MagnifierController;Landroid/view/MotionEvent;)V

    .line 241
    :cond_1
    return-void
.end method
