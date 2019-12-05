.class Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;
.super Ljava/lang/Object;
.source "EdgeGesturePolicy.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/EdgeGesturePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    # getter for: Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$000(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/edgegesture/EdgeGestureDetector;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x4000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x5000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x6000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/edgegesture/EdgeGestureDetector;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/OnEdgeGestureListener;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    # getter for: Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->mEdgeGestureDetector:Lcn/nubia/edgegesture/EdgeGestureDetector;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$000(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/edgegesture/EdgeGestureDetector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-virtual {v0, v1}, Lcn/nubia/edgegesture/EdgeGestureDetector;->unDetect(Lcn/nubia/edgegesture/OnEdgeGestureListener;)V

    goto :goto_0
.end method
