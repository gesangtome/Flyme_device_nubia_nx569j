.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;
.super Ljava/lang/Object;
.source "AnimParam.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field final synthetic val$drawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;->val$drawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;->val$drawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 902
    return-void
.end method
