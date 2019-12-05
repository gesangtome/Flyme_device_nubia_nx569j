.class Lcn/nubia/server/policy/edge/BrightnessDialog$1;
.super Landroid/database/ContentObserver;
.source "BrightnessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$1;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$1;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    # invokes: Lcn/nubia/server/policy/edge/BrightnessDialog;->updateView()V
    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$300(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 98
    return-void
.end method
