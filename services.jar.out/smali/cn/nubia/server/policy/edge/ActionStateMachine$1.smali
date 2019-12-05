.class Lcn/nubia/server/policy/edge/ActionStateMachine$1;
.super Landroid/telephony/PhoneStateListener;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;->registerPhoneCallStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$1;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const-string v0, "ActionStateMachine"

    const-string v1, "ringing"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$1;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->sendCancelMessageForInterrupt()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$000(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
