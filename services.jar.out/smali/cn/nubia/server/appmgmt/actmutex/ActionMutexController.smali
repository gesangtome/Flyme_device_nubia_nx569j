.class public Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
.super Ljava/lang/Object;
.source "ActionMutexController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;,
        Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;,
        Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;
    }
.end annotation


# instance fields
.field private mCallbackDied:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

.field private mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;

.field private mMutexRule:Lcn/nubia/server/appmgmt/actmutex/MutexRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-static {}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->getInstance()Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mMutexRule:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    .line 24
    new-instance v0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$1;-><init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCallbackDied:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    .line 33
    iput-object p2, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->initCurrentAction()V

    .line 35
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCallbackDied:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->setListener(Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->removeCurrentActByPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;)Lcn/nubia/server/appmgmt/actmutex/CallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    return-object v0
.end method

.method private initCurrentAction()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method private isInPreRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "preact"    # Ljava/lang/String;
    .param p2, "nextact"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 158
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mMutexRule:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->getProMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeCurrentActByPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pckName"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 89
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;

    iget-object v3, v4, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    .line 92
    .local v3, "tmpName":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;>;"
    .end local v3    # "tmpName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkAllowed(Ljava/lang/String;)Z
    .locals 8
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 114
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkAllowed]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, "flag":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;

    iget-boolean v5, v5, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkAllowed] entry.getKey().actionName="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 120
    iget-object v7, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mMutexRule:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5, p1}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->getProMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v2, v5

    goto :goto_0

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ActionMutexController] flag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 126
    const/4 v5, 0x0

    .line 132
    .end local v2    # "flag":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return v5

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 130
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "flag":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    move v5, v6

    .line 132
    goto :goto_1
.end method

.method public checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 138
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkAllowedGetActionName]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "flag":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;

    iget-boolean v5, v5, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkAllowedGetActionName] entry.getKey().actionName="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mMutexRule:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5, p1}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;->getProMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v2, v5

    .line 145
    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    .end local v2    # "flag":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 152
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "flag":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v5, v6

    .line 154
    goto :goto_0
.end method

.method protected dispatchProcessingCompletedCallback(Ljava/lang/String;)V
    .locals 10
    .param p1, "nextact"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchProcessingCompletedCallback--nextact="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 164
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v8, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;

    .line 168
    .local v7, "value":Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;
    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchProcessingCompletedCallback key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v8, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    if-eqz v8, :cond_1

    invoke-direct {p0, v3, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->isInPreRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 172
    iget-boolean v8, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z

    if-eqz v8, :cond_0

    invoke-direct {p0, v3, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->isInPreRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 173
    iget-object v8, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v8, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "value":Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 170
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v7    # "value":Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;
    :cond_1
    :try_start_1
    const-string v8, ""

    goto :goto_1

    .line 179
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v3

    .line 181
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v8, v7, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 187
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "value":Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;
    :cond_3
    iget-object v8, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mListenersList:Lcn/nubia/server/appmgmt/actmutex/CallbackList;

    invoke-virtual {v8, v5, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->dispatch(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 43
    const-string v0, "==================managed action ======================"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 46
    return-void
.end method

.method public getActionState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "actname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 103
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActionState]="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;

    iget-boolean v1, v1, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;->isOpen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 108
    goto :goto_0
.end method

.method public noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z
    .param p4, "isSave"    # Z

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[noteActionMutex]:package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",+actionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isSave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 51
    if-eqz p4, :cond_0

    .line 52
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mCurrentActions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;

    invoke-direct {v2, p0, p1, p3}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$ReturnData;-><init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;Z)V

    invoke-virtual {v1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    if-eqz p3, :cond_1

    .line 56
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;

    invoke-direct {v2, p0, p2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$DispatchProcessingRunnable;-><init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[registerCallback]package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",+ICallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;-><init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregisterCallback]package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",+ICallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController$CallbackRunnable;-><init>(Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
