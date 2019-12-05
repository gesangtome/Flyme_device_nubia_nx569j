.class public interface abstract Lnubia/hardware/IBreathingLightManager;
.super Ljava/lang/Object;
.source "IBreathingLightManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/hardware/IBreathingLightManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestBreathingLight(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestBreathingLightExt(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
