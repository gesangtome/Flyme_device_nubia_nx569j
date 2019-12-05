.class Lcn/nubia/server/policy/TouchHomeLightCtrl$1;
.super Ljava/lang/Object;
.source "TouchHomeLightCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/TouchHomeLightCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/TouchHomeLightCtrl;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/server/policy/TouchHomeLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/server/policy/TouchHomeLightCtrl;

    # invokes: Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCurrentLightActivity()Z
    invoke-static {v0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->access$000(Lcn/nubia/server/policy/TouchHomeLightCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/server/policy/TouchHomeLightCtrl;

    const-string v1, "com.ztemt.v5light.home_key_close_light"

    # invokes: Lcn/nubia/server/policy/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->access$100(Lcn/nubia/server/policy/TouchHomeLightCtrl;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/server/policy/TouchHomeLightCtrl;

    # invokes: Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V
    invoke-static {v0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->access$200(Lcn/nubia/server/policy/TouchHomeLightCtrl;)V

    .line 40
    return-void
.end method
