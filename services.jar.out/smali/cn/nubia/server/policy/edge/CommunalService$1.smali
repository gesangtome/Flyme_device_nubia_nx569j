.class Lcn/nubia/server/policy/edge/CommunalService$1;
.super Landroid/os/AsyncTask;
.source "CommunalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/CommunalService;->takeScreenShot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/CommunalService;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/CommunalService;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x2

    .line 135
    const/4 v7, 0x0

    .line 137
    .local v7, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v0, "CommunalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeScreenShot, current package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v11

    .line 139
    .local v11, "origPri":I
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    # getter for: Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/CommunalService;->access$000(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    .line 141
    .local v10, "orientation":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    # getter for: Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/CommunalService;->access$000(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 142
    .local v13, "screenWidth":I
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    # getter for: Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/CommunalService;->access$000(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 143
    .local v12, "screenHeight":I
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    int-to-float v1, v13

    aput v1, v8, v0

    const/4 v0, 0x1

    int-to-float v1, v12

    aput v1, v8, v0

    .line 144
    .local v8, "dims":[F
    if-ne v10, v3, :cond_0

    .line 145
    const/4 v0, 0x0

    int-to-float v1, v12

    aput v1, v8, v0

    .line 146
    const/4 v0, 0x1

    int-to-float v1, v13

    aput v1, v8, v0

    .line 148
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aget v1, v8, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    float-to-int v2, v2

    const/4 v3, 0x0

    const v4, 0x2e62f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 152
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v8    # "dims":[F
    .end local v10    # "orientation":I
    .end local v11    # "origPri":I
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    :goto_0
    return-object v7

    .line 153
    :catch_0
    move-exception v9

    .line 154
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 162
    move-object v0, p1

    .line 163
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService$1;->this$0:Lcn/nubia/server/policy/edge/CommunalService;

    # getter for: Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/CommunalService;->access$200(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/CommunalService$1$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/CommunalService$1$1;-><init>(Lcn/nubia/server/policy/edge/CommunalService$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
