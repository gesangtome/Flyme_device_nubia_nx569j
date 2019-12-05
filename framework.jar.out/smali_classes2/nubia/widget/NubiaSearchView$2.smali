.class Lnubia/widget/NubiaSearchView$2;
.super Ljava/lang/Object;
.source "NubiaSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaSearchView;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaSearchView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lnubia/widget/NubiaSearchView$2;->this$0:Lnubia/widget/NubiaSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnubia/widget/NubiaSearchView$2;->this$0:Lnubia/widget/NubiaSearchView;

    # invokes: Lnubia/widget/NubiaSearchView;->updateFocusedState()V
    invoke-static {v0}, Lnubia/widget/NubiaSearchView;->access$000(Lnubia/widget/NubiaSearchView;)V

    .line 107
    return-void
.end method
