.class Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay$1;
.super Ljava/lang/Object;
.source "ServiceStateTrackerNotifyDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay$1;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay$1;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;

    # getter for: Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;->access$000(Lcom/android/internal/telephony/ServiceStateTrackerNotifyDelay;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyServiceStateChanged()V

    .line 33
    return-void
.end method
