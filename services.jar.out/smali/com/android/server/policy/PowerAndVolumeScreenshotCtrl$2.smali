.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;
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
    .line 88
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "supersnapshot"

    const-string v1, "long press timeout: POWER + VOLDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # invokes: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V
    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$200(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$302(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # invokes: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotForLog()V
    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$400(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$600(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$500(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$702(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z

    .line 97
    return-void
.end method
