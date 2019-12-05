.class Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;
.super Landroid/os/Handler;
.source "ActionExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/ActionExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionExecutor;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 67
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method

.method private handleMessageInner(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 81
    .local v0, "action":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/edgegesture/EdgeGesture;

    .line 82
    .local v1, "gesture":Lcn/nubia/edgegesture/EdgeGesture;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 109
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 84
    :sswitch_1
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # getter for: Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$000(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # invokes: Lcn/nubia/server/policy/edge/ActionExecutor;->doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$100(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 90
    :sswitch_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # invokes: Lcn/nubia/server/policy/edge/ActionExecutor;->doDoubleSlideFunction(I)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$200(Lcn/nubia/server/policy/edge/ActionExecutor;I)V

    goto :goto_0

    .line 93
    :sswitch_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # getter for: Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$000(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v2

    const/16 v3, 0x3000

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # invokes: Lcn/nubia/server/policy/edge/ActionExecutor;->doLoopSlideFunction(I)V
    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$300(Lcn/nubia/server/policy/edge/ActionExecutor;I)V

    goto :goto_0

    .line 101
    :sswitch_4
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # invokes: Lcn/nubia/server/policy/edge/ActionExecutor;->doPressDownFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$400(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 104
    :sswitch_5
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->this$0:Lcn/nubia/server/policy/edge/ActionExecutor;

    # invokes: Lcn/nubia/server/policy/edge/ActionExecutor;->doDoubleTapFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    invoke-static {v2, v0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->access$500(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_2
        0x3000 -> :sswitch_3
        0x4000 -> :sswitch_4
        0x5000 -> :sswitch_0
        0x6000 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->handleMessageInner(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
