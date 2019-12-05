.class Lcom/android/server/display/NubiaOverlayDisplayWindow$7;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1329
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-boolean v0, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    .line 1330
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-boolean v0, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iput-boolean v1, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    .line 1333
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToVisible()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x30c004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mInputCoverMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x30c004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3020188

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1339
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_key_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1341
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_setting_status"

    const-string v2, "close"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1346
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetExitTextViewToScreen()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1349
    return-void

    :cond_0
    move v0, v2

    .line 1329
    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->exitSettingStatus()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    goto :goto_1
.end method
