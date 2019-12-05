.class Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/GestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/GestureSettings;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 223
    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 224
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 225
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 228
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    iget-object v4, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/edge/GestureSettings;->access$300(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nubia_edge_enable_czone"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    :cond_0
    sget-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 234
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/policy/edge/GestureSettings;->access$300(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;
    invoke-static {}, Lcn/nubia/server/policy/edge/GestureSettings;->access$400()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 241
    const-string v6, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcn/nubia/server/policy/edge/GestureSettings;->access$300(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nubia_edge_enable_czone"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 243
    .local v1, "enableCZone":I
    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I
    invoke-static {v6}, Lcn/nubia/server/policy/edge/GestureSettings;->access$500(Lcn/nubia/server/policy/edge/GestureSettings;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I
    invoke-static {v6}, Lcn/nubia/server/policy/edge/GestureSettings;->access$500(Lcn/nubia/server/policy/edge/GestureSettings;)I

    move-result v6

    if-eq v1, v6, :cond_0

    .line 244
    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # invokes: Lcn/nubia/server/policy/edge/GestureSettings;->updateEdgeTpState()V
    invoke-static {v6}, Lcn/nubia/server/policy/edge/GestureSettings;->access$200(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 257
    .end local v1    # "enableCZone":I
    :cond_0
    return-void

    .line 248
    :cond_1
    const-string v6, "GestureSettings"

    const-string v7, "content change, onChange callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # invokes: Lcn/nubia/server/policy/edge/GestureSettings;->getValue(Landroid/net/Uri;)V
    invoke-static {v6, p2}, Lcn/nubia/server/policy/edge/GestureSettings;->access$600(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/net/Uri;)V

    .line 250
    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # invokes: Lcn/nubia/server/policy/edge/GestureSettings;->updateEdgeTpState()V
    invoke-static {v6}, Lcn/nubia/server/policy/edge/GestureSettings;->access$200(Lcn/nubia/server/policy/edge/GestureSettings;)V

    .line 252
    sget-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 253
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->this$0:Lcn/nubia/server/policy/edge/GestureSettings;

    # getter for: Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;
    invoke-static {v6}, Lcn/nubia/server/policy/edge/GestureSettings;->access$700(Lcn/nubia/server/policy/edge/GestureSettings;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 254
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 255
    const-string v6, "GestureSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
