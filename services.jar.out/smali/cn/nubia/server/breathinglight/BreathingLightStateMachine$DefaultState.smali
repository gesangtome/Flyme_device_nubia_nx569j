.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage: unhandled message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CurrentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->getCurrentStateName()Ljava/lang/String;
    invoke-static {v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method
