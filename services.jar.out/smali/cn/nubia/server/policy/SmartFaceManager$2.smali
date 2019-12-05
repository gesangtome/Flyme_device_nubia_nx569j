.class Lcn/nubia/server/policy/SmartFaceManager$2;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/SmartFaceManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/SmartFaceManager;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/server/policy/SmartFaceManager$2;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartFaceFunctionChange(Z)V
    .locals 1
    .param p1, "enableFunction"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/SmartFaceManager$2;->this$0:Lcn/nubia/server/policy/SmartFaceManager;

    # invokes: Lcn/nubia/server/policy/SmartFaceManager;->controlSmartFaceFunc(Z)V
    invoke-static {v0, p1}, Lcn/nubia/server/policy/SmartFaceManager;->access$800(Lcn/nubia/server/policy/SmartFaceManager;Z)V

    .line 96
    return-void
.end method
