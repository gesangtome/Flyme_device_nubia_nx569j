.class Lcn/nubia/server/policy/BreathingLightCtrl$1;
.super Ljava/lang/Object;
.source "BreathingLightCtrl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/BreathingLightCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/BreathingLightCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/BreathingLightCtrl;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/server/policy/BreathingLightCtrl$1;->this$0:Lcn/nubia/server/policy/BreathingLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-object v1, p0, Lcn/nubia/server/policy/BreathingLightCtrl$1;->this$0:Lcn/nubia/server/policy/BreathingLightCtrl;

    # getter for: Lcn/nubia/server/policy/BreathingLightCtrl;->mSystemReady:Z
    invoke-static {v1}, Lcn/nubia/server/policy/BreathingLightCtrl;->access$000(Lcn/nubia/server/policy/BreathingLightCtrl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 45
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 46
    const/4 v1, 0x4

    invoke-static {v1}, Lnubia/hardware/BreathingLightManager;->requestBreathingLight(I)V

    .line 50
    .end local v0    # "action":I
    :cond_0
    return-void
.end method
