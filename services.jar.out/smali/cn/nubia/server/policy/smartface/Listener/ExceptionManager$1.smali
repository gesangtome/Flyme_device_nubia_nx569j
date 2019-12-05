.class Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;
.super Landroid/os/Handler;
.source "ExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceUpKeyDown:Z
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->access$000(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->isVoiceDownKeyDown:Z
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->access$100(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "ExceptionManager"

    const-string v1, "close smartface function when hall exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->access$200(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->disableSmartFaceFunc(Landroid/content/Context;)V

    .line 30
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->resetStates()V
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;->access$300(Lcn/nubia/server/policy/smartface/Listener/ExceptionManager;)V

    .line 32
    :cond_0
    return-void
.end method
