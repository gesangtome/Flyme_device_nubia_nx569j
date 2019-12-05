.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadGuideIcon(Ljava/util/List;Ljava/util/List;Z)V
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

.field final synthetic val$hashList:Ljava/util/List;

.field final synthetic val$isRight:Z

.field final synthetic val$packageList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/util/List;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$packageList:Ljava/util/List;

    iput-boolean p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$isRight:Z

    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$hashList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 786
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 807
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    invoke-static {v15}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v10

    .line 808
    .local v10, "origPri":I
    const/16 v15, 0xa

    invoke-static {v15}, Landroid/os/Process;->setThreadPriority(I)V

    .line 810
    const/4 v2, 0x0

    .line 811
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 812
    .local v9, "name":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$700(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 813
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$packageList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_2

    .line 814
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$packageList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 815
    .local v11, "packageName":Ljava/lang/String;
    const-string v15, "invalide_up_package"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "invalide_down_package"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 819
    :cond_0
    const/4 v2, 0x0

    .line 833
    :goto_1
    const-string v15, "FitAnim"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " notifyLoadGuideIcon hashcode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$hashList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bitmap="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " packageName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v4, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$hashList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v15, v2}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 840
    .local v4, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v15, 0x1

    new-array v15, v15, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->publishProgress([Ljava/lang/Object;)V

    .line 813
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 821
    .end local v4    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v12, v11, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 823
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 824
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v14

    .line 825
    .local v14, "w":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    .line 826
    .local v6, "h":I
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v6, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 828
    .local v13, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0, v14, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 829
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 830
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->val$isRight:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->createShadowIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 842
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "h":I
    .end local v7    # "i":I
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "w":I
    :catch_0
    move-exception v5

    .line 843
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    invoke-static {v15}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 845
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v15, 0x0

    return-object v15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 786
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 850
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 3
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 792
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 793
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 803
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 786
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$6;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
