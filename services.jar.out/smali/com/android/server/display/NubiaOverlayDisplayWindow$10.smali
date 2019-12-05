.class Lcom/android/server/display/NubiaOverlayDisplayWindow$10;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;->showExitAnimation()V
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
    .line 1810
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3c23d70a    # 0.01f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1824
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$4900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1826
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/display/NubiaOverlayDisplayWindow$10$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$10$1;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow$10;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1833
    const/4 v0, 0x0

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5202(Z)Z

    .line 1834
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1837
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickBackContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->unobserve()V

    .line 1840
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mExitSettingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1841
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$5600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1842
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1818
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1814
    return-void
.end method
