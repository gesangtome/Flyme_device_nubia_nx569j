.class Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;
.super Ljava/lang/Object;
.source "NetWorkDetectorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NetWorkDetectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkDetectionRunnable"
.end annotation


# instance fields
.field private mNetID:Ljava/lang/String;

.field private mNetType:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

.field trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController;ILjava/lang/String;)V
    .locals 3
    .param p2, "netType"    # I
    .param p3, "netID"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable$1;-><init>(Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 114
    iput p2, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    .line 115
    iput-object p3, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private setVaule(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # invokes: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->setNetAvailable(Z)V
    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$200(Lcn/nubia/server/appmgmt/NetWorkDetectorController;Z)V

    .line 171
    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mWifiLruCache:Landroid/util/LruCache;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$100(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->this$0:Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    # getter for: Lcn/nubia/server/appmgmt/NetWorkDetectorController;->mMobileLruCache:Landroid/util/LruCache;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->access$500(Lcn/nubia/server/appmgmt/NetWorkDetectorController;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_2
    iget v0, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 139
    :try_start_0
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 140
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 141
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 143
    new-instance v3, Ljava/net/URL;

    const-string v5, "https://www.google.com"

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 145
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 147
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 148
    .local v1, "responseCode":I
    const-string v5, "ApplicationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NetWorkDetectorController] responseCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , netType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,netID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->mNetID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    div-int/lit8 v5, v1, 0x64

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 151
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    const-string v5, "Location"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v3    # "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 153
    .restart local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 154
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 157
    :cond_0
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_1

    .line 158
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->setVaule(Z)V

    .line 159
    const-string v5, "ApplicationManagerService"

    const-string v6, "[NetWorkDetectorController]  google connected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "responseCode":I
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-void

    .line 161
    .restart local v1    # "responseCode":I
    .restart local v2    # "sc":Ljavax/net/ssl/SSLContext;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->setVaule(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1    # "responseCode":I
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v8}, Lcn/nubia/server/appmgmt/NetWorkDetectorController$NetWorkDetectionRunnable;->setVaule(Z)V

    .line 165
    const-string v5, "ApplicationManagerService"

    const-string v6, "[NetWorkDetectorController] google connection failed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
