.class Lcom/android/server/wm/AppWindowAnimator$2;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowAnimator;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator$2;->this$0:Lcom/android/server/wm/AppWindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator$2;->this$0:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator$2;->this$0:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppTransitionStart(Ljava/lang/String;)V

    .line 346
    return-void
.end method
