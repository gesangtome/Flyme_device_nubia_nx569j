.class Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NubiaOverlayDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1$1;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1$1;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$000(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)V

    .line 131
    return-void
.end method
