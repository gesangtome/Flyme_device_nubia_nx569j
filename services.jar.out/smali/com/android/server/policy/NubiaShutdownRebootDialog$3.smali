.class Lcom/android/server/policy/NubiaShutdownRebootDialog$3;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaShutdownRebootDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaSlideView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mShutDownView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$500(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/NubiaSlideView;->startEnterIntoAnimator(I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # getter for: Lcom/android/server/policy/NubiaShutdownRebootDialog;->mRebootView:Lcom/android/server/policy/NubiaSlideView;
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$400(Lcom/android/server/policy/NubiaShutdownRebootDialog;)Lcom/android/server/policy/NubiaSlideView;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/policy/NubiaSlideView;->startEnterIntoAnimator(I)V

    .line 145
    iget-object v0, p0, Lcom/android/server/policy/NubiaShutdownRebootDialog$3;->this$0:Lcom/android/server/policy/NubiaShutdownRebootDialog;

    # invokes: Lcom/android/server/policy/NubiaShutdownRebootDialog;->startEnterAnimator()V
    invoke-static {v0}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->access$900(Lcom/android/server/policy/NubiaShutdownRebootDialog;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method
