.class Lnubia/widget/MagnifierController$2;
.super Ljava/lang/Object;
.source "MagnifierController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/MagnifierController;->postAsync(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/MagnifierController;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lnubia/widget/MagnifierController;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lnubia/widget/MagnifierController$2;->this$0:Lnubia/widget/MagnifierController;

    iput-object p2, p0, Lnubia/widget/MagnifierController$2;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lnubia/widget/MagnifierController$2;->this$0:Lnubia/widget/MagnifierController;

    invoke-virtual {v0}, Lnubia/widget/MagnifierController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lnubia/widget/MagnifierController$2;->this$0:Lnubia/widget/MagnifierController;

    invoke-virtual {v0}, Lnubia/widget/MagnifierController;->hide()V

    .line 252
    iget-object v0, p0, Lnubia/widget/MagnifierController$2;->this$0:Lnubia/widget/MagnifierController;

    iget-object v1, p0, Lnubia/widget/MagnifierController$2;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lnubia/widget/MagnifierController;->onHandleController(Landroid/view/MotionEvent;)V

    .line 254
    :cond_0
    return-void
.end method
