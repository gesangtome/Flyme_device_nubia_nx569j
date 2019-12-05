.class public Lcn/nubia/server/policy/edge/GestureSettingsListener;
.super Ljava/lang/Object;
.source "GestureSettingsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;,
        Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;
    }
.end annotation


# instance fields
.field private mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

.field private mGestureEnable:Z

.field private mOnGestureEnableListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSettingChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addOnGestureEnableListener(Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;)V
    .locals 2
    .param p1, "listener"    # Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .prologue
    .line 24
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    monitor-enter v1

    .line 25
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 30
    :cond_0
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOnSettingChangeListener(Ljava/lang/String;Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 58
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 63
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    iget-object v5, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 73
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnSettingChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 75
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    if-nez v1, :cond_0

    .line 76
    monitor-exit v5

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;

    .line 81
    .local v2, "listener":Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;
    if-eqz v2, :cond_1

    .line 83
    invoke-interface {v2, p1, p2}, Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;->onSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    .end local v2    # "listener":Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 85
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setGestureEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 34
    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mGestureEnable:Z

    if-ne v2, p1, :cond_1

    .line 51
    :cond_0
    return-void

    .line 36
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mGestureEnable:Z

    .line 38
    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    monitor-enter v3

    .line 39
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    if-nez v2, :cond_2

    .line 40
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 42
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mOnGestureEnableListenerList:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettingsListener;->mEnableListenersArray:[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;

    .line 45
    .local v1, "listeners":[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 47
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 48
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;->onGestureEnable(Z)V

    .line 46
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    .end local v1    # "listeners":[Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
