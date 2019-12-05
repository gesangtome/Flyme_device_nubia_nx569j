.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;->realSetUidRule(ILjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$2;->val$uid:I

    const/4 v2, 0x1

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->deleteNetControlData(II)V
    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;II)V

    .line 427
    return-void
.end method
