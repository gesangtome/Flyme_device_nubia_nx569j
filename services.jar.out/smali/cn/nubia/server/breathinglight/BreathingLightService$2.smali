.class Lcn/nubia/server/breathinglight/BreathingLightService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 223
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x38

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$100(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v4, v3, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 234
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 236
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->updateAutoBrightnessState(Z)V

    .line 237
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$400(Lcn/nubia/server/breathinglight/BreathingLightService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 238
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v4, v3, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 242
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 244
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->updateAutoBrightnessState(Z)V

    goto :goto_0

    .line 245
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 248
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleUserPresent()V

    goto :goto_0

    .line 249
    :cond_4
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightService;->hadleBatteryChange(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$500(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/content/Intent;)V

    goto :goto_0
.end method
