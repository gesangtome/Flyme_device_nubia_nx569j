.class public Lcom/android/server/am/NubiaRiskAppStartUtil;
.super Ljava/lang/Object;
.source "NubiaRiskAppStartUtil.java"


# static fields
.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaRiskAppStartUtil"

.field private static sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;


# instance fields
.field private final mBlackListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPackageInstallerSupport:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://risk_app_provider/risk_app_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    .line 49
    iput-object p1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/NubiaRiskAppStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->setBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isRiskAppStart(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/NubiaRiskAppStartUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/NubiaRiskAppStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method private checkPackageInstaller()V
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    monitor-enter v2

    .line 174
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/priv-app/PackageInstaller"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isAppSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    .line 178
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const-string v1, "NubiaRiskAppStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPackageInstallerSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 178
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaRiskAppStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaRiskAppStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 163
    return-object v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/NubiaRiskAppStartUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-direct {v0, p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;

    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaRiskAppStartUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method private isAppSupport(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "isInstall":Z
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.packageinstaller.RISK_APP_STARTED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.packageinstaller"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 190
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 195
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v0

    .line 192
    .restart local v1    # "it":Landroid/content/Intent;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isPackageInstallerSupport()Z
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRiskAppStart(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    monitor-exit v2

    .line 118
    return v0

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 88
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v2, v3

    .line 89
    .local v2, "selections":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 92
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_0

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 95
    .local v9, "sum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 96
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 97
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 103
    .end local v8    # "i":I
    .end local v9    # "sum":I
    :cond_0
    if-eqz v6, :cond_1

    .line 105
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_1
    :goto_1
    return-void

    .line 106
    :catch_0
    move-exception v7

    .line 107
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 101
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "NubiaRiskAppStartUtil"

    const-string v3, "loadPackageNamesFromDb query error"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-eqz v6, :cond_1

    .line 105
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 106
    :catch_2
    move-exception v7

    .line 107
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 105
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 108
    :cond_2
    :goto_2
    throw v1

    .line 106
    :catch_3
    move-exception v7

    .line 107
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private registerRiskAppObserver()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaRiskAppStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/am/NubiaRiskAppStartUtil$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/NubiaRiskAppStartUtil$1;-><init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    return-void
.end method

.method private setBlackListPkgNames()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaRiskAppStartUtil$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/NubiaRiskAppStartUtil$3;-><init>(Lcom/android/server/am/NubiaRiskAppStartUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method


# virtual methods
.method public checkRiskAndShowDialog(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isPackageInstallerSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaRiskAppStartUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/NubiaRiskAppStartUtil$2;-><init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public firstBootGetAllowPkgNames()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "NubiaRiskAppStartUtil"

    const-string v1, "boot and register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->checkPackageInstaller()V

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isPackageInstallerSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->initHandler()V

    .line 64
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->setBlackListPkgNames()V

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->registerRiskAppObserver()V

    .line 67
    :cond_0
    return-void
.end method
