.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;
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
    .line 76
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    sget-boolean v0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->sIsScreenSaverShow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "supersnapshot"

    const-string v1, "about to enter fast snapshot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v0

    const-string v1, "power_and_volume_start_fast_screenshot"

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->onEventWithStartOnce(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$100(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshotProxy()V

    .line 86
    :cond_0
    return-void
.end method
