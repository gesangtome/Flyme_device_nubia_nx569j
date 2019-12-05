.class Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
.super Landroid/database/ContentObserver;
.source "NubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeSideContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .line 1138
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1139
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1142
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1143
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1146
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I
    invoke-static {v1, v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$802(Lcom/android/server/display/NubiaOverlayDisplayWindow;I)I

    .line 1148
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 1157
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1161
    .local v0, "currentMode":I
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I
    invoke-static {v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 1166
    .local v1, "marginWidth":F
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mAdjustScreen:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    .line 1168
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSide()V
    invoke-static {v2}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    .line 1170
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # setter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLastMode:I
    invoke-static {v2, v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$802(Lcom/android/server/display/NubiaOverlayDisplayWindow;I)I

    goto :goto_0
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/NubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1152
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1153
    return-void
.end method
