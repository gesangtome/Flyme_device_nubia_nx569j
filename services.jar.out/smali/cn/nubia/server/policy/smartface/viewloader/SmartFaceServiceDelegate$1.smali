.class Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;
.super Ljava/lang/Object;
.source "SmartFaceServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 35
    const-string v0, "SmartFaceServiceDelegate"

    const-string v1, "*** SmartFace connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    new-instance v1, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    invoke-static {p2}, Lnubia/os/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISmartFaceService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;-><init>(Lnubia/os/ISmartFaceService;)V

    # setter for: Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;
    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->access$002(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;)Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    new-instance v1, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$SmartFaceCallbackDelegate;-><init>(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->setSmartFaceCallback(Lnubia/os/ISmartFaceCallback;)V

    .line 39
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 44
    const-string v0, "SmartFaceServiceDelegate"

    const-string v1, "*** SmartFace disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->mSmartFaceService:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;
    invoke-static {v0, v1}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->access$002(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;)Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceWrapper;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate$1;->this$0:Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;

    # invokes: Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->resetStates()V
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;->access$200(Lcn/nubia/server/policy/smartface/viewloader/SmartFaceServiceDelegate;)V

    .line 47
    return-void
.end method
