.class Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;
.super Landroid/os/Handler;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallJNIHandler"
.end annotation


# instance fields
.field private mPocessing:Z

.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 336
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 339
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 343
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 345
    :pswitch_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 346
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 347
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 348
    const-string v5, "light"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 349
    .local v3, "lights":I
    const-string v5, "mode"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 350
    .local v4, "mode":I
    const-string v5, "frequency"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 351
    .local v2, "frequency":I
    const-string v5, "color"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 352
    .local v0, "color":I
    iget-object v5, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v5, v3, v4, v2, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightJNI(IIII)V

    .line 354
    .end local v0    # "color":I
    .end local v2    # "frequency":I
    .end local v3    # "lights":I
    .end local v4    # "mode":I
    :cond_0
    iput-boolean v7, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public isPocessing()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    return v0
.end method
