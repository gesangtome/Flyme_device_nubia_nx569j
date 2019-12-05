.class interface abstract Lcn/nubia/server/appmgmt/IPerformanceHelper;
.super Ljava/lang/Object;
.source "IPerformanceHelper.java"


# virtual methods
.method public abstract isAvailable()Z
.end method

.method public abstract perfIOPrefetchStart(ILjava/lang/String;)I
.end method

.method public abstract perfIOPrefetchStop()I
.end method

.method public varargs abstract perfLockAcquire(I[I)I
.end method

.method public varargs abstract perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
.end method

.method public abstract perfLockRelease()I
.end method

.method public abstract setRootClusster(I)I
.end method
