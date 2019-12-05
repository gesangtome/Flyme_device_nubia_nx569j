.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;
.super Ljava/lang/Object;
.source "ScreenShotsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;

.field final synthetic val$data:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;->this$1:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;->val$data:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;->this$1:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mCallBack:Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$000(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;->val$data:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;->hashCode:I

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$4$1;->val$data:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/resloader/IScreenCallback;->insertTaskBitmap(ILandroid/graphics/Bitmap;)V

    .line 695
    return-void
.end method
