.class Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;
.super Landroid/database/ContentObserver;
.source "NubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickBackContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .line 1177
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1178
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1182
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "single_ui_setting_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1185
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1194
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_setting_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "status":Ljava/lang/String;
    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->exitSettingStatus()V
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1199
    :cond_0
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ClickBackContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1189
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1190
    return-void
.end method
