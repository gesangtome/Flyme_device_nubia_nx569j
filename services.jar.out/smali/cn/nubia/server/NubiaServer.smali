.class public final Lcn/nubia/server/NubiaServer;
.super Ljava/lang/Object;
.source "NubiaServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadLibraries()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "nubia_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static startServices(Lcom/android/server/SystemServiceManager;Lcn/nubia/server/Sequence;)V
    .locals 4
    .param p0, "manager"    # Lcom/android/server/SystemServiceManager;
    .param p1, "sequence"    # Lcn/nubia/server/Sequence;

    .prologue
    .line 16
    sget-object v2, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    if-ne p1, v2, :cond_0

    .line 17
    invoke-static {}, Lcn/nubia/server/NubiaServer;->loadLibraries()V

    .line 19
    :cond_0
    sget-object v2, Lcn/nubia/server/ServiceInfoCache;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/ServiceInfo;

    .line 20
    .local v1, "info":Lcn/nubia/server/ServiceInfo;
    iget-boolean v2, v1, Lcn/nubia/server/ServiceInfo;->hasFeature:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcn/nubia/server/ServiceInfo;->sequence:Lcn/nubia/server/Sequence;

    if-ne v2, p1, :cond_1

    .line 21
    iget-object v2, v1, Lcn/nubia/server/ServiceInfo;->claseName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ServiceInfo.claseName don\'t be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_2
    iget-object v2, v1, Lcn/nubia/server/ServiceInfo;->claseName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_0

    .line 27
    .end local v1    # "info":Lcn/nubia/server/ServiceInfo;
    :cond_3
    return-void
.end method
