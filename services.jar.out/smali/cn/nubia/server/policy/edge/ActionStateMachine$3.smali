.class Lcn/nubia/server/policy/edge/ActionStateMachine$3;
.super Landroid/database/ContentObserver;
.source "ActionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$3;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$3;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # getter for: Lcn/nubia/server/policy/edge/ActionStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$100(Lcn/nubia/server/policy/edge/ActionStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "ActionStateMachine"

    const-string v1, "enter single ui mode"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$3;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    # invokes: Lcn/nubia/server/policy/edge/ActionStateMachine;->sendCancelMessageForInterrupt()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$000(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    .line 123
    :cond_0
    return-void
.end method
