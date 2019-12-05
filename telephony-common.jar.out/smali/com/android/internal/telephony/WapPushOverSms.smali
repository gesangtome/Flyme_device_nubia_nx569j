.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 90
    const-string v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 450
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 451
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 459
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 461
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v0

    const-string v4, "m_id=? AND m_type=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 472
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 478
    if-eqz v7, :cond_0

    .line 479
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 482
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v0

    .line 452
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 453
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 455
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v10

    .line 457
    goto :goto_1

    .line 478
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 479
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move-wide v0, v10

    .line 482
    goto :goto_1

    .line 475
    :catch_0
    move-exception v8

    .line 476
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    if-eqz v7, :cond_4

    .line 479
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 478
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 479
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getPduAddress(I[B)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "intentData"    # [B

    .prologue
    .line 523
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 524
    .local v2, "subIds":[I
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 526
    .local v1, "subId":I
    :goto_0
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v4

    invoke-direct {v3, p2, v4}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 528
    .local v0, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-nez v3, :cond_2

    .line 529
    :cond_0
    const/4 v3, 0x0

    .line 531
    :goto_1
    return-object v3

    .line 524
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v1    # "subId":I
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 531
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v1    # "subId":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 489
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 490
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 491
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 492
    .local v9, "location":Ljava/lang/String;
    new-array v11, v12, [Ljava/lang/String;

    aput-object v9, v11, v13

    .line 493
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 495
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v0

    const-string v4, "m_type=? AND ct_l =?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 506
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 513
    if-eqz v7, :cond_0

    .line 514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 518
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return v0

    .line 513
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v13

    .line 518
    goto :goto_0

    .line 510
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 511
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    if-eqz v7, :cond_2

    .line 514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 513
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    .line 348
    .local v0, "carrierConfigValues":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 349
    const-string v2, "supportMmsContentDisposition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 352
    :cond_0
    return v1
.end method

.method private writeInboxMessage(I[B)V
    .locals 23
    .param p1, "subId"    # I
    .param p2, "pushData"    # [B

    .prologue
    .line 357
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v5

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 359
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    .line 360
    const-string v4, "WAP PUSH"

    const-string v5, "Invalid PUSH PDU"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 363
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    .line 365
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    .line 435
    :try_start_0
    const-string v4, "WAP PUSH"

    const-string v5, "Received unrecognized WAP Push PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 368
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 369
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    .line 372
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to find delivery or read report\'s thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 437
    .end local v20    # "threadId":J
    :catch_0
    move-exception v17

    .line 438
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save MMS WAP push data: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 375
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 381
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 382
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to persist delivery or read report"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 439
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    .line 440
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v4, "WAP PUSH"

    const-string v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 387
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 395
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to update delivery or read report thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    .line 402
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v14

    .line 404
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    const-string v4, "enabledTransID"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 407
    .local v15, "contentLocation":[B
    const/16 v4, 0x3d

    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v15, v5

    if-ne v4, v5, :cond_4

    .line 408
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    .line 409
    .local v19, "transactionId":[B
    array-length v4, v15

    move-object/from16 v0, v19

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 411
    .local v16, "contentLocationWithId":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v15

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 413
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 415
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 418
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 419
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 425
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 426
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to save MMS WAP push notification ind"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 429
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 40
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 126
    const/16 v26, 0x0

    .line 127
    .local v26, "index":I
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "index":I
    .local v27, "index":I
    :try_start_0
    aget-byte v4, p1, v26
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v0, v4, 0xff

    move/from16 v37, v0

    .line 128
    .local v37, "transactionId":I
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "index":I
    .restart local v26    # "index":I
    :try_start_1
    aget-byte v4, p1, v27

    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    .line 131
    .local v31, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v32

    .line 133
    .local v32, "phoneId":I
    const/4 v4, 0x6

    move/from16 v0, v31

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    move/from16 v0, v31

    if-eq v0, v4, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e008c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v26

    .line 137
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_0

    .line 138
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "index":I
    .restart local v27    # "index":I
    :try_start_2
    aget-byte v4, p1, v26
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    and-int/lit16 v0, v4, 0xff

    move/from16 v37, v0

    .line 139
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "index":I
    .restart local v26    # "index":I
    :try_start_3
    aget-byte v4, p1, v27

    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    .line 145
    const/4 v4, 0x6

    move/from16 v0, v31

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    move/from16 v0, v31

    if-eq v0, v4, :cond_1

    .line 148
    const/4 v4, 0x1

    .line 333
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    .end local v37    # "transactionId":I
    :goto_0
    return v4

    .line 152
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v37    # "transactionId":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v30, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 164
    .local v30, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 166
    const/4 v4, 0x2

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v24, v0

    .line 169
    .local v24, "headerLength":I
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v26, v26, v4

    .line 171
    move/from16 v25, v26

    .line 185
    .local v25, "headerStartIndex":I
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 187
    const/4 v4, 0x2

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v29

    .line 191
    .local v29, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v14

    .line 192
    .local v14, "binaryContentType":J
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v26, v26, v4

    .line 194
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 195
    .local v23, "header":[B
    const/4 v4, 0x0

    move-object/from16 v0, v23

    array-length v6, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    if-eqz v29, :cond_7

    const-string v4, "application/vnd.wap.coc"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 200
    move-object/from16 v28, p1

    .line 207
    .local v28, "intentData":[B
    :goto_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    invoke-static/range {v32 .. v32}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v36

    .line 212
    .local v36, "subIds":[I
    if-eqz v36, :cond_8

    move-object/from16 v0, v36

    array-length v4, v0

    if-lez v4, :cond_8

    const/4 v4, 0x0

    aget v35, v36, v4

    .line 214
    .local v35, "subId":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(I[B)V

    .line 223
    .end local v35    # "subId":I
    .end local v36    # "subIds":[I
    :cond_4
    add-int v4, v26, v24

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 224
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v26, v0

    .line 225
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 226
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v38

    .line 227
    .local v38, "wapAppId":Ljava/lang/String;
    if-nez v38, :cond_5

    .line 228
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    .line 231
    :cond_5
    if-nez v29, :cond_9

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v18

    .line 236
    .local v18, "contentType":Ljava/lang/String;
    :goto_3
    const/16 v34, 0x1

    .line 237
    .local v34, "processFurther":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v39, v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 239
    .local v39, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v39, :cond_a

    .line 261
    :cond_6
    :goto_4
    if-nez v34, :cond_b

    .line 262
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 202
    .end local v18    # "contentType":Ljava/lang/String;
    .end local v28    # "intentData":[B
    .end local v34    # "processFurther":Z
    .end local v38    # "wapAppId":Ljava/lang/String;
    .end local v39    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_7
    add-int v19, v25, v24

    .line 203
    .local v19, "dataIndex":I
    :try_start_5
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v19

    new-array v0, v4, [B

    move-object/from16 v28, v0

    .line 204
    .restart local v28    # "intentData":[B
    const/4 v4, 0x0

    move-object/from16 v0, v28

    array-length v6, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 327
    .end local v14    # "binaryContentType":J
    .end local v19    # "dataIndex":I
    .end local v23    # "header":[B
    .end local v24    # "headerLength":I
    .end local v25    # "headerStartIndex":I
    .end local v28    # "intentData":[B
    .end local v29    # "mimeType":Ljava/lang/String;
    .end local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    :catch_0
    move-exception v13

    .line 330
    .end local v37    # "transactionId":I
    .local v13, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    const-string v4, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 212
    .end local v13    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v14    # "binaryContentType":J
    .restart local v23    # "header":[B
    .restart local v24    # "headerLength":I
    .restart local v25    # "headerStartIndex":I
    .restart local v28    # "intentData":[B
    .restart local v29    # "mimeType":Ljava/lang/String;
    .restart local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v36    # "subIds":[I
    .restart local v37    # "transactionId":I
    :cond_8
    :try_start_6
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v35

    goto/16 :goto_2

    .end local v36    # "subIds":[I
    .restart local v38    # "wapAppId":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v29

    .line 231
    goto :goto_3

    .line 242
    .restart local v18    # "contentType":Ljava/lang/String;
    .restart local v34    # "processFurther":Z
    .restart local v39    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v11, "mms-mgr"

    invoke-interface {v4, v6, v7, v11}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    .line 245
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v5, "intent":Landroid/content/Intent;
    const-string v4, "transactionId"

    move/from16 v0, v37

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v4, "pduType"

    move/from16 v0, v31

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v4, "header"

    move-object/from16 v0, v23

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 249
    const-string v4, "data"

    move-object/from16 v0, v28

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 250
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 252
    move/from16 v0, v32

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 254
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v33

    .line 256
    .local v33, "procRet":I
    and-int/lit8 v4, v33, 0x1

    if-lez v4, :cond_6

    const v4, 0x8000

    and-int v4, v4, v33

    if-nez v4, :cond_6

    .line 258
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 264
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v33    # "procRet":I
    .end local v39    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v4

    .line 270
    .end local v18    # "contentType":Ljava/lang/String;
    .end local v34    # "processFurther":Z
    .end local v38    # "wapAppId":Ljava/lang/String;
    :cond_b
    if-nez v29, :cond_c

    .line 272
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 278
    :cond_c
    :try_start_8
    const-string v4, "application/vnd.wap.mms-message"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 279
    const-string v8, "android.permission.RECEIVE_MMS"

    .line 280
    .local v8, "permission":Ljava/lang/String;
    const/16 v9, 0x12

    .line 286
    .local v9, "appOp":I
    :goto_6
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v4, "transactionId"

    move/from16 v0, v37

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v4, "pduType"

    move/from16 v0, v31

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v4, "header"

    move-object/from16 v0, v23

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 291
    const-string v4, "data"

    move-object/from16 v0, v28

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 292
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    move/from16 v0, v32

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v17

    .line 298
    .local v17, "componentName":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 299
    .local v10, "options":Landroid/os/Bundle;
    if-eqz v17, :cond_d

    .line 301
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 305
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v11, "mms-app"

    invoke-interface {v4, v6, v7, v11}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v20

    .line 307
    .local v20, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v16

    .line 308
    .local v16, "bopts":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 309
    invoke-virtual/range {v16 .. v16}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v10

    .line 313
    .end local v16    # "bopts":Landroid/app/BroadcastOptions;
    .end local v20    # "duration":J
    :cond_d
    :goto_7
    if-eqz v29, :cond_10

    :try_start_a
    const-string v4, "application/vnd.wap.mms-message"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 314
    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->getPduAddress(I[B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->isMmsBlockedByFirewall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 316
    const-string v4, "block_number"

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->getPduAddress(I[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const/4 v6, 0x0

    move-object/from16 v4, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendBlockRecordBroadcast(Landroid/content/Intent;ZLandroid/content/BroadcastReceiver;Ljava/lang/String;I)V

    .line 326
    :goto_8
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 282
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "appOp":I
    .end local v10    # "options":Landroid/os/Bundle;
    .end local v17    # "componentName":Landroid/content/ComponentName;
    :cond_e
    const-string v8, "android.permission.RECEIVE_WAP_PUSH"

    .line 283
    .restart local v8    # "permission":Ljava/lang/String;
    const/16 v9, 0x13

    .restart local v9    # "appOp":I
    goto/16 :goto_6

    .line 319
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v10    # "options":Landroid/os/Bundle;
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    :cond_f
    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v6, p3

    move-object v7, v5

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    goto :goto_8

    .line 332
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "appOp":I
    .end local v10    # "options":Landroid/os/Bundle;
    .end local v14    # "binaryContentType":J
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v23    # "header":[B
    .end local v24    # "headerLength":I
    .end local v25    # "headerStartIndex":I
    .end local v28    # "intentData":[B
    .end local v29    # "mimeType":Ljava/lang/String;
    .end local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    :catch_2
    move-exception v22

    .line 333
    .end local v37    # "transactionId":I
    .local v22, "e":Ljava/lang/RuntimeException;
    :goto_9
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 323
    .end local v22    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "appOp":I
    .restart local v10    # "options":Landroid/os/Bundle;
    .restart local v14    # "binaryContentType":J
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    .restart local v23    # "header":[B
    .restart local v24    # "headerLength":I
    .restart local v25    # "headerStartIndex":I
    .restart local v28    # "intentData":[B
    .restart local v29    # "mimeType":Ljava/lang/String;
    .restart local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v37    # "transactionId":I
    :cond_10
    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v6, p3

    move-object v7, v5

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 332
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "appOp":I
    .end local v10    # "options":Landroid/os/Bundle;
    .end local v14    # "binaryContentType":J
    .end local v17    # "componentName":Landroid/content/ComponentName;
    .end local v23    # "header":[B
    .end local v24    # "headerLength":I
    .end local v25    # "headerStartIndex":I
    .end local v26    # "index":I
    .end local v28    # "intentData":[B
    .end local v29    # "mimeType":Ljava/lang/String;
    .end local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    .end local v37    # "transactionId":I
    .restart local v27    # "index":I
    :catch_3
    move-exception v22

    move/from16 v26, v27

    .end local v27    # "index":I
    .restart local v26    # "index":I
    goto :goto_9

    .line 327
    .end local v26    # "index":I
    .restart local v27    # "index":I
    :catch_4
    move-exception v13

    move/from16 v26, v27

    .end local v27    # "index":I
    .restart local v26    # "index":I
    goto/16 :goto_5

    .line 310
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "appOp":I
    .restart local v10    # "options":Landroid/os/Bundle;
    .restart local v14    # "binaryContentType":J
    .restart local v17    # "componentName":Landroid/content/ComponentName;
    .restart local v23    # "header":[B
    .restart local v24    # "headerLength":I
    .restart local v25    # "headerStartIndex":I
    .restart local v28    # "intentData":[B
    .restart local v29    # "mimeType":Ljava/lang/String;
    .restart local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v37    # "transactionId":I
    :catch_5
    move-exception v4

    goto :goto_7
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 78
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 86
    return-void
.end method
