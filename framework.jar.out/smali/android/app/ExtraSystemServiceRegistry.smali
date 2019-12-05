.class public final Landroid/app/ExtraSystemServiceRegistry;
.super Ljava/lang/Object;
.source "ExtraSystemServiceRegistry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerNubiaServices()V
    .locals 6

    .prologue
    .line 18
    invoke-static {}, Lnubia/os/ServiceProxyInfoCache;->getServiceProxyInfos()[Landroid/app/ServiceProxyInfo;

    move-result-object v1

    .line 19
    .local v1, "ctrls":[Landroid/app/ServiceProxyInfo;, "[Landroid/app/ServiceProxyInfo<*>;"
    move-object v0, v1

    .local v0, "arr$":[Landroid/app/ServiceProxyInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 20
    .local v3, "info":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<*>;"
    invoke-virtual {v3}, Landroid/app/ServiceProxyInfo;->hasFeature()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    invoke-static {v3}, Landroid/app/ExtraSystemServiceRegistry;->registerService(Landroid/app/ServiceProxyInfo;)V

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v3    # "info":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<*>;"
    :cond_1
    return-void
.end method

.method private static registerService(Landroid/app/ServiceProxyInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ServiceProxyInfo",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "serviceInfo":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<*>;"
    :try_start_0
    const-string v4, "android.app.SystemServiceRegistry"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    aput-object v5, v3, v4

    .line 34
    .local v3, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v4, "registerService"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 35
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/ServiceProxyInfo;->getServiceName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/app/ServiceProxyInfo;->getServiceClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Landroid/app/ServiceProxyInfo;->getServiceFetcher()Landroid/app/SystemServiceRegistry$CachedServiceFetcher;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
