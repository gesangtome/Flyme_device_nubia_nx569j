.class public Lcn/nubia/server/appmgmt/ListUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ListUpgradeReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "cn.nubia.jobdispatcher.broadcast"

.field private static final DATA_PATH:Ljava/lang/String;

.field private static final SCHEME:Ljava/lang/String; = "dispatcher"

.field private static final SSP:Ljava/lang/String; = "cn.nubia.server.appmgmt"

.field private static final TAG:Ljava/lang/String; = "ListUpgradeReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/ListUpgradeReceiver;->DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.jobdispatcher.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "dispatcher"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 31
    const-string v1, "cn.nubia.server.appmgmt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method private unzipFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    .local v8, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v6, 0x0

    .line 55
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 58
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    move-object v7, v6

    .line 59
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcn/nubia/server/appmgmt/ListUpgradeReceiver;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "destFile":Ljava/io/File;
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 63
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 64
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 65
    .local v1, "byteread":I
    const/16 v11, 0x400

    :try_start_3
    new-array v0, v11, [B

    .line 66
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_2

    .line 67
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 70
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    :catchall_0
    move-exception v11

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 73
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 74
    .end local v2    # "destFile":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_3
    :try_start_5
    const-string v11, "ListUpgradeReceiver"

    const-string v12, "failed to unzip file"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    if-eqz v6, :cond_0

    .line 79
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_0
    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 84
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    return v10

    .line 69
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteread":I
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 70
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v7, v6

    .line 71
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 72
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v2    # "destFile":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    .line 78
    if-eqz v7, :cond_4

    .line 79
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_4
    if-eqz v9, :cond_5

    .line 81
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    :goto_5
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 84
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 82
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 82
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 78
    :goto_6
    if-eqz v6, :cond_6

    .line 79
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_6
    if-eqz v8, :cond_7

    .line 81
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 84
    :cond_7
    :goto_7
    throw v10

    .line 82
    :catch_3
    move-exception v3

    .line 83
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .line 73
    .end local v2    # "destFile":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    :catch_4
    move-exception v3

    goto :goto_3

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 70
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v11

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string v5, "cn.nubia.jobdispatcher.broadcast"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const-string v5, "uri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "uriString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 42
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 43
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v3}, Lcn/nubia/server/appmgmt/ListUpgradeReceiver;->unzipFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 44
    .local v2, "isSuccessful":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "updateResult"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "deleteFile"

    invoke-virtual {v5, v3, v6, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 50
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isSuccessful":Z
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uriString":Ljava/lang/String;
    :cond_0
    return-void
.end method
