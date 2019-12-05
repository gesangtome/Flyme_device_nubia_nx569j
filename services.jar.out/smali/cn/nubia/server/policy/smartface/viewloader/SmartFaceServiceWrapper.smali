.class public Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;
.super Ljava/lang/Object;
.source "SmartFaceServiceWrapper.java"

# interfaces
.implements Lnubia/os/ISmartFaceService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFaceServiceWrapper"


# instance fields
.field private mService:Lnubia/os/ISmartFaceService;


# direct methods
.method public constructor <init>(Lnubia/os/ISmartFaceService;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/ISmartFaceService;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    .line 17
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v0}, Lnubia/os/ISmartFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v1}, Lnubia/os/ISmartFaceService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmartFaceServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEverSmartFaceNearFlag()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v1}, Lnubia/os/ISmartFaceService;->setEverSmartFaceNearFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmartFaceServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSmartFaceCallback(Lnubia/os/ISmartFaceCallback;)V
    .locals 3
    .param p1, "callback"    # Lnubia/os/ISmartFaceCallback;

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v1, p1}, Lnubia/os/ISmartFaceService;->setSmartFaceCallback(Lnubia/os/ISmartFaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmartFaceServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 22
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v1}, Lnubia/os/ISmartFaceService;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmartFaceServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showLattice()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v1}, Lnubia/os/ISmartFaceService;->showLattice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmartFaceServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showWindow()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;->mService:Lnubia/os/ISmartFaceService;

    invoke-interface {v1}, Lnubia/os/ISmartFaceService;->showWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmartFaceServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
