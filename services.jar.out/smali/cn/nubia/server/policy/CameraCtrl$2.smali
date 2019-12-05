.class Lcn/nubia/server/policy/CameraCtrl$2;
.super Ljava/lang/Object;
.source "CameraCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/CameraCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/CameraCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/CameraCtrl;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/server/policy/CameraCtrl$2;->this$0:Lcn/nubia/server/policy/CameraCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl$2;->this$0:Lcn/nubia/server/policy/CameraCtrl;

    # getter for: Lcn/nubia/server/policy/CameraCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/CameraCtrl;->access$100(Lcn/nubia/server/policy/CameraCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/CameraCtrl$2;->this$0:Lcn/nubia/server/policy/CameraCtrl;

    # getter for: Lcn/nubia/server/policy/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcn/nubia/server/policy/CameraCtrl;->access$000(Lcn/nubia/server/policy/CameraCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/server/policy/CameraCtrl$2;->this$0:Lcn/nubia/server/policy/CameraCtrl;

    # invokes: Lcn/nubia/server/policy/CameraCtrl;->startCamera()V
    invoke-static {v0}, Lcn/nubia/server/policy/CameraCtrl;->access$200(Lcn/nubia/server/policy/CameraCtrl;)V

    .line 56
    return-void
.end method
