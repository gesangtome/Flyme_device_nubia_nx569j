.class Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
.super Landroid/os/Handler;
.source "DoubleTapAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/DoubleTapAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->init()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    # invokes: Lcn/nubia/server/policy/edge/DoubleTapAnim;->startInner(FF)V
    invoke-static {v0, v1, v2}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$200(Lcn/nubia/server/policy/edge/DoubleTapAnim;FF)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # invokes: Lcn/nubia/server/policy/edge/DoubleTapAnim;->deInit()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$300(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
