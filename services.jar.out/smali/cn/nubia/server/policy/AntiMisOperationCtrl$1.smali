.class Lcn/nubia/server/policy/AntiMisOperationCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "AntiMisOperationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/AntiMisOperationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/AntiMisOperationCtrl;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl$1;->this$0:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "showView"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcn/nubia/server/policy/AntiMisOperationCtrl;->sIsScreenSaverShow:Z

    .line 70
    :cond_0
    return-void
.end method
