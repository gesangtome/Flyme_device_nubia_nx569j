.class Lcn/nubia/server/policy/edge/DoubleTapAnim$1;
.super Ljava/lang/Object;
.source "DoubleTapAnim.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/GestureSettingsListener$OnSettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/DoubleTapAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "nubia_edge_double_click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # getter for: Lcn/nubia/server/policy/edge/DoubleTapAnim;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$000(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Lcn/nubia/server/policy/edge/GestureSettings;

    move-result-object v0

    const-string v1, "nubia_edge_double_click"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # getter for: Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$100(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$1;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    # getter for: Lcn/nubia/server/policy/edge/DoubleTapAnim;->mUIHandler:Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$100(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
