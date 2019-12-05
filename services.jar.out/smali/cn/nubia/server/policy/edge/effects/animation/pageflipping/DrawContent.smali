.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
.super Ljava/lang/Object;
.source "DrawContent.java"


# instance fields
.field public final mIconList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

.field public final mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;"
        }
    .end annotation
.end field

.field public final mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;


# direct methods
.method public constructor <init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V
    .locals 0
    .param p1, "iconList"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    .param p3, "staggerPage"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mIconList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .line 12
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mPageList:Ljava/util/List;

    .line 13
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .line 14
    return-void
.end method
