.class public Lnubia/os/edge/EdgeTouchEventServiceInfo;
.super Landroid/app/ServiceProxyInfo;
.source "EdgeTouchEventServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ServiceProxyInfo",
        "<",
        "Lnubia/os/edge/EdgeTouchManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "nubia.edge.touch"


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
            "Lnubia/os/edge/EdgeTouchManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    const-class v0, Lnubia/os/edge/EdgeTouchManager;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "nubia.edge.touch"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lnubia/os/edge/EdgeTouchEventServiceInfo;->getServiceProxy()Lnubia/os/edge/EdgeTouchManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/os/edge/EdgeTouchManager;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lnubia/os/edge/EdgeTouchManager;->getInstance()Lnubia/os/edge/EdgeTouchManager;

    move-result-object v0

    return-object v0
.end method
