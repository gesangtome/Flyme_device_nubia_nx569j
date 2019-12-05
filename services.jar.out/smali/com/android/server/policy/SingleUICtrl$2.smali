.class Lcom/android/server/policy/SingleUICtrl$2;
.super Ljava/lang/Object;
.source "SingleUICtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SingleUICtrl;->createSingleDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SingleUICtrl;

.field final synthetic val$suModeLeftOrRight:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/SingleUICtrl;I)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    iput p2, p0, Lcom/android/server/policy/SingleUICtrl$2;->val$suModeLeftOrRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    # getter for: Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/SingleUICtrl;->access$200(Lcom/android/server/policy/SingleUICtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 348
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    # getter for: Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/SingleUICtrl;->access$200(Lcom/android/server/policy/SingleUICtrl;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x30e0007

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x30c004e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    # getter for: Lcom/android/server/policy/SingleUICtrl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/SingleUICtrl;->access$200(Lcom/android/server/policy/SingleUICtrl;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x30c004c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/android/server/policy/SingleUICtrl$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SingleUICtrl$2$1;-><init>(Lcom/android/server/policy/SingleUICtrl$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 361
    .local v1, "mBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/server/policy/SingleUICtrl;->access$402(Lcom/android/server/policy/SingleUICtrl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 362
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    # getter for: Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/policy/SingleUICtrl;->access$400(Lcom/android/server/policy/SingleUICtrl;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 364
    iget-object v2, p0, Lcom/android/server/policy/SingleUICtrl$2;->this$0:Lcom/android/server/policy/SingleUICtrl;

    # getter for: Lcom/android/server/policy/SingleUICtrl;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/policy/SingleUICtrl;->access$400(Lcom/android/server/policy/SingleUICtrl;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 365
    return-void
.end method
