.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;
.super Landroid/os/Handler;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 316
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 317
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 318
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "lights":I
    const/4 v0, 0x0

    .line 324
    .local v0, "frequency":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 338
    const-string v2, "BreathingLightStateMachine"

    const-string v3, "error InputEventHandler message type!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 327
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 328
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;
    invoke-static {v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Lcn/nubia/server/breathinglight/BreathingLightService;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 333
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 334
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;
    invoke-static {v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$1500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Lcn/nubia/server/breathinglight/BreathingLightService;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v0, v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
