.class Lcom/android/server/policy/SingleUICtrl$2$1;
.super Ljava/lang/Object;
.source "SingleUICtrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SingleUICtrl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/SingleUICtrl$2;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleUICtrl$2;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/policy/SingleUICtrl$2$1;->this$1:Lcom/android/server/policy/SingleUICtrl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl$2$1;->this$1:Lcom/android/server/policy/SingleUICtrl$2;

    iget-object v0, v0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    iget-object v1, p0, Lcom/android/server/policy/SingleUICtrl$2$1;->this$1:Lcom/android/server/policy/SingleUICtrl$2;

    iget v1, v1, Lcom/android/server/policy/SingleUICtrl$2;->val$suModeLeftOrRight:I

    # invokes: Lcom/android/server/policy/SingleUICtrl;->startSingleHandGuidePage(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/SingleUICtrl;->access$300(Lcom/android/server/policy/SingleUICtrl;I)V

    .line 357
    iget-object v0, p0, Lcom/android/server/policy/SingleUICtrl$2$1;->this$1:Lcom/android/server/policy/SingleUICtrl$2;

    iget-object v0, v0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    # getter for: Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/policy/SingleUICtrl;->access$400(Lcom/android/server/policy/SingleUICtrl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 358
    return-void
.end method
