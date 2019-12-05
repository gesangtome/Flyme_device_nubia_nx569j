.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EndAnimListener.java"


# instance fields
.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V
    .locals 0
    .param p1, "animParam"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 11
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onAnimationEnd()V

    .line 16
    return-void
.end method
