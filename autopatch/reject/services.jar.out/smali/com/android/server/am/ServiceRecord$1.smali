.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;ILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 440
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/NotificationManagerInternal;

    .line 442
    .local v17, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v17, :cond_0

    .line 535
    :goto_0
    return-void

    .line 445
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    .line 447
    .local v11, "localForegroundNoti":Landroid/app/Notification;
    :try_start_0
    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_2

    .line 452
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to start a foreground service ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") with a broken notification (no icon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 460
    .local v14, "appName":Ljava/lang/CharSequence;
    if-nez v14, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_1
    const/4 v15, 0x0

    .line 465
    .local v15, "ctx":Landroid/content/Context;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .line 468
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v18, "notiBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

<<<<<<< VENDOR #Conflict 0
    const/16 v1, 0x40
======= #@.method public run@
    #invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

>>>>>>> BOSP #Conflict 0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 477
    const/4 v1, -0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 479
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v3, "runningIntent":Landroid/content/Intent;
    const-string v1, "package"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 485
    sget-boolean v1, Lcom/cmx/cmplus/SmartContainerConfig;->WITH_OUT_VIRTUAL_BOX:Z

    if-nez v1, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 493
    .local v19, "pi":Landroid/app/PendingIntent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, #android:color@system_notification_accent_color#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, #android:string@app_running_notification_title#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, #android:string@app_running_notification_text#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 506
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 508
    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 512
    .end local v3    # "runningIntent":Landroid/content/Intent;
    .end local v14    # "appName":Ljava/lang/CharSequence;
    .end local v15    # "ctx":Landroid/content/Context;
    .end local v18    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v19    # "pi":Landroid/app/PendingIntent;
    :cond_2
<<<<<<< VENDOR #Conflict 1
    :goto_2
======= #@.method public run@
    :goto_0

    goto :goto_flyme_0

>>>>>>> BOSP #Conflict 1
    :try_start_2
    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_4

    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid service notification: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 526
    :catch_0
    move-exception v16

    .line 527
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityManager"

    const-string v2, "Error showing notification for service"

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad notification for startForeground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "runningIntent":Landroid/content/Intent;
    .restart local v14    # "appName":Ljava/lang/CharSequence;
    .restart local v15    # "ctx":Landroid/content/Context;
    .restart local v18    # "notiBuilder":Landroid/app/Notification$Builder;
    :cond_3
<<<<<<< VENDOR #Conflict 2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v19

    .restart local v19    # "pi":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 520
    .end local v3    # "runningIntent":Landroid/content/Intent;
    .end local v14    # "appName":Ljava/lang/CharSequence;
    .end local v15    # "ctx":Landroid/content/Context;
    .end local v18    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v19    # "pi":Landroid/app/PendingIntent;
    :cond_4
    const/4 v1, 0x1
======= #@.method public run@
    :goto_flyme_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ServiceRecord;->setFlymeNotification(Landroid/app/Notification;)V
    
    const/4 v2, 0x1
>>>>>>> BOSP #Conflict 2

    :try_start_4
    new-array v12, v1, [I

    .line 521
    .local v12, "outId":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v13, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v4, v17

    invoke-interface/range {v4 .. v13}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v11, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 509
    .end local v12    # "outId":[I
    .restart local v14    # "appName":Ljava/lang/CharSequence;
    .restart local v15    # "ctx":Landroid/content/Context;
    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method
