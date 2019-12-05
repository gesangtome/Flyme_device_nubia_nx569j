.class public interface abstract Lnubia/os/ITaskCallback;
.super Ljava/lang/Object;
.source "ITaskCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ITaskCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract actionPerformed(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
