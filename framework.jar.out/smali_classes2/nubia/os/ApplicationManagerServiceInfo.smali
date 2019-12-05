.class public Lnubia/os/ApplicationManagerServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "ApplicationManagerServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo",
        "<",
        "Lnubia/os/ApplicationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/ServiceProxyInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lnubia/os/ApplicationManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Lnubia/os/ApplicationManager;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "nubia.application.manager"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lnubia/os/ApplicationManagerServiceInfo;->getServiceProxy()Lnubia/os/ApplicationManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/os/ApplicationManager;
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lnubia/os/ApplicationManagerServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;

    move-result-object v1

    .line 24
    .local v1, "service":Lnubia/os/IApplicationManager;
    new-instance v2, Lnubia/os/ApplicationManager;

    invoke-direct {v2, v1}, Lnubia/os/ApplicationManager;-><init>(Lnubia/os/IApplicationManager;)V

    return-object v2
.end method
