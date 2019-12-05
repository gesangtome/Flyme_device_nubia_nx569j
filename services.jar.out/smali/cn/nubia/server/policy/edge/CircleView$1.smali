.class Lcn/nubia/server/policy/edge/CircleView$1;
.super Ljava/lang/Object;
.source "CircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/CircleView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/CircleView;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/CircleView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 80
    .local v0, "value":F
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    const/16 v3, 0x2b

    # invokes: Lcn/nubia/server/policy/edge/CircleView;->dpToPixs(I)F
    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/CircleView;->access$100(Lcn/nubia/server/policy/edge/CircleView;I)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcn/nubia/server/policy/edge/CircleView;->mRadius:F
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/CircleView;->access$002(Lcn/nubia/server/policy/edge/CircleView;F)F

    .line 81
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    const/16 v4, 0x12

    # invokes: Lcn/nubia/server/policy/edge/CircleView;->dpToPixs(I)F
    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/CircleView;->access$100(Lcn/nubia/server/policy/edge/CircleView;I)F

    move-result v3

    mul-float/2addr v2, v3

    # setter for: Lcn/nubia/server/policy/edge/CircleView;->mPaintWidth:F
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/CircleView;->access$202(Lcn/nubia/server/policy/edge/CircleView;F)F

    .line 82
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    # getter for: Lcn/nubia/server/policy/edge/CircleView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/CircleView;->access$300(Lcn/nubia/server/policy/edge/CircleView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    # getter for: Lcn/nubia/server/policy/edge/CircleView;->mPaintWidth:F
    invoke-static {v2}, Lcn/nubia/server/policy/edge/CircleView;->access$200(Lcn/nubia/server/policy/edge/CircleView;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CircleView$1;->this$0:Lcn/nubia/server/policy/edge/CircleView;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CircleView;->invalidate()V

    .line 84
    return-void
.end method
