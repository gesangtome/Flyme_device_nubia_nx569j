.class Landroid/os/Looper$MessageRecord;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageRecord"
.end annotation


# instance fields
.field private arg1:I

.field private arg2:I

.field private callback:Ljava/lang/String;

.field delay:J

.field dispatchingTime:J

.field finishedTime:J

.field private obj:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private what:I

.field private when:J


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    invoke-virtual {p0, p1}, Landroid/os/Looper$MessageRecord;->copy(Landroid/os/Message;)V

    .line 413
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 416
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->when:J

    .line 417
    iput-object v3, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    .line 418
    iput v2, p0, Landroid/os/Looper$MessageRecord;->what:I

    .line 419
    iput v2, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    .line 420
    iput v2, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    .line 421
    iput-object v3, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    .line 422
    iput-object v3, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    .line 423
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->dispatchingTime:J

    .line 424
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->finishedTime:J

    .line 425
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->delay:J

    .line 426
    return-void
.end method


# virtual methods
.method public copy(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/os/Looper$MessageRecord;->reset()V

    .line 430
    iget-wide v0, p1, Landroid/os/Message;->when:J

    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->when:J

    .line 431
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 433
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    .line 438
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 439
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    .line 442
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    .line 443
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    .line 446
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    .line 450
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    .line 452
    :cond_3
    return-void

    .line 435
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Looper$MessageRecord;->what:I

    goto :goto_0
.end method

.method toString(J)Ljava/lang/String;
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-wide v2, p0, Landroid/os/Looper$MessageRecord;->finishedTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 458
    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-wide v2, p0, Landroid/os/Looper$MessageRecord;->delay:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_0
    const-string v1, " dispatching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-wide v2, p0, Landroid/os/Looper$MessageRecord;->dispatchingTime:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 465
    const-string v1, " sending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-wide v2, p0, Landroid/os/Looper$MessageRecord;->when:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 467
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 468
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 469
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :goto_0
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    if-eqz v1, :cond_1

    .line 477
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    :cond_1
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    if-eqz v1, :cond_2

    .line 482
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    :cond_2
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 487
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_3
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 472
    :cond_4
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget v1, p0, Landroid/os/Looper$MessageRecord;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 494
    :cond_5
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
