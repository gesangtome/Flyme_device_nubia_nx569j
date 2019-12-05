.class Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;
.super Ljava/lang/Object;
.source "SensorMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 49
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceOpen(Landroid/hardware/SensorEvent;)Z
    invoke-static {v2, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$100(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string v2, "SmartFaceSensorManager"

    const-string v3, "smartFaceOpen(event) NoHallNearCtrl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    new-instance v3, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/server/policy/smartface/Listener/NoHallNearCtrl;-><init>(Landroid/content/Context;)V

    # setter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$202(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .line 67
    :goto_1
    const-string v2, "SmartFaceSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   value[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$200(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$200(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->getSmartFaceDisplayFlag()I

    move-result v1

    .line 72
    .local v1, "sensorState":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->pendingSensorState:F
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$700(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    int-to-float v3, v1

    # setter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->pendingSensorState:F
    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$702(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;F)F

    .line 75
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$200(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    invoke-static {v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$400(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$800(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mWapper:Lcom/android/server/policy/PhoneWindowManagerWapper;
    invoke-static {v5}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$900(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcom/android/server/policy/PhoneWindowManagerWapper;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->registerCallback(Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManagerWapper;)V

    .line 76
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/nubia/server/policy/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 77
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$200(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;->doOperationOnUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    .end local v1    # "sensorState":I
    :catch_0
    move-exception v0

    .line 79
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 54
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceLattice(Landroid/hardware/SensorEvent;)Z
    invoke-static {v2, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$300(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    new-instance v3, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/server/policy/smartface/Listener/LatticeHallNearCtrl;-><init>(Landroid/content/Context;)V

    # setter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$202(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .line 56
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$400(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setEverSmartFaceNearFlag()V

    goto/16 :goto_1

    .line 57
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceFlip(Landroid/hardware/SensorEvent;)Z
    invoke-static {v2, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$500(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    new-instance v3, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/server/policy/smartface/Listener/FlipHallNearCtrl;-><init>(Landroid/content/Context;)V

    # setter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$202(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .line 59
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$400(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setEverSmartFaceNearFlag()V

    goto/16 :goto_1

    .line 60
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # invokes: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->smartFaceWindow(Landroid/hardware/SensorEvent;)Z
    invoke-static {v2, p1}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$600(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Landroid/hardware/SensorEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    const-string v2, "SmartFaceSensorManager"

    const-string v3, "smartFaceWindow(event) WindowHallNearCtrl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    new-instance v3, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/server/policy/smartface/Listener/WindowHallNearCtrl;-><init>(Landroid/content/Context;)V

    # setter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$202(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;

    .line 63
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mCallback:Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;
    invoke-static {v2}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$400(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/server/policy/smartface/Listener/MonitorUpdateCallback;->setEverSmartFaceNearFlag()V

    goto/16 :goto_1

    .line 65
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    new-instance v3, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;

    iget-object v4, p0, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor$1;->this$0:Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;

    # getter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$000(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/server/policy/smartface/Listener/ExitHallNearCtrl;-><init>(Landroid/content/Context;)V

    # setter for: Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->mHallNearCtrl:Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    invoke-static {v2, v3}, Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;->access$202(Lcn/nubia/server/policy/smartface/Listener/SensorMonitor;Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;)Lcn/nubia/server/policy/smartface/Listener/HallNearCtrl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
