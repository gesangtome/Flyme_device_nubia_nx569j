.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 2925
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2926
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2927
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2928
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2929
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2930
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2935
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2936
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2937
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2938
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2940
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v6, p0

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2942
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2946
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2947
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2948
    .local v2, "action":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2950
    .local v10, "pkgList":[Ljava/lang/String;
    const-string v15, "android.intent.extra.user_handle"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 2953
    .local v14, "userHandle":I
    const-string v15, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2954
    const-string v15, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2955
    move-object v3, v10

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v8, v3, v6

    .line 2957
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v15, v8, v14}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2959
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2960
    monitor-exit v16

    .line 3015
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2955
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2963
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v16

    goto :goto_1

    .line 3014
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "pkgList":[Ljava/lang/String;
    .end local v14    # "userHandle":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 2964
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    .restart local v14    # "userHandle":I
    :cond_2
    :try_start_1
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2965
    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2992
    :cond_3
    :goto_2
    if-eqz v10, :cond_a

    array-length v15, v10

    if-lez v15, :cond_a

    .line 2993
    move-object v3, v10

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v7, :cond_a

    aget-object v9, v3, v6

    .line 2995
    .local v9, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v15, v9, v14}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;I)V

    .line 2996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->removePackagePrio(Ljava/lang/String;I)V
    invoke-static {v15, v9, v14}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Ljava/lang/String;I)V

    .line 2998
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    .local v5, "i":I
    :goto_4
    if-ltz v5, :cond_9

    .line 2999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 3001
    .local v13, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3002
    .local v11, "stat":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-eqz v11, :cond_4

    iget v15, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-ne v15, v14, :cond_4

    iget-object v15, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3004
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 3005
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-gtz v15, :cond_4

    .line 3006
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2998
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2966
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "stat":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_5
    const-string v15, "android.intent.action.USER_STOPPED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2970
    if-ltz v14, :cond_3

    .line 2971
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v15, v14}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 2973
    :cond_6
    const-string v15, "android.intent.action.UID_REMOVED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2974
    const-string v15, "android.intent.extra.UID"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2975
    .local v12, "uid":I
    if-ltz v12, :cond_3

    .line 2976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseLongArray;->delete(I)V

    goto/16 :goto_2

    .line 2979
    .end local v12    # "uid":I
    :cond_7
    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2982
    monitor-exit v16

    goto/16 :goto_1

    .line 2984
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 2985
    .local v4, "data":Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 2986
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 2987
    .restart local v9    # "pkg":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2988
    const/4 v15, 0x1

    new-array v10, v15, [Ljava/lang/String;

    .end local v10    # "pkgList":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v9, v10, v15

    .restart local v10    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 2993
    .end local v4    # "data":Landroid/net/Uri;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 3014
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_a
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
