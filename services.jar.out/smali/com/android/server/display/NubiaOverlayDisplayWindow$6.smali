.class Lcom/android/server/display/NubiaOverlayDisplayWindow$6;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Z)V

    .line 1295
    return-void
.end method
