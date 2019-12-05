.class Lcom/android/server/policy/NubiaGlobalActions$9$1;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions$9;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/NubiaGlobalActions$9;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions$9;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$9$1;->this$1:Lcom/android/server/policy/NubiaGlobalActions$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$9$1;->this$1:Lcom/android/server/policy/NubiaGlobalActions$9;

    iget-object v0, v0, Lcom/android/server/policy/NubiaGlobalActions$9;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$1000(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/NubiaGlobalActions$9$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/NubiaGlobalActions$9$1$1;-><init>(Lcom/android/server/policy/NubiaGlobalActions$9$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    return-void
.end method
