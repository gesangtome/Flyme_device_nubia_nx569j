.class Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DoubleClickScreenOnCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    # invokes: Lcom/android/server/policy/DoubleClickScreenOnCtrl;->turnScreenOn()V
    invoke-static {v0}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$000(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v1, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v1, v1, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DoubleClickScreenOnCtrl$1;->this$0:Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    # getter for: Lcom/android/server/policy/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$100(Lcom/android/server/policy/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/policy/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;->access$200(Lcom/android/server/policy/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 55
    return-void
.end method
