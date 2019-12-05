.class Lnubia/widget/NubiaCharacterListView$1;
.super Ljava/lang/Object;
.source "NubiaCharacterListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaCharacterListView;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaCharacterListView;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView$1;->this$0:Lnubia/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$1;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lnubia/widget/NubiaCharacterListView;->access$000(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$1;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lnubia/widget/NubiaCharacterListView;->access$000(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 439
    :cond_0
    return-void
.end method
