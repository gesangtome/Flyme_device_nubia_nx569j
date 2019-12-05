.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOnNormalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 182
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 170
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyEvent()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 174
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMotionEvent()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 178
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleSetBrightnesss()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x6c -> :sswitch_2
    .end sparse-switch
.end method
