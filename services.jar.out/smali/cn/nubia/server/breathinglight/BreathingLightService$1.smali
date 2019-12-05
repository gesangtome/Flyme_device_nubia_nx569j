.class Lcn/nubia/server/breathinglight/BreathingLightService$1;
.super Landroid/os/Handler;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;
    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 217
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
