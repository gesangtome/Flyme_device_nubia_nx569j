.class Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;
.super Ljava/lang/Object;
.source "MotionDozeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustStateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;Lcn/nubia/server/appmgmt/MotionDozeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/MotionDozeController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/MotionDozeController$1;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;-><init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    # invokes: Lcn/nubia/server/appmgmt/MotionDozeController;->adjustState()V
    invoke-static {v0}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$700(Lcn/nubia/server/appmgmt/MotionDozeController;)V

    .line 272
    return-void
.end method
