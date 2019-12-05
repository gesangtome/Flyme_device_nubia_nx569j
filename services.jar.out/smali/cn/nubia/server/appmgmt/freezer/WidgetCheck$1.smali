.class Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;
.super Ljava/lang/Object;
.source "WidgetCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/freezer/WidgetCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;->this$0:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;->this$0:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    # invokes: Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidgetFromDb()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->access$000(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    .line 53
    return-void
.end method
