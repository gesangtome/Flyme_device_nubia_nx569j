.class public Lcn/nubia/server/appmgmt/PerfUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PerfUpgradeReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "cn.nubia.jobdispatcher.broadcast"

.field private static final SCHEME:Ljava/lang/String; = "dispatcher"

.field private static final SSP:Ljava/lang/String; = "cn.nubia.server.appmgmt.performance"

.field private static final TAG:Ljava/lang/String; = "PerfUpgradeReceiver"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.jobdispatcher.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "dispatcher"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 26
    const-string v1, "cn.nubia.server.appmgmt.performance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method

.method private updateFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 51
    invoke-static {p1, v1}, Lcn/nubia/server/appmgmt/PerfDataManager;->processData(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v2, 0x1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PerfUpgradeReceiver"

    const-string v3, "failed to update file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    const/4 v2, 0x0

    .line 58
    if-eqz v1, :cond_0

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 60
    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 58
    if-eqz v1, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 62
    :cond_1
    :goto_1
    throw v2

    .line 60
    :catch_3
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v5, "cn.nubia.jobdispatcher.broadcast"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    const-string v5, "uri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "uriString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 37
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 38
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v3}, Lcn/nubia/server/appmgmt/PerfUpgradeReceiver;->updateFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 39
    .local v2, "isSuccessful":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "updateResult"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "deleteFile"

    invoke-virtual {v5, v3, v6, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isSuccessful":Z
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uriString":Ljava/lang/String;
    :cond_0
    return-void
.end method
