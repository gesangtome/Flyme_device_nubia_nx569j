.class Lcom/android/server/policy/NubiaGlobalActions$4;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions;->setAllClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$4;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$4;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 358
    .local v0, "vibratorModeOn":I
    if-ne v0, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$4;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$4;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # invokes: Lcom/android/server/policy/NubiaGlobalActions;->setRingerModeView()V
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$300(Lcom/android/server/policy/NubiaGlobalActions;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$4;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mDialog:Lcom/android/server/policy/NubiaShutdownRebootDialog;
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$400(Lcom/android/server/policy/NubiaGlobalActions;)Lcom/android/server/policy/NubiaShutdownRebootDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaShutdownRebootDialog;->dismiss()V

    .line 367
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$4;->this$0:Lcom/android/server/policy/NubiaGlobalActions;

    # getter for: Lcom/android/server/policy/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/policy/NubiaGlobalActions;->access$200(Lcom/android/server/policy/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
