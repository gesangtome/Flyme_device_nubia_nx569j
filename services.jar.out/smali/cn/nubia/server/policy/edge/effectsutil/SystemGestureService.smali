.class public interface abstract Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;
.super Ljava/lang/Object;
.source "SystemGestureService.java"


# virtual methods
.method public abstract getCurrentAppIndex()I
.end method

.method public abstract getCurrentScreenBitmap(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
.end method

.method public abstract getNextAppIndex(Z)I
.end method

.method public abstract getNextStartComponentName(II)Landroid/content/ComponentName;
.end method

.method public abstract getRecentTaskList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSingleSlideFuns(I)I
.end method

.method public abstract isHomeApplication()Z
.end method

.method public abstract isInnerGestureOpen()Z
.end method

.method public abstract isSingleGestureOpen()Z
.end method
