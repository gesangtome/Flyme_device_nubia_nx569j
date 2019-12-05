.class Lcom/android/server/display/NubiaOverlayDisplayWindow$4;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSideAnimation()V
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
    .line 1230
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1254
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-boolean v0, v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingStatusVisible:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSettingToVisible()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->reSetSettingsViewLocation()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputCoverMask()V
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1249
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1250
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1239
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSettingsView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1234
    return-void
.end method
