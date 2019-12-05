.class public Lcn/nubia/server/theme/TypefaceReloadService;
.super Lnubia/os/theme/ITypefaceReloadService$Stub;
.source "TypefaceReloadService.java"


# static fields
.field private static final MAGIC_NUMBER:I = 0x3346

.field private static final TAG:Ljava/lang/String; = "TypefaceReloadService"

.field private static final TIME_OUT:I = 0x7530

.field private static final ZYGOTE_NAME_32:Ljava/lang/String; = "zygote"

.field private static final ZYGOTE_NAME_64:Ljava/lang/String; = "zygote_secondary"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnubia/os/theme/ITypefaceReloadService$Stub;-><init>()V

    return-void
.end method

.method private checkCallingPermission()Z
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMessage(Ljava/lang/String;)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v5, 0x0

    .line 36
    .local v5, "os":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 37
    .local v3, "is":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 39
    .local v0, "client":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v0    # "client":Landroid/net/LocalSocket;
    .local v1, "client":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v8, Landroid/net/LocalSocketAddress;

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v8, p1, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 41
    const/16 v8, 0x7530

    invoke-virtual {v1, v8}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 42
    new-instance v6, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .end local v5    # "os":Ljava/io/PrintWriter;
    .local v6, "os":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    .end local v3    # "is":Ljava/io/BufferedReader;
    .local v4, "is":Ljava/io/BufferedReader;
    const/16 v8, 0x3346

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcn/nubia/server/theme/TypefaceReloadService;->send(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "result":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 48
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TypefaceReloadService SendMessage Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 50
    .end local v7    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 51
    .end local v6    # "os":Ljava/io/PrintWriter;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "os":Ljava/io/PrintWriter;
    :goto_0
    :try_start_4
    const-string v8, "TypefaceReloadService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    const/4 v8, 0x0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    :try_start_5
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 58
    :cond_0
    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 61
    :cond_1
    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v8

    .line 55
    .end local v0    # "client":Landroid/net/LocalSocket;
    .end local v3    # "is":Ljava/io/BufferedReader;
    .end local v5    # "os":Ljava/io/PrintWriter;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    .restart local v4    # "is":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/PrintWriter;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 56
    :try_start_6
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 58
    :cond_4
    if-eqz v6, :cond_5

    .line 59
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 61
    :cond_5
    if-eqz v4, :cond_6

    .line 62
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 68
    :cond_6
    :goto_2
    const/4 v8, 0x1

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/PrintWriter;
    .restart local v5    # "os":Ljava/io/PrintWriter;
    goto :goto_1

    .line 64
    .end local v0    # "client":Landroid/net/LocalSocket;
    .end local v3    # "is":Ljava/io/BufferedReader;
    .end local v5    # "os":Ljava/io/PrintWriter;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    .restart local v4    # "is":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/PrintWriter;
    :catch_1
    move-exception v2

    .line 65
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "TypefaceReloadService"

    const-string v9, "client.close Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 64
    .end local v1    # "client":Landroid/net/LocalSocket;
    .end local v4    # "is":Ljava/io/BufferedReader;
    .end local v6    # "os":Ljava/io/PrintWriter;
    .end local v7    # "result":Ljava/lang/String;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    .restart local v3    # "is":Ljava/io/BufferedReader;
    .restart local v5    # "os":Ljava/io/PrintWriter;
    :catch_2
    move-exception v2

    .line 65
    const-string v9, "TypefaceReloadService"

    const-string v10, "client.close Exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 55
    :goto_3
    if-eqz v0, :cond_7

    .line 56
    :try_start_7
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 58
    :cond_7
    if-eqz v5, :cond_8

    .line 59
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 61
    :cond_8
    if-eqz v3, :cond_9

    .line 62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 66
    :cond_9
    :goto_4
    throw v8

    .line 64
    :catch_3
    move-exception v2

    .line 65
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "TypefaceReloadService"

    const-string v10, "client.close Exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 54
    .end local v0    # "client":Landroid/net/LocalSocket;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    goto :goto_3

    .end local v0    # "client":Landroid/net/LocalSocket;
    .end local v5    # "os":Ljava/io/PrintWriter;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    .restart local v6    # "os":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/PrintWriter;
    .restart local v5    # "os":Ljava/io/PrintWriter;
    goto :goto_3

    .end local v0    # "client":Landroid/net/LocalSocket;
    .end local v3    # "is":Ljava/io/BufferedReader;
    .end local v5    # "os":Ljava/io/PrintWriter;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    .restart local v4    # "is":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v8

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/PrintWriter;
    .restart local v5    # "os":Ljava/io/PrintWriter;
    goto :goto_3

    .line 50
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .end local v0    # "client":Landroid/net/LocalSocket;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .end local v0    # "client":Landroid/net/LocalSocket;
    .end local v5    # "os":Ljava/io/PrintWriter;
    .restart local v1    # "client":Landroid/net/LocalSocket;
    .restart local v6    # "os":Ljava/io/PrintWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "client":Landroid/net/LocalSocket;
    .restart local v0    # "client":Landroid/net/LocalSocket;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/PrintWriter;
    .restart local v5    # "os":Ljava/io/PrintWriter;
    goto/16 :goto_0
.end method


# virtual methods
.method public reloadZygoteTypeface()Z
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/server/theme/TypefaceReloadService;->checkCallingPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zygote"

    invoke-direct {p0, v0}, Lcn/nubia/server/theme/TypefaceReloadService;->sendMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zygote_secondary"

    invoke-direct {p0, v0}, Lcn/nubia/server/theme/TypefaceReloadService;->sendMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/io/PrintWriter;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 76
    :cond_0
    return-void
.end method
