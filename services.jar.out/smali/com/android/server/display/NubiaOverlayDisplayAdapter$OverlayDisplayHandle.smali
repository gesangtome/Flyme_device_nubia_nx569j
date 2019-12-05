.class final Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private mDevice:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissQuickRunnable:Ljava/lang/Runnable;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private mHeight:I

.field private final mLeftOrRight:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mWidth:I

.field private mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;

.field private final mX:I

.field private final mY:I

.field private final rate:D

.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter;Ljava/lang/String;IIIIIILjava/lang/String;D)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "gravity"    # I
    .param p9, "leftOrRight"    # Ljava/lang/String;
    .param p10, "rate"    # D

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 425
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 443
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle$3;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissQuickRunnable:Ljava/lang/Runnable;

    .line 316
    iput-object p2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 317
    iput p3, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mX:I

    .line 318
    iput p4, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mY:I

    .line 319
    iput p5, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    .line 320
    iput p6, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    .line 321
    iput p7, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    .line 322
    iput p8, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 323
    iput-object p9, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;

    .line 324
    iput-wide p10, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    .line 326
    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mY:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return v0
.end method


# virtual methods
.method public dismissLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_close_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 334
    .local v0, "exitMode":I
    if-nez v0, :cond_0

    .line 335
    const-string v1, "SingleHand"

    const-string v2, "single ui exit usually"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_close_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    const-string v1, "SingleHand"

    const-string v2, "single ui exit without animation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissQuickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    if-eqz v0, :cond_0

    .line 402
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "    "

    invoke-direct {v2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 404
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 405
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    const-string v3, "SingleUI"

    const-wide/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 407
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onSetRotated(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayAdapter;->rotated:Z
    invoke-static {v0, p1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->access$102(Lcom/android/server/display/NubiaOverlayDisplayAdapter;Z)Z

    .line 391
    return-void
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;I)V
    .locals 10
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "modeId"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v9

    monitor-enter v9

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 356
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    iget v7, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    move v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    .line 358
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 360
    monitor-exit v9

    .line 361
    return-void

    .line 360
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowDestroyed()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    .line 369
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 372
    :cond_0
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowSizeChanged(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 380
    int-to-double v2, p1

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    .line 381
    int-to-double v2, p2

    iget-wide v4, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    mul-double/2addr v2, v4

    double-to-int p2, v2

    iput p2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
