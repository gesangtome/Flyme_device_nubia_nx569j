.class Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;
.super Landroid/os/Handler;
.source "ServiceStateTrackerUpdateTimezone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSTUpdateTZhandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
    .param p2, "x1"    # Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;-><init>(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSTUpdateTZhandler handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->access$000(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Ljava/lang/String;)V

    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getNitzUpdatedTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "iso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->this$0:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;

    # invokes: Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->sendBroadcastForTimezone(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->access$100(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
