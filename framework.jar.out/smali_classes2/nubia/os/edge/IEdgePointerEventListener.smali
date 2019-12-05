.class public interface abstract Lnubia/os/edge/IEdgePointerEventListener;
.super Ljava/lang/Object;
.source "IEdgePointerEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/IEdgePointerEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPointerEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
