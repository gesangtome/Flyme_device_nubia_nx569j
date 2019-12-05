.class Lnubia/util/FrameworkDataStatisticsManager$2;
.super Ljava/lang/Object;
.source "FrameworkDataStatisticsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/FrameworkDataStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/util/FrameworkDataStatisticsManager;


# direct methods
.method constructor <init>(Lnubia/util/FrameworkDataStatisticsManager;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lnubia/util/FrameworkDataStatisticsManager$2;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 177
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$2;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    invoke-static {p2}, Lnubia/util/IFrameworkDataStatisticsService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/util/IFrameworkDataStatisticsService;

    move-result-object v1

    # setter for: Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;
    invoke-static {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->access$402(Lnubia/util/FrameworkDataStatisticsManager;Lnubia/util/IFrameworkDataStatisticsService;)Lnubia/util/IFrameworkDataStatisticsService;

    .line 179
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$2;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    # invokes: Lnubia/util/FrameworkDataStatisticsManager;->scheduleNextRun()V
    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->access$300(Lnubia/util/FrameworkDataStatisticsManager;)V

    .line 180
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    iget-object v0, p0, Lnubia/util/FrameworkDataStatisticsManager$2;->this$0:Lnubia/util/FrameworkDataStatisticsManager;

    const/4 v1, 0x0

    # setter for: Lnubia/util/FrameworkDataStatisticsManager;->mRemoteService:Lnubia/util/IFrameworkDataStatisticsService;
    invoke-static {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->access$402(Lnubia/util/FrameworkDataStatisticsManager;Lnubia/util/IFrameworkDataStatisticsService;)Lnubia/util/IFrameworkDataStatisticsService;

    .line 173
    return-void
.end method
