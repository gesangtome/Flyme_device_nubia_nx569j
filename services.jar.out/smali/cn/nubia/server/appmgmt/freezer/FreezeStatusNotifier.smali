.class public Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;
.super Ljava/lang/Object;
.source "FreezeStatusNotifier.java"


# static fields
.field private static final ACTION_FREEZE_STATUS_CHANGE:Ljava/lang/String; = "nubia.freezer.action.FREEZE_CHANGE"

.field private static final FREEZE_PID:Ljava/lang/String; = "fPid"

.field private static final FREEZE_UID:Ljava/lang/String; = "fUid"

.field private static final UNFREEZE_PID:Ljava/lang/String; = "uPid"

.field private static final UNFREEZE_UID:Ljava/lang/String; = "uUid"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private fillListByInfo(Ljava/util/HashSet;[I[I)V
    .locals 4
    .param p2, "pids"    # [I
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;[I[I)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v0, 0x0

    .line 51
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 52
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    aput v3, p2, v0

    .line 53
    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    aput v3, p3, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method notifyChange(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p2, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p3, "quitList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 25
    .local v7, "unfreeze":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {v7, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 27
    .local v3, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-boolean v8, v3, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v8, :cond_2

    .line 28
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    .end local v3    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 33
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v0, v8, [I

    .line 34
    .local v0, "fPids":[I
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 35
    .local v1, "fUids":[I
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v5, v8, [I

    .line 36
    .local v5, "uPids":[I
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v6, v8, [I

    .line 37
    .local v6, "uUids":[I
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->fillListByInfo(Ljava/util/HashSet;[I[I)V

    .line 38
    invoke-direct {p0, v7, v5, v6}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->fillListByInfo(Ljava/util/HashSet;[I[I)V

    .line 40
    new-instance v4, Landroid/content/Intent;

    const-string v8, "nubia.freezer.action.FREEZE_CHANGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "fPid"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 42
    const-string v8, "fUid"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 43
    const-string v8, "uPid"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 44
    const-string v8, "uUid"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 46
    iget-object v8, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
