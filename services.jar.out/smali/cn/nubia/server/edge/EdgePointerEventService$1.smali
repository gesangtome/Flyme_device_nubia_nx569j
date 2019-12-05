.class Lcn/nubia/server/edge/EdgePointerEventService$1;
.super Ljava/lang/Object;
.source "EdgePointerEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/edge/EdgePointerEventService;->setProp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/edge/EdgePointerEventService;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/edge/EdgePointerEventService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcn/nubia/server/edge/EdgePointerEventService$1;->this$0:Lcn/nubia/server/edge/EdgePointerEventService;

    iput-object p2, p0, Lcn/nubia/server/edge/EdgePointerEventService$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/server/edge/EdgePointerEventService$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService$1;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method
