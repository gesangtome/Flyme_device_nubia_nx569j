.class Lnubia/widget/NubiaCharacterListView$2;
.super Ljava/lang/Object;
.source "NubiaCharacterListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V
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
    .line 471
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView$2;->this$0:Lnubia/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 475
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$2;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mIsInCharcterListView:Z
    invoke-static {v0}, Lnubia/widget/NubiaCharacterListView;->access$100(Lnubia/widget/NubiaCharacterListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$2;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnubia/widget/NubiaCharacterListView;->access$200(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    :cond_0
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
