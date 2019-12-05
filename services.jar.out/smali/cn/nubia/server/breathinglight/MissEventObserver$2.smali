.class Lcn/nubia/server/breathinglight/MissEventObserver$2;
.super Landroid/database/ContentObserver;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/MissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/MissEventObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$2;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    # getter for: Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;
    invoke-static {}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$300()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$2;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Lcn/nubia/server/breathinglight/MissEventObserver$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :cond_0
    return-void
.end method
