.class Lcn/nubia/server/policy/edge/Animation$1;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/Animation;->onEdgeTouch(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/Animation;

.field final synthetic val$savedEvent:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/Animation;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/server/policy/edge/Animation$1;->this$0:Lcn/nubia/server/policy/edge/Animation;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/Animation$1;->val$savedEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation$1;->this$0:Lcn/nubia/server/policy/edge/Animation;

    # getter for: Lcn/nubia/server/policy/edge/Animation;->mAdapter:Lcn/nubia/server/policy/edge/effects/EffectsAdapter;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/Animation;->access$000(Lcn/nubia/server/policy/edge/Animation;)Lcn/nubia/server/policy/edge/effects/EffectsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/Animation$1;->val$savedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/EffectsAdapter;->onEdgeTouch(Landroid/view/MotionEvent;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/Animation$1;->val$savedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 60
    return-void
.end method
