.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOnLockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 147
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 161
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 149
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardUnlock()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$900(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 153
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardDragStart()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 157
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardDragRelease()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
