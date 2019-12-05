.class Lnubia/widget/NubiaMorePopup$2;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$2;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$2;->this$0:Lnubia/widget/NubiaMorePopup;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup$2;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lnubia/widget/NubiaMorePopup;->access$100(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    .line 130
    return-void
.end method
