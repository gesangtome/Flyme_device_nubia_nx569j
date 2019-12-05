.class public final Lnubia/os/ServiceProxyInfoCache;
.super Ljava/lang/Object;
.source "ServiceProxyInfoCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceProxyInfos()[Landroid/app/ServiceProxyInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/app/ServiceProxyInfo",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/app/ServiceProxyInfo;

    const/4 v1, 0x0

    new-instance v2, Lnubia/os/SystemAccessServiceInfo;

    invoke-direct {v2}, Lnubia/os/SystemAccessServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lnubia/os/edge/EdgeTouchEventServiceInfo;

    invoke-direct {v2}, Lnubia/os/edge/EdgeTouchEventServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lnubia/smartkey/SmartKeyActionServiceInfo;

    invoke-direct {v2}, Lnubia/smartkey/SmartKeyActionServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lnubia/os/ApplicationManagerServiceInfo;

    invoke-direct {v2}, Lnubia/os/ApplicationManagerServiceInfo;-><init>()V

    aput-object v2, v0, v1

    .line 22
    .local v0, "infos":[Landroid/app/ServiceProxyInfo;, "[Landroid/app/ServiceProxyInfo<*>;"
    return-object v0
.end method
