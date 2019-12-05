.class public Lcn/nubia/server/appmgmt/actmutex/CallbackList;
.super Landroid/os/RemoteCallbackList;
.source "CallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcn/nubia/mutex/IMutexCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

.field private mCallbacksMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcn/nubia/mutex/IMutexCallback;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private removeCallbacksMapByCallback(Lcn/nubia/mutex/IMutexCallback;)Ljava/lang/String;
    .locals 1
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 25
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public dispatch(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .param p2, "nextact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->beginBroadcast()I

    move-result v0

    .line 56
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcn/nubia/mutex/IMutexCallback;

    .line 59
    .local v1, "cb":Lcn/nubia/mutex/IMutexCallback;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    .local v4, "pck":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 61
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcn/nubia/mutex/IMutexCallback;

    invoke-interface {v5, v3, p2}, Lcn/nubia/mutex/IMutexCallback;->showResult(Ljava/util/List;Ljava/lang/String;)V

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "cb":Lcn/nubia/mutex/IMutexCallback;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pck":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->finishBroadcast()V

    .line 71
    return-void

    .line 65
    .restart local v1    # "cb":Lcn/nubia/mutex/IMutexCallback;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "pck":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;

    .prologue
    .line 12
    check-cast p1, Lcn/nubia/mutex/IMutexCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->onCallbackDied(Lcn/nubia/mutex/IMutexCallback;)V

    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcn/nubia/mutex/IMutexCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->onCallbackDied(Lcn/nubia/mutex/IMutexCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lcn/nubia/mutex/IMutexCallback;)V
    .locals 2
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->removeCallbacksMapByCallback(Lcn/nubia/mutex/IMutexCallback;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "pckname":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    invoke-interface {v1, v0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;->removeList(Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onCallbackDied(Lcn/nubia/mutex/IMutexCallback;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Lcn/nubia/mutex/IMutexCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallbackDied callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public register(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)Z
    .locals 1
    .param p1, "pckName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;)V
    .locals 0
    .param p1, "c"    # Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    .line 31
    return-void
.end method

.method public bridge synthetic unregister(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "x0"    # Landroid/os/IInterface;

    .prologue
    .line 12
    check-cast p1, Lcn/nubia/mutex/IMutexCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->unregister(Lcn/nubia/mutex/IMutexCallback;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcn/nubia/mutex/IMutexCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
