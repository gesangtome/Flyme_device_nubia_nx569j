.class Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;
.super Landroid/database/ContentObserver;
.source "WidgetCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->startRegisterObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;->this$0:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;->this$0:Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    # invokes: Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidget()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->access$100(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    .line 62
    return-void
.end method
