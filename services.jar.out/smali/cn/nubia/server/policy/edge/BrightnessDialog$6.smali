.class Lcn/nubia/server/policy/edge/BrightnessDialog$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;->dismissDialogWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$6;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    const-string v0, "BrightnessDialog"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 271
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$6;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # invokes: Lcn/nubia/server/policy/edge/BrightnessDialog;->dismiss()Z
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$700(Lcn/nubia/server/policy/edge/BrightnessDialog;)Z

    .line 272
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$6;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/policy/edge/BrightnessDialog;->mExitAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$802(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 273
    return-void
.end method
