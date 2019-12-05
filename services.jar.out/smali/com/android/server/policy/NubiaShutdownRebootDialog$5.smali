.class Lcom/android/server/policy/NubiaShutdownRebootDialog$5;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaShutdownRebootDialog;->taskScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/server/policy/NubiaShutdownRebootDialog;->takeScreenShot()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$1200(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    .local v1, "screenBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$000(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 192
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/server/policy/NubiaShutdownRebootDialog;->getWallpaperGrayValue()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$1300(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 195
    :cond_0
    if-nez v1, :cond_1

    .line 209
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$002(Lcom/android/server/policy/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 200
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$000(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # setter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$002(Lcom/android/server/policy/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 203
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 207
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x1234

    iput v3, v0, Landroid/os/Message;->what:I

    .line 208
    iget-object v3, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$5;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$1400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
