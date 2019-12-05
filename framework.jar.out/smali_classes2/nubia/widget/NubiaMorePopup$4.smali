.class Lnubia/widget/NubiaMorePopup$4;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaMorePopup;->createListView()V
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
    .line 205
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$4;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$4;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z
    invoke-static {v0}, Lnubia/widget/NubiaMorePopup;->access$200(Lnubia/widget/NubiaMorePopup;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$4;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;
    invoke-static {v0}, Lnubia/widget/NubiaMorePopup;->access$300(Lnubia/widget/NubiaMorePopup;)Lnubia/widget/NubiaMorePopup$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lnubia/widget/NubiaMorePopup$OnClickListener;->onClick(I)V

    .line 211
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$4;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lnubia/widget/NubiaMorePopup;->access$100(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 213
    :cond_0
    return-void
.end method
