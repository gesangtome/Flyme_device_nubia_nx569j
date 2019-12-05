.class Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable$1;
.super Ljava/lang/Object;
.source "NetWorkDetectorController.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable$1;->this$1:Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method
