.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->loadThumbnailsInBackgroud(Ljava/util/List;)V
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
        "Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

.field final synthetic val$subList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->val$subList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    .line 630
    .local v5, "origPri":I
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 632
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->val$subList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 634
    const/4 v6, 0x0

    .line 635
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->val$subList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 636
    .local v7, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_2

    .line 637
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 643
    :goto_1
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    # invokes: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    invoke-static {v9, v10}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$400(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v8

    .line 644
    .local v8, "tt":Landroid/app/ActivityManager$TaskThumbnail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadThumbnailsInBackgroud tt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;)I

    .line 646
    if-eqz v8, :cond_0

    .line 647
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadThumbnailsInBackgroud tt.mainThumbnail="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;)I

    .line 651
    :cond_0
    if-eqz v8, :cond_1

    iget-object v9, v8, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v9, :cond_3

    .line 652
    :cond_1
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlackThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 660
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-direct {v2, v9, v10, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 662
    .local v2, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v9, 0x1

    new-array v9, v9, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {p0, v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 632
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 639
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    .end local v8    # "tt":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_2
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 654
    .restart local v8    # "tt":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_3
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailWidth:I
    invoke-static {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$500(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)I

    move-result v9

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mThumbnailHeight:I
    invoke-static {v10}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$600(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 656
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 657
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v9, v8, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 664
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "tt":Landroid/app/ActivityManager$TaskThumbnail;
    :catch_0
    move-exception v3

    .line 665
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    invoke-static {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 667
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x0

    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 673
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 4
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .prologue
    .line 612
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 614
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 615
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3$1;

    invoke-direct {v3, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$3;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
