.class Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;
.super Landroid/os/Handler;
.source "WindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    # getter for: Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;->onWaiUntilTimeOut()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
    .end packed-switch
.end method
