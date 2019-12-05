.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;
.super Ljava/lang/Object;
.source "AnimStateChecker.java"


# static fields
.field static final ANIM_DOUBLE_SUCCESS_STATE:I = 0x9

.field static final ANIM_GUIDE_CANCEL_STATE:I = 0x2

.field static final ANIM_GUIDE_START_STATE:I = 0x1

.field static final ANIM_INIT_STATE:I = 0x0

.field static final ANIM_INNER_SUCCESS_STATE:I = 0x8

.field static final ANIM_LOOP_SUCCESS_STATE:I = 0x7

.field static final ANIM_SINGLE_FAIL_STATE:I = 0x6

.field static final ANIM_SINGLE_PRE_STATE:I = 0x3

.field static final ANIM_SINGLE_SUCCESS_STATE:I = 0x5

.field static final ANIM_SINGLE_UPDATE_STATE:I = 0x4


# instance fields
.field private mAnimState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    .line 19
    return-void
.end method

.method private checkGuideCancelStateTransition()V
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGuideCancelStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method private checkGuideStartStateTransition()V
    .locals 3

    .prologue
    .line 55
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGuideStartStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method private checkOtherStateTransition(I)V
    .locals 3
    .param p1, "animState"    # I

    .prologue
    .line 79
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOtherStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method private checkSingleStartStateTransition()V
    .locals 3

    .prologue
    .line 67
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSingleStartStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private checkSingleUpdateStateTransition()V
    .locals 3

    .prologue
    .line 73
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSingleUpdateStateTransition error! previous State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method private checkStateTransition(I)V
    .locals 0
    .param p1, "animState"    # I

    .prologue
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkGuideStartStateTransition()V

    goto :goto_0

    .line 33
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkGuideCancelStateTransition()V

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkSingleStartStateTransition()V

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkSingleUpdateStateTransition()V

    goto :goto_0

    .line 49
    :pswitch_4
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->checkOtherStateTransition(I)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method setAnimState(I)V
    .locals 0
    .param p1, "animState"    # I

    .prologue
    .line 87
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimStateChecker;->mAnimState:I

    .line 88
    return-void
.end method

.method validate(I)V
    .locals 0
    .param p1, "animState"    # I

    .prologue
    .line 24
    return-void
.end method
