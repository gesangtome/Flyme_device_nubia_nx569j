.class public Lcn/nubia/server/policy/edge/effects/state/DirectionClassifier;
.super Ljava/lang/Object;
.source "DirectionClassifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLeft(F)Z
    .locals 1
    .param p0, "x"    # F

    .prologue
    .line 6
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
