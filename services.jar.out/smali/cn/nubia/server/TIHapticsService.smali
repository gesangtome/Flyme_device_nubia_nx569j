.class public Lcn/nubia/server/TIHapticsService;
.super Lcn/nubia/server/NubiaSystemService;
.source "TIHapticsService.java"


# static fields
.field public static final HAPTICS_SERVICE:Ljava/lang/String; = "haptics"

.field private static final TAG:Ljava/lang/String; = "TIHapticsService"


# instance fields
.field private final mHapticsService:Lcn/nubia/server/HapticsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcn/nubia/server/HapticsService;

    invoke-direct {v0, p1}, Lcn/nubia/server/HapticsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/TIHapticsService;->mHapticsService:Lcn/nubia/server/HapticsService;

    .line 14
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/server/TIHapticsService;->mHapticsService:Lcn/nubia/server/HapticsService;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "haptics"

    return-object v0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/server/TIHapticsService;->mHapticsService:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0}, Lcn/nubia/server/HapticsService;->systemReady()V

    .line 24
    return-void
.end method
