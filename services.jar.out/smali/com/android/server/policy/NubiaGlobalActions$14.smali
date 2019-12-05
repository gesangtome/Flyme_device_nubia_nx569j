.class Lcom/android/server/policy/NubiaGlobalActions$14;
.super Landroid/database/ContentObserver;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$14;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$14;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/server/policy/NubiaGlobalActions;->access$1700(Lcom/android/server/policy/NubiaGlobalActions;)V

    .line 1104
    return-void
.end method
