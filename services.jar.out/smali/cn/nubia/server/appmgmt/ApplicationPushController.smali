.class public Lcn/nubia/server/appmgmt/ApplicationPushController;
.super Ljava/lang/Object;
.source "ApplicationPushController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    }
.end annotation


# static fields
.field private static final ATTR_PACKAGE:Ljava/lang/String; = "include_pkg"

.field private static final PUSH_DEPENDENT_URI:Ljava/lang/String; = "content://cn.nubia.security.power/push_dependent_table"

.field private static final PUSH_MANAGER_URI:Ljava/lang/String; = "content://cn.nubia.security.power/push_access_table"

.field private static final PUSH_MANAGE_FILE:Ljava/lang/String; = "security_push_manager.xml"

.field private static final TABLE_PUSH_ACCESS_COLUMN:Ljava/lang/String; = "app_pkg"

.field private static final TABLE_PUSH_DEPENDENT_COLUMN:Ljava/lang/String; = "dependent_pkg"

.field private static final TAG:Ljava/lang/String; = "ApplicationPushController"

.field private static final TAG_DEFAULT:Ljava/lang/String; = "default_settings"

.field private static final TAG_PUSH:Ljava/lang/String; = "push"

.field private static final TAG_PUSH_DEPENDENT:Ljava/lang/String; = "dependce"


# instance fields
.field private m3rdPartyPushPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m3rdPartyPushPrefixesLock:Ljava/lang/Object;

.field private mAllowed3rdPartyPushApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowed3rdPartyPushLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private final mPushFile:Ljava/io/File;

.field private mQueryPushRunnable:Ljava/lang/Runnable;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mDumpDebugLog:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    .line 105
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationPushController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    .line 60
    const-string v0, "security_push_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mPushFile:Ljava/io/File;

    .line 62
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mPushFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    .line 63
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->initData()V

    .line 64
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationPushController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadPushData()V

    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 125
    const-string v1, "security_push_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    .line 127
    .local v0, "data":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    if-eqz v0, :cond_0

    .line 128
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    # getter for: Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->prefixs:Ljava/util/HashSet;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    .line 130
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_1
    # getter for: Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->alloweds:Ljava/util/HashSet;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    .line 133
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    .end local v0    # "data":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v0    # "data":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 133
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 136
    .end local v0    # "data":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadPushData()V

    goto :goto_0
.end method

.method private is3rdPartyPush(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x1

    monitor-exit v3

    .line 121
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    return v2

    .line 120
    :cond_1
    monitor-exit v3

    .line 121
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private load3rdPartyPushPrefixes(Landroid/content/ContentResolver;)Z
    .locals 13
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 216
    :try_start_0
    const-string v0, "content://cn.nubia.security.power/push_dependent_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 217
    if-nez v7, :cond_2

    .line 218
    :try_start_1
    const-string v0, "ApplicationPushController"

    const-string v2, "push dependent uri data null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 219
    const/4 v0, 0x0

    .line 231
    if-eqz v7, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v0

    .line 231
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 232
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ApplicationPushController"

    const-string v1, "failed load 3rd party push prefixes"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 221
    :cond_2
    :try_start_5
    const-string v0, "dependent_pkg"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 222
    .local v6, "classnameIndex":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 223
    .local v10, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 216
    .end local v6    # "classnameIndex":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 231
    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    if-eqz v7, :cond_3

    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 228
    .restart local v6    # "classnameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_9
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 229
    :try_start_a
    iput-object v10, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    .line 230
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 231
    if-eqz v7, :cond_5

    if-eqz v1, :cond_6

    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 235
    :cond_5
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 231
    .end local v6    # "classnameIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    goto :goto_2

    .restart local v6    # "classnameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v6    # "classnameIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_3
.end method

.method private loadAllowed3rdPartyPushApps(Landroid/content/ContentResolver;)V
    .locals 14
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v12, 0x0

    .line 245
    :try_start_0
    const-string v0, "content://cn.nubia.security.power/push_access_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 246
    if-nez v7, :cond_2

    .line 247
    :try_start_1
    const-string v1, "ApplicationPushController"

    const-string v2, "push access uri data null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 260
    if-eqz v7, :cond_0

    if-eqz v12, :cond_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 261
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ApplicationPushController"

    const-string v1, "failed load 3rd party push apps"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 250
    :cond_2
    :try_start_5
    const-string v1, "app_pkg"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 251
    .local v6, "appnameIndex":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 252
    .local v10, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, -0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 253
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 245
    .end local v6    # "appnameIndex":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 260
    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_2
    if-eqz v7, :cond_3

    if-eqz v1, :cond_6

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 257
    .restart local v6    # "appnameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_9
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 258
    :try_start_a
    iput-object v10, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    .line 259
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 260
    if-eqz v7, :cond_0

    if-eqz v12, :cond_5

    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v0, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_0

    .line 259
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 260
    .end local v6    # "appnameIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object v1, v12

    goto :goto_2

    .restart local v6    # "appnameIndex":I
    .restart local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    :try_start_f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "appnameIndex":I
    .end local v10    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v1, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_3
.end method

.method private loadDefaultPushPrefixesData()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.igexin"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadPushData()V
    .locals 7

    .prologue
    .line 201
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->load3rdPartyPushPrefixes(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadDefaultPushPrefixesData()V

    .line 213
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadAllowed3rdPartyPushApps(Landroid/content/ContentResolver;)V

    .line 206
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    invoke-direct {v4, p0, v5, v6}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v1, v4}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 210
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 210
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public allowApp3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 67
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationPushController;->is3rdPartyPush(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 90
    const-string v3, "==========managed push services=========="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 97
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v4

    .line 98
    :try_start_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "allowed":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v0    # "allowed":Ljava/lang/String;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 103
    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    return-void
.end method
