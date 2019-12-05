.class Lcom/android/server/display/NubiaOverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    .line 1052
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;->onWindowSizeChanged(II)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->modeId:I

    invoke-interface {v0, p1, v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;->onWindowCreated(Landroid/graphics/SurfaceTexture;I)V

    .line 1061
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;->onWindowDestroyed()V

    .line 1067
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1073
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1077
    return-void
.end method
