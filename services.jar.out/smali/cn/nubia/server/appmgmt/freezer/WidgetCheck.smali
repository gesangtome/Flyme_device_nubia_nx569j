.class public Lcn/nubia/server/appmgmt/freezer/WidgetCheck;
.super Ljava/lang/Object;
.source "WidgetCheck.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "selfstart_provider"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

.field private static final TABLE_WIDGET_LIST:Ljava/lang/String; = "widget_list"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadWidgetRunnable:Ljava/lang/Runnable;

.field private final widgetPackNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://selfstart_provider/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    .line 49
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;-><init>(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mLoadWidgetRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidget()V

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->startRegisterObserver()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidgetFromDb()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidget()V

    return-void
.end method

.method private loadWidget()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mLoadWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mLoadWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method private loadWidgetFromCursor(Landroid/database/Cursor;)Ljava/util/HashSet;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-string v3, "package_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "packageNameIndex":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v2, "resetHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "cn.nubia.music.preset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private loadWidgetFromDb()V
    .locals 9

    .prologue
    .line 67
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "package_name"

    aput-object v3, v2, v1

    .line 68
    .local v2, "selections":[Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 74
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 77
    invoke-direct {p0, v6}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidgetFromCursor(Landroid/database/Cursor;)Ljava/util/HashSet;

    move-result-object v8

    .line 78
    .local v8, "loadWidgetPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 80
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 81
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v8    # "loadWidgetPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_0

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 81
    .restart local v8    # "loadWidgetPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .end local v8    # "loadWidgetPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    if-eqz v6, :cond_0

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 86
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v6, :cond_3

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private startRegisterObserver()V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;-><init>(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    return-void
.end method


# virtual methods
.method hasWidgets(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    .line 38
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    iget-object v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
