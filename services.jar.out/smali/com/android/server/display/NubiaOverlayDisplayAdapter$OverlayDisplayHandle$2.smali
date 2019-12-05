.class Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1200(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/NubiaOverlayDisplayWindow;

    move-result-object v0

    .line 431
    .local v0, "window":Lcom/android/server/display/NubiaOverlayDisplayWindow;
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;
    invoke-static {v1, v3}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1202(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .line 432
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->dismiss()V

    .line 436
    const/4 v0, 0x0

    .line 438
    :cond_0
    return-void

    .line 432
    .end local v0    # "window":Lcom/android/server/display/NubiaOverlayDisplayWindow;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
