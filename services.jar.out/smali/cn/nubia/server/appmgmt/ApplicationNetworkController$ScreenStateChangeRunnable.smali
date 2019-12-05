.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateChangeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 926
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 927
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 928
    .local v0, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    if-eqz v0, :cond_0

    .line 931
    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 932
    .local v1, "enableMobile":Z
    iget-boolean v2, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 934
    .local v2, "enableWifi":Z
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 935
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mIs2GNetwork:Z
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1300(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    if-eqz v6, :cond_5

    .line 936
    const/4 v1, 0x0

    .line 940
    :goto_1
    iget-boolean v6, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    and-int/2addr v2, v6

    .line 957
    :cond_1
    :goto_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 958
    const/4 v1, 0x1

    .line 959
    const/4 v2, 0x1

    .line 962
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 963
    .local v5, "uid":I
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v6, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    .line 965
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 966
    const-string v6, "ApplicationNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen_on="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", charging="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mCharging:Z
    invoke-static {v8}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1400(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", set mobile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", wifi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_3
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessFrozenByUid(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 974
    .end local v0    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    .end local v1    # "enableMobile":Z
    .end local v2    # "enableWifi":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_4
    return-void

    .line 938
    .restart local v0    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    .restart local v1    # "enableMobile":Z
    .restart local v2    # "enableWifi":Z
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_5
    iget-boolean v6, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    and-int/2addr v1, v6

    goto/16 :goto_1

    .line 942
    :cond_6
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 943
    const/4 v1, 0x1

    .line 944
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 946
    :cond_7
    iget-wide v6, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v8, v6

    iget-wide v8, v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->restore_network_interval:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 950
    const/4 v1, 0x1

    .line 951
    const/4 v2, 0x1

    .line 952
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDisconnectTimes:Ljava/util/HashMap;
    invoke-static {v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 972
    .restart local v5    # "uid":I
    :cond_8
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$ScreenStateChangeRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v6, v5, v4, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method
