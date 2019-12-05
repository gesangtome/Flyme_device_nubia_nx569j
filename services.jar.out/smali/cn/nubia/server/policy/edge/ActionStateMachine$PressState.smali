.class Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;
.super Lcom/android/internal/util/State;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 540
    const-string v0, "ActionStateMachine"

    const-string v1, "enter PressState"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 545
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/edgegesture/EdgeGesture;

    .line 546
    .local v0, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    const-string v3, "ActionStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurrentState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v5}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$200(Lcn/nubia/server/policy/edge/ActionStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gesture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/LogUtils;->sysd(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 563
    :goto_0
    return v1

    .line 551
    :sswitch_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePrePressSingleSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1500(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 554
    :sswitch_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handleInwardSlide(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1600(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 555
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->insideSlide(Z)V
    invoke-static {v2, v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1700(Lcn/nubia/server/policy/edge/ActionStateMachine;Z)V

    goto :goto_0

    .line 558
    :sswitch_2
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->handlePressCancel(Lcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1800(Lcn/nubia/server/policy/edge/ActionStateMachine;Lcn/nubia/edgegesture/EdgeGesture;)V

    .line 559
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$PressState;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->insideSlide(Z)V
    invoke-static {v3, v2}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$1700(Lcn/nubia/server/policy/edge/ActionStateMachine;Z)V

    goto :goto_0

    .line 548
    nop

    :sswitch_data_0
    .sparse-switch
        0x4003 -> :sswitch_2
        0x4004 -> :sswitch_0
        0x4005 -> :sswitch_0
        0x5001 -> :sswitch_1
    .end sparse-switch
.end method
