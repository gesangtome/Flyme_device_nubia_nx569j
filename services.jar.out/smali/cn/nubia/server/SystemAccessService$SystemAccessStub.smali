.class final Lcn/nubia/server/SystemAccessService$SystemAccessStub;
.super Lnubia/os/ISystemAccess$Stub;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/SystemAccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemAccessStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/SystemAccessService;


# direct methods
.method constructor <init>(Lcn/nubia/server/SystemAccessService;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-direct {p0}, Lnubia/os/ISystemAccess$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearScreenshot()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$302(Lcn/nubia/server/SystemAccessService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 107
    :cond_0
    return-void
.end method

.method public enablePalmGesture(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # invokes: Lcn/nubia/server/SystemAccessService;->enablePalmDetect(Z)Z
    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$500(Lcn/nubia/server/SystemAccessService;Z)Z

    move-result v0

    return v0
.end method

.method public enableWakeGesture(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # invokes: Lcn/nubia/server/SystemAccessService;->enableWake(Z)Z
    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$400(Lcn/nubia/server/SystemAccessService;Z)Z

    move-result v0

    return v0
.end method

.method public getFactoryFlag(I)Z
    .locals 1
    .param p1, "keycode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$000(Lcn/nubia/server/SystemAccessService;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->Flag_Home:Z
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Z

    move-result v0

    goto :goto_0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public screenshot(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$302(Lcn/nubia/server/SystemAccessService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method public setFactoryFlag(ZZ)V
    .locals 1
    .param p1, "flag_endcall"    # Z
    .param p2, "flag_home"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # setter for: Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z
    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$002(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 78
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # setter for: Lcn/nubia/server/SystemAccessService;->Flag_Home:Z
    invoke-static {v0, p2}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 79
    return-void
.end method

.method public setFactoryFlagTimeOut(ZZI)V
    .locals 4
    .param p1, "flag_endcall"    # Z
    .param p2, "flag_home"    # Z
    .param p3, "time_out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # setter for: Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z
    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$002(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 69
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # setter for: Lcn/nubia/server/SystemAccessService;->Flag_Home:Z
    invoke-static {v0, p2}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 70
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$200(Lcn/nubia/server/SystemAccessService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    return-void
.end method
