.class Lnubia/widget/NubiaCapsuleButton$1;
.super Ljava/lang/Object;
.source "NubiaCapsuleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaCapsuleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaCapsuleButton;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaCapsuleButton;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # invokes: Lnubia/widget/NubiaCapsuleButton;->clearSelected()V
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$000(Lnubia/widget/NubiaCapsuleButton;)V

    .line 162
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$100(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mLeftButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$200(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$100(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 164
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mLeftButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$200(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$300(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid1ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$400(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$300(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 167
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid1ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$400(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$500(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid2ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$600(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$500(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 170
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mMid2ButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$600(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$700(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mRightButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$800(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$700(Lnubia/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 173
    iget-object v0, p0, Lnubia/widget/NubiaCapsuleButton$1;->this$0:Lnubia/widget/NubiaCapsuleButton;

    # getter for: Lnubia/widget/NubiaCapsuleButton;->mRightButtonListener:Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaCapsuleButton;->access$800(Lnubia/widget/NubiaCapsuleButton;)Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    goto :goto_0
.end method
