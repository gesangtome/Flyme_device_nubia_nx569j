.class public Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;
.super Lcn/nubia/server/policy/smartface/observe/SettingObserver;
.source "SFFuncObserver.java"


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/smartface/observe/SettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 14
    const-string v0, "smart_face_function_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->mUri:Landroid/net/Uri;

    .line 19
    return-void
.end method


# virtual methods
.method protected observe()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 32
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    .line 24
    .local v0, "enableFunction":Z
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->mCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcn/nubia/server/policy/smartface/observe/SFFuncObserver;->mCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    invoke-interface {v1, v0}, Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;->onSmartFaceFunctionChange(Z)V

    .line 26
    :cond_0
    return-void
.end method
