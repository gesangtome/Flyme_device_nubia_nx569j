.class Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;
.super Ljava/lang/Object;
.source "SysStateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SysStateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopApp"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "activity"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->packageName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcn/nubia/server/appmgmt/SysStateProducer$TopApp;->activityName:Ljava/lang/String;

    .line 46
    return-void
.end method
