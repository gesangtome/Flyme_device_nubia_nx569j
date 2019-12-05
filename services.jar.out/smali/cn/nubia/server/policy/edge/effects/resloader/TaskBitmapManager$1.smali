.class Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;
.super Ljava/lang/Object;
.source "TaskBitmapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->onScreenUploaded(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 572
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mScreenShotsLoader:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->access$000(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getHandledScreenBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 573
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    const-string v1, "Timer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCurrentScreen end hashcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currentscreen"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v1

    const-string v2, "currentscreen"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->addItem(ILandroid/graphics/Bitmap;)V

    .line 575
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->mBitmapLoad:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "currentscreen"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v1, "FitAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenUploaded hashCode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currentscreen"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager$1;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    # invokes: Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->judgeCallbackHasMeet()V
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->access$300(Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V

    .line 578
    return-void
.end method
