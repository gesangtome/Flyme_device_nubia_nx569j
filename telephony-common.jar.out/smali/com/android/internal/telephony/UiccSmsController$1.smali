.class final Lcom/android/internal/telephony/UiccSmsController$1;
.super Ljava/util/TimerTask;
.source "UiccSmsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/UiccSmsController;->checkFlowrateChecked(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 563
    iput p1, p0, Lcom/android/internal/telephony/UiccSmsController$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 565
    # getter for: Lcom/android/internal/telephony/UiccSmsController;->mIsFlowrateChecked:[Z
    invoke-static {}, Lcom/android/internal/telephony/UiccSmsController;->access$000()[Z

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccSmsController$1;->val$phoneId:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 566
    return-void
.end method
