.class Lnubia/widget/NubiaDialogActivity$2;
.super Ljava/lang/Object;
.source "NubiaDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaDialogActivity;->initDialogView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaDialogActivity;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaDialogActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lnubia/widget/NubiaDialogActivity$2;->this$0:Lnubia/widget/NubiaDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity$2;->this$0:Lnubia/widget/NubiaDialogActivity;

    # getter for: Lnubia/widget/NubiaDialogActivity;->mListener:Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaDialogActivity;->access$000(Lnubia/widget/NubiaDialogActivity;)Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lnubia/widget/NubiaDialogActivity$2;->this$0:Lnubia/widget/NubiaDialogActivity;

    # getter for: Lnubia/widget/NubiaDialogActivity;->mListener:Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaDialogActivity;->access$000(Lnubia/widget/NubiaDialogActivity;)Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lnubia/widget/NubiaDialogActivity$OnButtonClickListener;->OnPositiveButtonClick()V

    .line 146
    :cond_0
    return-void
.end method
