.class public Lnubia/os/SystemAccessServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "SystemAccessServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo",
        "<",
        "Lnubia/os/SystemAccessManager;",
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
            "Lnubia/os/SystemAccessManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Lnubia/os/SystemAccessManager;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "system_access"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lnubia/os/SystemAccessServiceInfo;->getServiceProxy()Lnubia/os/SystemAccessManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/os/SystemAccessManager;
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lnubia/os/SystemAccessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/ISystemAccess$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISystemAccess;

    move-result-object v1

    .line 24
    .local v1, "service":Lnubia/os/ISystemAccess;
    new-instance v2, Lnubia/os/SystemAccessManager;

    invoke-direct {v2, v1}, Lnubia/os/SystemAccessManager;-><init>(Lnubia/os/ISystemAccess;)V

    return-object v2
.end method
