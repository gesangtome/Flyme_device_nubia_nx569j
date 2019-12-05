.class public Lcn/nubia/server/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# instance fields
.field claseName:Ljava/lang/String;

.field hasFeature:Z

.field sequence:Lcn/nubia/server/Sequence;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "feature"    # Z
    .param p3, "seq"    # Lcn/nubia/server/Sequence;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/server/ServiceInfo;->claseName:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcn/nubia/server/ServiceInfo;->hasFeature:Z

    .line 21
    iput-object p3, p0, Lcn/nubia/server/ServiceInfo;->sequence:Lcn/nubia/server/Sequence;

    .line 22
    return-void
.end method
