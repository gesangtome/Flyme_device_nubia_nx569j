.class Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;
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
    .line 410
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 413
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$300(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mX:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$400(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mY:I
    invoke-static {v4}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$500(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I
    invoke-static {v5}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$600(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I
    invoke-static {v6}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$700(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I
    invoke-static {v7}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$800(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I
    invoke-static {v8}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$900(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1000(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D
    invoke-static {v10}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)D

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct/range {v0 .. v12}, Lcom/android/server/display/NubiaOverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIIILjava/lang/String;DLcom/android/server/display/NubiaOverlayDisplayWindow$Listener;)V

    .line 417
    .local v0, "window":Lcom/android/server/display/NubiaOverlayDisplayWindow;
    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->show()V

    .line 418
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;
    invoke-static {v1, v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->access$1202(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .line 420
    monitor-exit v2

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
