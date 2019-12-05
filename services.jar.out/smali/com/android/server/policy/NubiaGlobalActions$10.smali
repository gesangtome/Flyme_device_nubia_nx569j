.class Lcom/android/server/policy/NubiaGlobalActions$10;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions;->createDialog()Lcom/android/server/policy/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$10;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$10;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAdapter:Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$1300(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/policy/NubiaGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/NubiaGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/NubiaGlobalActions$Action;->onLongPress()Z

    move-result v0

    return v0
.end method
