.class Lcn/nubia/server/policy/VolleyGestureCtrl$2;
.super Ljava/lang/Object;
.source "VolleyGestureCtrl.java"

# interfaces
.implements Lnubia/gesture/sensor/MotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/VolleyGestureCtrl;->enableVolleyGesture()V
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
    .line 129
    iput-object p1, p0, Lcn/nubia/server/policy/VolleyGestureCtrl$2;->this$0:Lcn/nubia/server/policy/VolleyGestureCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionChanged(Lnubia/gesture/sensor/MotionState;)V
    .locals 2
    .param p1, "state"    # Lnubia/gesture/sensor/MotionState;

    .prologue
    .line 132
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcn/nubia/server/policy/VolleyGestureCtrl$2;->this$0:Lcn/nubia/server/policy/VolleyGestureCtrl;

    # invokes: Lcn/nubia/server/policy/VolleyGestureCtrl;->dispatchVolleyEvent(Lnubia/gesture/sensor/MotionState;)V
    invoke-static {v0, p1}, Lcn/nubia/server/policy/VolleyGestureCtrl;->access$200(Lcn/nubia/server/policy/VolleyGestureCtrl;Lnubia/gesture/sensor/MotionState;)V

    .line 134
    :cond_0
    return-void
.end method
