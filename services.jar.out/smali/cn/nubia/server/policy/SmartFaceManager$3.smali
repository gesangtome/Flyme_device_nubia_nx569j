.class Lcn/nubia/server/policy/SmartFaceManager$3;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/SmartFaceManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSmartFace()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->onStop()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$1200(Lcn/nubia/server/policy/SmartFaceManager;)V

    .line 158
    return-void
.end method

.method public dismissSmartFaceScreen()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    return-void
.end method

.method public dismissSmartFaceStatusBar()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    return-void
.end method

.method public goToSleep(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    const/16 v1, 0xb

    .line 162
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    return-void
.end method

.method public notifyScreentOn()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method

.method public setEverSmartFaceNearFlag()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->handleSetFlag()V
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$1000(Lcn/nubia/server/policy/SmartFaceManager;)V

    .line 127
    return-void
.end method

.method public setNeedTurnOffScreen(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->setNeedTurnOffScreen(Z)V
    invoke-static {v0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->access$1100(Lcn/nubia/server/policy/SmartFaceManager;Z)V

    .line 142
    return-void
.end method

.method public showSmartFaceLatticeScreen()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public showSmartFaceScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method

.method public showSmartFaceStatusBar(Z)V
    .locals 3
    .param p1, "showStatusBarTime"    # Z

    .prologue
    const/16 v2, 0x16

    .line 116
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iget-object v1, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateRotation(Z)V
    .locals 2
    .param p1, "oriention"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$3;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # getter for: Lcn/nubia/server/policy/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/SmartFaceManager;->access$900(Lcn/nubia/server/policy/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method
