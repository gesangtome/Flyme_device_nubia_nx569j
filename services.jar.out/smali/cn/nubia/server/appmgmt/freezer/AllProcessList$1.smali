.class Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;
.super Ljava/lang/Object;
.source "AllProcessList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/AllProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/AllProcessList;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/AllProcessList;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;->this$0:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AllProcessList$1;->this$0:Lcn/nubia/server/appmgmt/freezer/AllProcessList;

    # invokes: Lcn/nubia/server/appmgmt/freezer/AllProcessList;->doUpdate()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/AllProcessList;->access$000(Lcn/nubia/server/appmgmt/freezer/AllProcessList;)V

    .line 36
    return-void
.end method
