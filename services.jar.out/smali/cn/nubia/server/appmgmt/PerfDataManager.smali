.class public Lcn/nubia/server/appmgmt/PerfDataManager;
.super Ljava/lang/Object;
.source "PerfDataManager.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "cn.nubia.cpudebugtool.broadcast"

.field private static final CPUGPU_CONTROL_URI:Ljava/lang/String;

.field private static final DATA_PATH:Ljava/lang/String;

.field private static final ENCRYPT_FILE:Ljava/lang/String;

.field private static final ENCRYPT_FILE_DEFAULT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PerfDataManager"

.field private static final TEXT_FILE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
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

    sput-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/server/appmgmt/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "khbd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->TEXT_FILE:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/server/appmgmt/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nubia_performance_thermal.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->ENCRYPT_FILE:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/server/appmgmt/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nubia_performance_thermal_default.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->ENCRYPT_FILE_DEFAULT:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://cn.nubia.security.power/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->CPUGPU_CONTROL_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PerfDataManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PerfDataManager;->initData()V

    .line 31
    return-void
.end method

.method private static deleteFile()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/PerfDataManager;->TEXT_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 106
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 34
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/nubia/server/appmgmt/PerfDataManager;->ENCRYPT_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/nubia/server/appmgmt/PerfDataManager;->ENCRYPT_FILE_DEFAULT:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "deaultPolicy":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/PerfDataManager;->loadDataFromApk()V

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/PerfDataManager;->loadDefaultData(Ljava/io/File;)V

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 52
    :cond_2
    return-void
.end method

.method private loadDataFromApk()V
    .locals 6

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerfDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 58
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcn/nubia/server/appmgmt/PerfDataManager;->CPUGPU_CONTROL_URI:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 61
    .local v2, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/PerfDataManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcn/nubia/server/appmgmt/PerfDataManager;->processData(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v1, :cond_1

    .line 68
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "PerfDataManager"

    const-string v5, "Could not get data from apk"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v1, :cond_1

    .line 68
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 67
    if-eqz v1, :cond_2

    .line 68
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    :cond_2
    :goto_1
    throw v4

    .line 70
    :catch_3
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadDefaultData(Ljava/io/File;)V
    .locals 5
    .param p1, "deaultPolicy"    # Ljava/io/File;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/PerfDataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/PerfDataManager;->processData(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    if-eqz v2, :cond_0

    .line 86
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 92
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .line 88
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 91
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "PerfDataManager"

    const-string v4, "exception in loadDefaultData"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v1, :cond_1

    .line 86
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 88
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 85
    :goto_2
    if-eqz v1, :cond_2

    .line 86
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 90
    :cond_2
    :goto_3
    throw v3

    .line 88
    :catch_3
    move-exception v0

    .line 89
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 81
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static processData(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 95
    sget-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->TEXT_FILE:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/server/appmgmt/Encryption;->decryptWithConstantKey(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 96
    sget-object v0, Lcn/nubia/server/appmgmt/PerfDataManager;->TEXT_FILE:Ljava/lang/String;

    sget-object v1, Lcn/nubia/server/appmgmt/PerfDataManager;->ENCRYPT_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/Encryption;->encryptWithRandomKey(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-static {}, Lcn/nubia/server/appmgmt/PerfDataManager;->deleteFile()V

    .line 98
    invoke-static {p0}, Lcn/nubia/server/appmgmt/PerfDataManager;->sendBroadcast(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method private static sendBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.cpudebugtool.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
