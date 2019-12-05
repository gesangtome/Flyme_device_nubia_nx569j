.class public interface abstract Lnubia/os/theme/ITypefaceReloadService;
.super Ljava/lang/Object;
.source "ITypefaceReloadService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/theme/ITypefaceReloadService$Stub;
    }
.end annotation


# virtual methods
.method public abstract reloadZygoteTypeface()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
