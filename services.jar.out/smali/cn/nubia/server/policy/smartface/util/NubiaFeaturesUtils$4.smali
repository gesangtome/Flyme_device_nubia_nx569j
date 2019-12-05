.class final Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils$4;
.super Ljava/lang/Object;
.source "NubiaFeaturesUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->dealGLoveNode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils$4;->val$enable:Z

    invoke-static {v0}, Lcn/nubia/server/policy/smartface/util/NubiaFeaturesUtils;->enableGloveTouch(Z)V

    .line 197
    return-void
.end method
