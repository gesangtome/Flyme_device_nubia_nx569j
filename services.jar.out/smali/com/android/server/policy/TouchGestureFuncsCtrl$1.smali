.class Lcom/android/server/policy/TouchGestureFuncsCtrl$1;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Lnubia/gesture/touch/GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/TouchGestureFuncsCtrl;->enableTouchGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lnubia/gesture/touch/GestureArg;)Z
    .locals 3
    .param p1, "arg"    # Lnubia/gesture/touch/GestureArg;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "bHandled":Z
    instance-of v1, p1, Lnubia/gesture/touch/MultiPointArg;

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {p1}, Lnubia/gesture/touch/GestureArg;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    # getter for: Lcom/android/server/policy/TouchGestureFuncsCtrl;->isScreenSaverShow:Z
    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$000(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    # invokes: Lcom/android/server/policy/TouchGestureFuncsCtrl;->takeSnot()V
    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$100(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    .line 135
    :cond_1
    const/4 v0, 0x1

    .line 136
    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    # getter for: Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$200(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->doSwitchApp(Z)V

    .line 142
    const/4 v0, 0x1

    .line 143
    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    # getter for: Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$200(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->doSwitchApp(Z)V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    instance-of v1, p1, Lnubia/gesture/touch/PalmCoverArg;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    # invokes: Lcom/android/server/policy/TouchGestureFuncsCtrl;->doPalmCoverLockScreen()V
    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$300(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
