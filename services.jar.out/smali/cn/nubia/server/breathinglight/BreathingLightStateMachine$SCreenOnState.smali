.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 119
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 139
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOff()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleBootCompleted()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 127
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOff()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 130
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOn()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$600(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 133
    :sswitch_4
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleEnterSingleUiMode()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$700(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 136
    :sswitch_5
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleExitSingleUiMode()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$800(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6d -> :sswitch_2
        0x6e -> :sswitch_3
        0x6f -> :sswitch_4
        0x70 -> :sswitch_5
    .end sparse-switch
.end method
