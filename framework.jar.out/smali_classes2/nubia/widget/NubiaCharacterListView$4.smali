.class Lnubia/widget/NubiaCharacterListView$4;
.super Ljava/lang/Object;
.source "NubiaCharacterListView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 502
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView$4;->this$0:Lnubia/widget/NubiaCharacterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$4;->this$0:Lnubia/widget/NubiaCharacterListView;

    # getter for: Lnubia/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnubia/widget/NubiaCharacterListView;->access$200(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 506
    return-void
.end method
