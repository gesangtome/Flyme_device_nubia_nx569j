.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "AttachedState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    .line 414
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 420
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 480
    const/4 v4, 0x0

    .line 483
    .local v4, "retVal":Z
    :goto_0
    return v4

    .line 422
    .end local v4    # "retVal":Z
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    .line 423
    .local v1, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 424
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string v5, "DcSwitchStateMachine.AttachedState: REQ_CONNECT"

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 425
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AttachedState: REQ_CONNECT, apnRequest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->resetDdsSwitchNeededFlag()V

    .line 428
    const/4 v4, 0x1

    .line 429
    .restart local v4    # "retVal":Z
    goto :goto_0

    .line 434
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v1    # "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    .end local v4    # "retVal":Z
    :sswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "AttachedState: REQ_DISCONNECT_ALL"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 437
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 438
    const/4 v4, 0x1

    .line 439
    .restart local v4    # "retVal":Z
    goto :goto_0

    .line 444
    .end local v4    # "retVal":Z
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "AttachedState: EVENT_DATA_DETACHED"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 446
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 447
    const/4 v4, 0x1

    .line 448
    .restart local v4    # "retVal":Z
    goto :goto_0

    .line 453
    .end local v4    # "retVal":Z
    :sswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "AttachedState: EVENT_DDS_SWITCH"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 456
    .local v3, "ddsSubId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 457
    .local v2, "ddsPhoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 458
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$4000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 460
    :cond_0
    const/4 v4, 0x1

    .line 461
    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .line 466
    .end local v2    # "ddsPhoneId":I
    .end local v3    # "ddsSubId":I
    .end local v4    # "retVal":Z
    :sswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "[NB] AttachedState requested EVENT_RESET_MMS"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 468
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$4100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 469
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$4200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 470
    const/4 v4, 0x1

    .line 471
    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
        0x44008 -> :sswitch_2
        0x4400d -> :sswitch_3
        0x4400f -> :sswitch_4
    .end sparse-switch
.end method
