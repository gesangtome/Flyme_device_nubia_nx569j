.class public Lnubia/os/IconUnityUtil;
.super Ljava/lang/Object;
.source "IconUnityUtil.java"


# static fields
.field private static final ICON_ADAPT_URI:Ljava/lang/String; = "content://cn.nubia.theme.iconadapt.settings"

.field private static final ICON_METHOD_NAME:Ljava/lang/String; = "IconAdpater"

.field private static final TAG:Ljava/lang/String; = "IconUnity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lnubia/os/IconUnityUtil;->deleteBitmap(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static deleteBitmap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v1, "extra":Landroid/os/Bundle;
    const-string v3, "app_package_name"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 60
    const-string v3, "IconAdpater"

    const-string v4, "deleteBitmapStoreInSdcard"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .end local v1    # "extra":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    :cond_0
    const-string v3, "IconUnity"

    const-string v4, "Exception happened : deleteBitmap() "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IconUnity"

    const-string v4, "Exception happened : deleteBitmap() "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static generateIconNew(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    const-string v3, "cn.nubia.ziconunity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://cn.nubia.theme.iconadapt.settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "bundleRoot":Landroid/os/Bundle;
    const-string v3, "app_package_name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "IconAdpater"

    const-string v4, "deleteBitmapStoreInSdcard"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 35
    .end local v0    # "bundleRoot":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 39
    :cond_1
    const-string v3, "IconUnity"

    const-string v4, "Exception happened : generateIconNew() "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IconUnity"

    const-string v4, "Exception happened : generateIconNew() "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDefaultTheme()Z
    .locals 2

    .prologue
    .line 73
    const-string v1, "persist.sys.nubia.ClassicIcon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removePackageBitmap(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lnubia/os/IconUnityUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lnubia/os/IconUnityUtil$1;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method
