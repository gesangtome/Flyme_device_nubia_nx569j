.class Lcn/nubia/server/policy/edge/BrightnessDialog$4;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;
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
    .line 134
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$4;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 137
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$4;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # invokes: Lcn/nubia/server/policy/edge/BrightnessDialog;->unregisterContentObserver()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$500(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 138
    return-void
.end method
