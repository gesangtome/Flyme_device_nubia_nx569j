.class Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$3;
.super Ljava/lang/Object;
.source "ReceiverMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$3;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$3;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$500(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor$3;->this$0:Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    invoke-static {v0}, Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;->access$200(Lcn/nubia/server/policy/smartface/Listener/ReceiverMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->showSmartFaceStatusBar(Z)V

    .line 103
    return-void
.end method
