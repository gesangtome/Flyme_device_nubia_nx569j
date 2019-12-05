.class Landroid/app/ServiceProxyInfo$1;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "ServiceProxyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ServiceProxyInfo;->getServiceFetcher()Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ServiceProxyInfo;


# direct methods
.method constructor <init>(Landroid/app/ServiceProxyInfo;)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Landroid/app/ServiceProxyInfo$1;, "Landroid/app/ServiceProxyInfo.1;"
    iput-object p1, p0, Landroid/app/ServiceProxyInfo$1;->this$0:Landroid/app/ServiceProxyInfo;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Landroid/app/ServiceProxyInfo$1;, "Landroid/app/ServiceProxyInfo.1;"
    iget-object v0, p0, Landroid/app/ServiceProxyInfo$1;->this$0:Landroid/app/ServiceProxyInfo;

    invoke-virtual {v0}, Landroid/app/ServiceProxyInfo;->getServiceProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
