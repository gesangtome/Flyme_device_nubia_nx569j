.class Lnubia/util/FrameworkDataStatisticsManager$1;
.super Ljava/lang/Object;
.source "FrameworkDataStatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/util/FrameworkDataStatisticsManager;->putToQ(Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/util/FrameworkDataStatisticsManager;

.field final synthetic val$r:Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;


# direct methods
.method constructor <init>(Lnubia/util/FrameworkDataStatisticsManager;Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$1;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    iput-object p2, p0, Lnubia/util/FrameworkDataStatisticsManager$1;->val$r:Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$1;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    # getter for: Lnubia/util/FrameworkDataStatisticsManager;->mRunnableQ:Ljava/util/LinkedList;
    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->access$200(Lnubia/util/FrameworkDataStatisticsManager;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lnubia/util/FrameworkDataStatisticsManager$1;->val$r:Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$1;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    # invokes: Lnubia/util/FrameworkDataStatisticsManager;->scheduleNextRun()V
    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->access$300(Lnubia/util/FrameworkDataStatisticsManager;)V

    .line 135
    return-void
.end method
