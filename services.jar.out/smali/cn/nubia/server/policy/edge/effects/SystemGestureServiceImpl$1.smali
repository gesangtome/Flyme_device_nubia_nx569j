.class Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;
.super Landroid/os/AsyncTask;
.source "SystemGestureServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->nofityLoadCurrentScreen(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
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
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

.field final synthetic val$callback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->this$0:Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->val$callback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 207
    .local v0, "origPri":I
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 208
    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-static {v2, v3}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    .local v1, "screenBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->val$callback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;->onScreenUploaded(Landroid/graphics/Bitmap;)V

    .line 217
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "values"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 201
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
