.class public Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "LinkFreezeStrategy.java"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 13
    return-void
.end method

.method private isAllLinkWillFreeze(Ljava/util/HashSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 32
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->preCheckOnProcessWithoutLink(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 34
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private makeLinkList(Ljava/util/HashSet;I)Z
    .locals 3
    .param p2, "reasonPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v1, 0x1

    .line 38
    :goto_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findProcess(I)Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    move-result-object v0

    .line 40
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 45
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    return v1

    .line 41
    .restart local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result p2

    .line 44
    goto :goto_0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 16
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v2

    .line 17
    .local v2, "reasonPid":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 23
    :goto_0
    return v3

    .line 19
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    .local v0, "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, v0, v2}, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->makeLinkList(Ljava/util/HashSet;I)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 21
    .local v1, "outOfManager":Z
    :goto_1
    if-eqz v1, :cond_2

    move v3, v4

    goto :goto_0

    .end local v1    # "outOfManager":Z
    :cond_1
    move v1, v4

    .line 20
    goto :goto_1

    .line 23
    .restart local v1    # "outOfManager":Z
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->isAllLinkWillFreeze(Ljava/util/HashSet;)Z

    move-result v3

    goto :goto_0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
