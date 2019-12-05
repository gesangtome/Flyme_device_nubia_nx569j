.class Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationUtils;Ljava/lang/String;)V
    .locals 0
    .param p2, "packName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 76
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcn/nubia/server/appmgmt/ApplicationUtils;->access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;

    move-result-object v6

    monitor-enter v6

    .line 77
    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcn/nubia/server/appmgmt/ApplicationUtils;->access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 78
    .local v3, "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v4, "tackSets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v4    # "tackSets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 84
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v4    # "tackSets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 85
    .local v1, "i":Ljava/lang/Integer;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationUtils;->mResumedPackages:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcn/nubia/server/appmgmt/ApplicationUtils;->access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    return-void
.end method
