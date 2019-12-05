.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 629
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 630
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 631
    .local v0, "hashcode":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setTextureId(II)V

    .line 632
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(I)V

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "hashcode":I
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 636
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delTextures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 637
    const-string v2, "PageFlippingController"

    const-string v3, "uploadPageFlippingTextures delete texture end"

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method
