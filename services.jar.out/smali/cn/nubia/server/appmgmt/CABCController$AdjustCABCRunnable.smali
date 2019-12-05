.class Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;
.super Ljava/lang/Object;
.source "CABCController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustCABCRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/CABCController;Lcn/nubia/server/appmgmt/CABCController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/CABCController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/CABCController$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # invokes: Lcn/nubia/server/appmgmt/CABCController;->adjustCABCMode()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$600(Lcn/nubia/server/appmgmt/CABCController;)V

    .line 518
    return-void
.end method
