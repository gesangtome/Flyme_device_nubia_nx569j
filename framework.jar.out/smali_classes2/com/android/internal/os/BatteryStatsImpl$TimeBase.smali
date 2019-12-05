.class Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeBase"
.end annotation


# instance fields
.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">;"
        }
    .end annotation
.end field

.field private mPastRealtime:J

.field private mPastUptime:J

.field private mRealtime:J

.field private mRealtimeStart:J

.field private mRunning:Z

.field private mUnpluggedRealtime:J

.field private mUnpluggedUptime:J

.field private mUptime:J

.field private mUptimeStart:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    return-void
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 611
    packed-switch p3, :pswitch_data_0

    .line 619
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 613
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 615
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    goto :goto_0

    .line 617
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 599
    packed-switch p3, :pswitch_data_0

    .line 607
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 601
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRunning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 539
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 540
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, "mUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 545
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v1, "mRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v1, "mPastUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, "mUptimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 554
    const-string v1, "mUnpluggedUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 557
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, "mPastRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, "mRealtimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 561
    const-string v1, "mUnpluggedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public getRealtime(J)J
    .locals 5
    .param p1, "curTime"    # J

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 632
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 633
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 635
    :cond_0
    return-wide v0
.end method

.method public getRealtimeStart()J
    .locals 2

    .prologue
    .line 643
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    return-wide v0
.end method

.method public getUptime(J)J
    .locals 5
    .param p1, "curTime"    # J

    .prologue
    .line 623
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 624
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 625
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 627
    :cond_0
    return-wide v0
.end method

.method public getUptimeStart()J
    .locals 2

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    return-wide v0
.end method

.method public init(JJ)V
    .locals 3
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 576
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    .line 577
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    .line 578
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 579
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 580
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 581
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 582
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 583
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    .line 584
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    .line 698
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    .line 681
    return-void
.end method

.method public remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed unknown observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-void
.end method

.method public reset(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 587
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_0

    .line 588
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 589
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 596
    :goto_0
    return-void

    .line 591
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 592
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 594
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    goto :goto_0
.end method

.method public setRunning(ZJJ)Z
    .locals 10
    .param p1, "running"    # Z
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    .line 651
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v1, p1, :cond_2

    .line 652
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 653
    if-eqz p1, :cond_0

    .line 654
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 655
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 656
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 657
    .local v4, "batteryUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    .line 659
    .local v6, "batteryRealtime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    .line 659
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 663
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    sub-long v8, p2, v8

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 664
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    sub-long v8, p4, v8

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 666
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    .line 667
    .restart local v4    # "batteryUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v6

    .line 669
    .restart local v6    # "batteryRealtime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 670
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    .line 669
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 673
    :cond_1
    const/4 v1, 0x1

    .line 675
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    const/4 v2, 0x0

    .line 684
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 685
    invoke-virtual {p0, p4, p5, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 686
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JJ)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    .line 701
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    .line 702
    .local v2, "runningUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 703
    .local v0, "runningRealtime":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 704
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 705
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 706
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 707
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 708
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 709
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 710
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 711
    return-void
.end method
