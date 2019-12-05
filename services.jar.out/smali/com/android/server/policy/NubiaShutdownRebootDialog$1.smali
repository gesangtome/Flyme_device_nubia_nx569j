.class Lcom/android/server/policy/NubiaShutdownRebootDialog$1;
.super Landroid/os/Handler;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaShutdownRebootDialog;
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
    .line 55
    iput-object p1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$100(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$1;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$000(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
    .end packed-switch
.end method
