.class public Lnubia/os/ClipServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "ClipServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo",
        "<",
        "Lnubia/os/ClipServiceManagerExtra;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
            "Lnubia/os/ClipServiceManagerExtra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const-class v0, Lnubia/os/ClipServiceManagerExtra;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "nubia.clipserviceext"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lnubia/os/ClipServiceInfo;->getServiceProxy()Lnubia/os/ClipServiceManagerExtra;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/os/ClipServiceManagerExtra;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lnubia/os/ClipServiceManagerExtra;->getInstance()Lnubia/os/ClipServiceManagerExtra;

    move-result-object v0

    return-object v0
.end method
