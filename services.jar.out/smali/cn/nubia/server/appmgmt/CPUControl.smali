.class public abstract Lcn/nubia/server/appmgmt/CPUControl;
.super Ljava/lang/Object;
.source "CPUControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustPerformance(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/server/appmgmt/PerformanceController$PerformanceLock;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAppLaunchDuration(Ljava/lang/String;I)J
.end method

.method public abstract getAppLockParameterTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reinitData()V
.end method
