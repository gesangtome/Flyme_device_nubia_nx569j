.class public Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
.super Ljava/lang/Object;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartIntentInfo"
.end annotation


# instance fields
.field public mCaller:Landroid/app/IApplicationThread;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mConfig:Landroid/content/res/Configuration;

.field public mIcontainer:Landroid/app/IActivityContainer;

.field public mInTask:Lcom/android/server/am/TaskRecord;

.field public mIntent:Landroid/content/Intent;

.field public mOptions:Landroid/os/Bundle;

.field public mOutResult:Landroid/app/IActivityManager$WaitResult;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public mRequestCode:I

.field public mResolvedType:Ljava/lang/String;

.field public mResultTo:Landroid/os/IBinder;

.field public mResultWho:Ljava/lang/String;

.field public mStartFlags:I

.field public mToken:J

.field public mUserId:I

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Landroid/app/IActivityContainer;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 421
    iput p2, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingUid:I

    .line 422
    iput-object p3, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    .line 423
    iput-object p4, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    .line 424
    iput-object p5, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResolvedType:Ljava/lang/String;

    .line 425
    iput-object p6, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 426
    iput-object p7, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 427
    iput-object p8, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResultTo:Landroid/os/IBinder;

    .line 428
    iput-object p9, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResultWho:Ljava/lang/String;

    .line 429
    iput p10, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mRequestCode:I

    .line 430
    iput p11, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mStartFlags:I

    .line 431
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 432
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mOutResult:Landroid/app/IActivityManager$WaitResult;

    .line 433
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mConfig:Landroid/content/res/Configuration;

    .line 434
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mOptions:Landroid/os/Bundle;

    .line 435
    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mUserId:I

    .line 436
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIcontainer:Landroid/app/IActivityContainer;

    .line 437
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mToken:J

    .line 439
    return-void
.end method
