.class Lnubia/widget/NubiaMorePopup$1;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 119
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$1;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$1;->this$0:Lnubia/widget/NubiaMorePopup;

    # invokes: Lnubia/widget/NubiaMorePopup;->startEntryAnimation()V
    invoke-static {v0}, Lnubia/widget/NubiaMorePopup;->access$000(Lnubia/widget/NubiaMorePopup;)V

    .line 123
    return-void
.end method
