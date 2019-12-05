.class public Lcom/android/server/display/OnDoubleClickListener;
.super Ljava/lang/Object;
.source "OnDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;

.field private mClickcount:I

.field private mFirClick:J

.field private final mInterval:I

.field private mSecClick:J


# direct methods
.method public constructor <init>(Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    .line 9
    iput-wide v2, p0, Lcom/android/server/display/OnDoubleClickListener;->mFirClick:J

    .line 10
    iput-wide v2, p0, Lcom/android/server/display/OnDoubleClickListener;->mSecClick:J

    .line 13
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mInterval:I

    .line 22
    iput-object p1, p0, Lcom/android/server/display/OnDoubleClickListener;->mCallback:Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 28
    iget v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    .line 29
    iget v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    if-ne v4, v0, :cond_1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mFirClick:J

    .line 48
    :cond_0
    :goto_0
    return v4

    .line 31
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    if-ne v0, v1, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mSecClick:J

    .line 33
    iget-wide v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mSecClick:J

    iget-wide v2, p0, Lcom/android/server/display/OnDoubleClickListener;->mFirClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mCallback:Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mCallback:Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;

    invoke-interface {v0}, Lcom/android/server/display/OnDoubleClickListener$DoubleClickCallback;->onDoubleClick()V

    .line 37
    :cond_2
    iput v5, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    .line 38
    iput-wide v6, p0, Lcom/android/server/display/OnDoubleClickListener;->mFirClick:J

    .line 43
    :goto_1
    iput-wide v6, p0, Lcom/android/server/display/OnDoubleClickListener;->mSecClick:J

    goto :goto_0

    .line 40
    :cond_3
    iget-wide v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mSecClick:J

    iput-wide v0, p0, Lcom/android/server/display/OnDoubleClickListener;->mFirClick:J

    .line 41
    iput v4, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    goto :goto_1

    .line 45
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 46
    iput v5, p0, Lcom/android/server/display/OnDoubleClickListener;->mClickcount:I

    goto :goto_0
.end method
