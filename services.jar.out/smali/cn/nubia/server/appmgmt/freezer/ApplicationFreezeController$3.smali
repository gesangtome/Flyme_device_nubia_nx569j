.class Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;
.super Ljava/lang/Object;
.source "ApplicationFreezeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllPid()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v2, Ljava/io/File;

    const-string v7, "/proc"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "chird":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v5, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 103
    .local v6, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 104
    .restart local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;->getAllPid()Ljava/util/HashSet;

    move-result-object v2

    .line 113
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 114
    .local v3, "pid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isFrozen(I)Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$300(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController$3;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    # getter for: Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mFreezerProxy:Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->access$400(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->unfreeze(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v3    # "pid":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
