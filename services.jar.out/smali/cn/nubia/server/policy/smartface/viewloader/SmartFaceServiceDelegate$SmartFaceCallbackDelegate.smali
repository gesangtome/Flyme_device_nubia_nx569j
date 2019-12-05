.class final Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;
.super Lnubia/os/ISmartFaceCallback$Stub;
.source "SmartFaceServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartFaceCallbackDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;


# direct methods
.method private constructor <init>(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-direct {p0}, Lnubia/os/ISmartFaceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;
    .param p2, "x1"    # Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;-><init>(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)V

    return-void
.end method


# virtual methods
.method public onUserActivity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "SmartFaceServiceDelegate"

    const-string v1, "**** SHOWN CALLED ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    # getter for: Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->access$300(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    # getter for: Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mCtrl:Lcn/nubia/server/policy/smartface/util/PowerCtrl;
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->access$400(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)Lcn/nubia/server/policy/smartface/util/PowerCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/smartface/util/PowerCtrl;->userActivity()V

    .line 62
    return-void
.end method
