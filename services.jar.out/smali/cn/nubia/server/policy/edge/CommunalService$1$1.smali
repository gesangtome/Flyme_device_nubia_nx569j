.class Lcn/nubia/server/policy/edge/CommunalService$1$1;
.super Ljava/lang/Object;
.source "CommunalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/CommunalService$1;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/CommunalService$1;

.field final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/CommunalService$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->this$1:Lcn/nubia/server/policy/edge/CommunalService$1;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->this$1:Lcn/nubia/server/policy/edge/CommunalService$1;

    iget-object v1, v1, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService$1$1;->val$bm:Landroid/graphics/Bitmap;

    # invokes: Lcn/nubia/server/policy/edge/CommunalService;->finishScreenShot(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->access$100(Lcn/nubia/server/policy/edge/CommunalService;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
