.class public abstract Landroid/app/ServiceProxyInfo;
.super Ljava/lang/Object;
.source "ServiceProxyInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method getServiceFetcher()Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<TT;>;"
    new-instance v0, Landroid/app/ServiceProxyInfo$1;

    invoke-direct {v0, p0}, Landroid/app/ServiceProxyInfo$1;-><init>(Landroid/app/ServiceProxyInfo;)V

    return-object v0
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract getServiceProxy()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected hasFeature()Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Landroid/app/ServiceProxyInfo;, "Landroid/app/ServiceProxyInfo<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
