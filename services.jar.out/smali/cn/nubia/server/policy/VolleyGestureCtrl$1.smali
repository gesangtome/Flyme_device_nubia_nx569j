.class Lcn/nubia/server/policy/VolleyGestureCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "VolleyGestureCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/VolleyGestureCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/VolleyGestureCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/VolleyGestureCtrl;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl$1;->this$0:Lcn/nubia/server/policy/VolleyGestureCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl$1;->this$0:Lcn/nubia/server/policy/VolleyGestureCtrl;

    # invokes: Lcn/nubia/server/policy/VolleyGestureCtrl;->enableVolleyGesture()V
    invoke-static {v1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->access$000(Lcn/nubia/server/policy/VolleyGestureCtrl;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl$1;->this$0:Lcn/nubia/server/policy/VolleyGestureCtrl;

    # invokes: Lcn/nubia/server/policy/VolleyGestureCtrl;->disableVolleyGesture()V
    invoke-static {v1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->access$100(Lcn/nubia/server/policy/VolleyGestureCtrl;)V

    goto :goto_0
.end method
