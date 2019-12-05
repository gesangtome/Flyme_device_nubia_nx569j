.class public Lcn/nubia/server/appmgmt/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mResumedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    .line 24
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationUtils;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public getForegroundPackageName()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 59
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 60
    .local v3, "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "foregroundPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "foregroundPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 64
    .restart local v1    # "foregroundPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method noteActivityStackRemoved(I)V
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method notePausingActivity(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;

    invoke-direct {v1, p0, p2}, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method noteResumingActivity(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 92
    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 93
    .local v0, "isScreenOn":Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    if-eq v1, v0, :cond_0

    .line 94
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "isScreenOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isScreenOn":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
