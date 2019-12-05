.class public Lnubia/smartkey/SmartKeyActionServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "SmartKeyActionServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo",
        "<",
        "Lnubia/smartkey/SmartKeyActionManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
            "Lnubia/smartkey/SmartKeyActionManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const-class v0, Lnubia/smartkey/SmartKeyActionManager;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "nubia.smartkey.action"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lnubia/smartkey/SmartKeyActionServiceInfo;->getServiceProxy()Lnubia/smartkey/SmartKeyActionManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/smartkey/SmartKeyActionManager;
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lnubia/smartkey/SmartKeyActionServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/smartkey/ISmartKeyAction$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/smartkey/ISmartKeyAction;

    move-result-object v1

    .line 26
    .local v1, "service":Lnubia/smartkey/ISmartKeyAction;
    new-instance v2, Lnubia/smartkey/SmartKeyActionManager;

    invoke-direct {v2, v1}, Lnubia/smartkey/SmartKeyActionManager;-><init>(Lnubia/smartkey/ISmartKeyAction;)V

    return-object v2
.end method

.method protected hasFeature()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lnubia/smartkey/Utils;->sHasSmartKey:Z

    return v0
.end method
