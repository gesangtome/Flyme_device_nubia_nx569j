.class Lcn/nubia/server/notification/NubiaZenModeHelper$4;
.super Ljava/lang/Object;
.source "NubiaZenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/notification/NubiaZenModeHelper;->setLastDownTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/notification/NubiaZenModeHelper;


# direct methods
.method constructor <init>(Lcn/nubia/server/notification/NubiaZenModeHelper;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper$4;->this$0:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper$4;->this$0:Lcn/nubia/server/notification/NubiaZenModeHelper;

    # getter for: Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->access$000(Lcn/nubia/server/notification/NubiaZenModeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_down_time"

    sget-wide v2, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 151
    return-void
.end method
