.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteConnection$1;

    .prologue
    .line 1294
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 8
    .param p1, "cookie"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1394
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1395
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_1

    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1397
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1398
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v3, :cond_0

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1401
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1398
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1401
    goto :goto_0
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    .prologue
    .line 1420
    and-int/lit16 v0, p1, 0xff

    .line 1421
    .local v0, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    .line 1422
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_0
    return-object v1

    .restart local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1405
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1406
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1408
    if-eqz p2, :cond_0

    .line 1409
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    :cond_0
    const-string v2, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1415
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1416
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1304
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v6

    .line 1305
    :try_start_0
    iget v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v2, v5, 0x14

    .line 1306
    .local v2, "index":I
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v5, v2

    .line 1307
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v3, :cond_1

    .line 1308
    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$1;)V

    .line 1309
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v3, v5, v2

    .line 1317
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1318
    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1319
    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1320
    if-eqz p3, :cond_4

    .line 1321
    iget-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 1322
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1326
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, p3

    if-ge v1, v5, :cond_4

    .line 1327
    aget-object v0, p3, v1

    .line 1328
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v5, v0, [B

    if-eqz v5, :cond_3

    .line 1330
    iget-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    # getter for: Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B
    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$500()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1311
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1312
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1313
    iget-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1314
    iget-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1346
    .end local v2    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1324
    .restart local v2    # "index":I
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_2
    :try_start_1
    iget-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1332
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    iget-object v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1336
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v5

    iput v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1337
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1340
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_5

    .line 1341
    if-eqz p2, :cond_6

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1342
    .local v4, "s":Ljava/lang/String;
    :goto_4
    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1345
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    iget v5, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5

    :cond_6
    move-object v4, p1

    .line 1341
    goto :goto_4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1426
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    .line 1427
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v2, v4

    .line 1428
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    .line 1433
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 1434
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1438
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1439
    :try_start_0
    const-string v4, "  Most recently executed operations:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1440
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1441
    .local v0, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1442
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_3

    .line 1443
    const/4 v2, 0x0

    .line 1445
    .local v2, "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1446
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    # invokes: Landroid/database/sqlite/SQLiteConnection$Operation;->getFormattedStartTime()Ljava/lang/String;
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->access$600(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1452
    if-lez v0, :cond_2

    .line 1453
    add-int/lit8 v0, v0, -0x1

    .line 1457
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 1458
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1459
    if-eqz v3, :cond_1

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    .line 1463
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_1
    :goto_1
    monitor-exit v5

    .line 1464
    return-void

    .line 1455
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "n":I
    :cond_2
    const/16 v0, 0x13

    goto :goto_0

    .line 1461
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_3
    const-string v4, "    <none>"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1463
    .end local v0    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    .prologue
    .line 1365
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_0

    .line 1366
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1369
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1370
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1373
    :cond_1
    monitor-exit v1

    .line 1374
    return-void

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    .prologue
    .line 1378
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_0

    .line 1379
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1382
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1383
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1350
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v2

    .line 1351
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1352
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    .line 1353
    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1355
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_1

    .line 1358
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1361
    :cond_1
    return-void

    .line 1355
    .end local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1388
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1389
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1390
    monitor-exit v1

    .line 1391
    return-void

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method