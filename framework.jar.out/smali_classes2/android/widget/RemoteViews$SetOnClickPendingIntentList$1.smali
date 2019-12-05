.class Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickPendingIntentList;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 806
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntentList;

    iget-object v4, v4, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 807
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 808
    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 809
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 810
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 811
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, p1, v2, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_0

    .line 814
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method
