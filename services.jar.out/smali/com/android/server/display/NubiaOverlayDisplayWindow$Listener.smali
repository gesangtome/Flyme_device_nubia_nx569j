.class public interface abstract Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onOrientationChanged()V
.end method

.method public abstract onSetRotated(Z)V
.end method

.method public abstract onWindowCreated(Landroid/graphics/SurfaceTexture;I)V
.end method

.method public abstract onWindowDestroyed()V
.end method

.method public abstract onWindowSizeChanged(II)V
.end method
