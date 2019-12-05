.class Lcn/nubia/server/HapticsService$3;
.super Landroid/database/ContentObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/HapticsService;->InitHapticsRingSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/HapticsService;


# direct methods
.method constructor <init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 227
    iput-object p1, p0, Lcn/nubia/server/HapticsService$3;->this$0:Lcn/nubia/server/HapticsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcn/nubia/server/HapticsService$3;->this$0:Lcn/nubia/server/HapticsService;

    iget-object v1, p0, Lcn/nubia/server/HapticsService$3;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcn/nubia/server/HapticsService;->access$500(Lcn/nubia/server/HapticsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_vibrate_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I
    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->access$602(Lcn/nubia/server/HapticsService;I)I

    .line 231
    return-void
.end method
