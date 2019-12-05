.class Lcn/nubia/server/display/NBAutoBrightnessController$1;
.super Landroid/database/ContentObserver;
.source "NBAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/display/NBAutoBrightnessController;->registerAdjustObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/display/NBAutoBrightnessController;


# direct methods
.method constructor <init>(Lcn/nubia/server/display/NBAutoBrightnessController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController$1;->this$0:Lcn/nubia/server/display/NBAutoBrightnessController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController$1;->this$0:Lcn/nubia/server/display/NBAutoBrightnessController;

    # getter for: Lcn/nubia/server/display/NBAutoBrightnessController;->mCallback:Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;
    invoke-static {v0}, Lcn/nubia/server/display/NBAutoBrightnessController;->access$000(Lcn/nubia/server/display/NBAutoBrightnessController;)Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/server/display/NBAutoBrightnessController$INBAutoBrightnessCallback;->onBrightnessChange(Z)V

    .line 134
    return-void
.end method
