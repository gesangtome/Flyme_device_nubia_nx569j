.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # invokes: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingShowToast()V
    invoke-static {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$1000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 115
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method
