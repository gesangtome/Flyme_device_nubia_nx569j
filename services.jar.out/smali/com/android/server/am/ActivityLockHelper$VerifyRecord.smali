.class public Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
.super Ljava/lang/Object;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyRecord"
.end annotation


# instance fields
.field mAttachActivity:Lcom/android/server/am/ActivityRecord;

.field mPackageName:Ljava/lang/String;

.field mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

.field mVerifyId:I

.field mVerifyWithStart:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityLockHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V
    .locals 0
    .param p2, "verifyWithStart"    # Z
    .param p3, "verifyId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attachActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "startIntentInfo"    # Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->this$0:Lcom/android/server/am/ActivityLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-boolean p2, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    .line 384
    iput p3, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    .line 385
    iput-object p4, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    .line 386
    iput-object p5, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    .line 387
    iput-object p6, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    .line 388
    return-void
.end method
