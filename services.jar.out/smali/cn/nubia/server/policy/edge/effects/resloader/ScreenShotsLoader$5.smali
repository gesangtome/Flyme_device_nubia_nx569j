.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;
.super Landroid/os/AsyncTask;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->notifyLoadStartAppScreen(Ljava/lang/String;)V
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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 727
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 746
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v7

    .line 747
    .local v7, "origPri":I
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 751
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 752
    const-string v6, "NoStartApp"

    .line 753
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getBlackThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 764
    :goto_0
    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-direct {v2, v9, v10, v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V

    .line 765
    .local v2, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    const/4 v9, 0x1

    new-array v9, v9, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {p0, v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->publishProgress([Ljava/lang/Object;)V

    .line 769
    .end local v2    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :goto_1
    const/4 v9, 0x0

    return-object v9

    .line 756
    :cond_0
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$700(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 757
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 759
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 760
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 761
    .local v5, "label":Ljava/lang/CharSequence;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "StartApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 762
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # invokes: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->getDefaultThumbnail(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    invoke-static {v9, v4, v5}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$800(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 766
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 767
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    invoke-static {v9}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$100(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 727
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 774
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 775
    return-void
.end method

.method protected varargs onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V
    .locals 3
    .param p1, "values"    # [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .prologue
    .line 730
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 732
    .local v0, "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    if-eqz v0, :cond_0

    .line 733
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    # getter for: Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;->access$200(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5$1;-><init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 742
    .end local v0    # "data":Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 727
    check-cast p1, [Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$5;->onProgressUpdate([Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;)V

    return-void
.end method
