.class public Lcn/nubia/server/appmgmt/UnUseAppController;
.super Ljava/lang/Object;
.source "UnUseAppController.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "className"

.field private static final METHOD:Ljava/lang/String; = "UnUseApp"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "UnUseAppController"

.field private static final URI:Landroid/net/Uri;


# instance fields
.field private debug:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://cn.nubia.launcher.fancyIcon/UnUseApp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/UnUseAppController;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->debug:Z

    .line 25
    iput-object p1, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/UnUseAppController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/UnUseAppController;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->debug:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/UnUseAppController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/UnUseAppController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/UnUseAppController;->call(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 46
    .local v2, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/server/appmgmt/UnUseAppController;->URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 48
    if-nez v2, :cond_1

    .line 60
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "packageName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "className"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "UnUseApp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 55
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->debug:Z

    if-eqz v3, :cond_2

    .line 57
    const-string v3, "UnUseAppController"

    const-string v4, "call Launcher UnUseAppProvider Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_2
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 61
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    throw v3
.end method


# virtual methods
.method public noteResumingActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/UnUseAppController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/UnUseAppController$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/appmgmt/UnUseAppController$1;-><init>(Lcn/nubia/server/appmgmt/UnUseAppController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method
