.class Lcn/nubia/server/notification/NubiaZenModeHelper$2;
.super Ljava/lang/Object;
.source "NubiaZenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/notification/NubiaZenModeHelper;->saveLastExitCondition()V
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
    .line 121
    iput-object p1, p0, Lcn/nubia/server/notification/NubiaZenModeHelper$2;->this$0:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/server/notification/NubiaZenModeHelper$2;->this$0:Lcn/nubia/server/notification/NubiaZenModeHelper;

    # getter for: Lcn/nubia/server/notification/NubiaZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->access$000(Lcn/nubia/server/notification/NubiaZenModeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_exit_condition"

    iget-object v2, p0, Lcn/nubia/server/notification/NubiaZenModeHelper$2;->this$0:Lcn/nubia/server/notification/NubiaZenModeHelper;

    # getter for: Lcn/nubia/server/notification/NubiaZenModeHelper;->mLastExitCondition:I
    invoke-static {v2}, Lcn/nubia/server/notification/NubiaZenModeHelper;->access$300(Lcn/nubia/server/notification/NubiaZenModeHelper;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    return-void
.end method
