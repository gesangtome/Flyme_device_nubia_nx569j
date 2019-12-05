.class public Landroid/app/LongSnapClientJob;
.super Ljava/lang/Object;
.source "LongSnapClientJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LongSnapClientJob$ViewInfoNode;,
        Landroid/app/LongSnapClientJob$ClientWorkHandler;
    }
.end annotation


# static fields
.field public static final LONG_SNAP_NOTIFY_SOME_ACTIVITY_READY:I = 0x64

.field public static final LONG_SNAP_REPORT_SCROLL_OK:I = 0x68

.field public static final LONG_SNAP_REQUEST_LONGSNAP:I = 0x63

.field public static final LONG_SNAP_REQUEST_SCROLL:I = 0x67

.field public static final LONG_SNAP_REQUEST_SCROLL_OVER:I = 0x6c

.field public static final LONG_SNAP_REQUEST_SCROLL_OVER_OK:I = 0x6d

.field public static final LONG_SNAP_REQUEST_TERMINATE:I = 0x6b

.field public static final TAG:Ljava/lang/String; = "LongSnapClientJob"


# instance fields
.field private final MOVE_EVENT_COUNT:I

.field private final MOVE_EVENT_X:I

.field private final NATIVE_MSG_CHECK:I

.field private final NATIVE_MSG_FAKE_TOUCH_DOWN:I

.field private final NATIVE_MSG_FAKE_TOUCH_MOVE:I

.field private final NATIVE_MSG_FAKE_TOUCH_UP:I

.field private final NATIVE_MSG_NEXT_SNAP:I

.field private final NATIVE_MSG_PREPARE_LONGSNAP:I

.field private final NATIVE_MSG_SCROLL:I

.field private final NATIVE_MSG_SCROLL_OVER:I

.field public final NOTIFY_SERVICE_CAN_LONG_SNAP:Ljava/lang/String;

.field private final SCROLL_SCREEN_COUNT:I

.field private final SCROLL_TYPE_UP_TO_DOWN:I

.field private final SCROLL_TYPE_UP_TO_UP:I

.field private mActivityMessenger:Landroid/os/Messenger;

.field mBound:Z

.field private mCanLongSnap:Z

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/view/View;

.field private mDispHeight:I

.field private mDispWidth:I

.field private mDispatchDecorView:Z

.field private mLongsnapService:Landroid/os/Messenger;

.field private mLongsnapServiceConn:Landroid/content/ServiceConnection;

.field private mMaxStrideOffsetY:I

.field private mOutHandler:Landroid/os/Handler;

.field private mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

.field private mStrideOffsetY:I

.field private mViewNodesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LongSnapClientJob$ViewInfoNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outHandler"    # Landroid/os/Handler;
    .param p3, "decorView"    # Landroid/view/View;
    .param p4, "dispWidth"    # I
    .param p5, "dispHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/app/LongSnapClientJob$1;

    invoke-direct {v0, p0}, Landroid/app/LongSnapClientJob$1;-><init>(Landroid/app/LongSnapClientJob;)V

    iput-object v0, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    .line 456
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    .line 457
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mOutHandler:Landroid/os/Handler;

    .line 458
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    .line 459
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    .line 463
    iput-boolean v2, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    .line 464
    iput-boolean v2, p0, Landroid/app/LongSnapClientJob;->mDispatchDecorView:Z

    .line 467
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    .line 468
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    .line 471
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 473
    const/4 v0, -0x5

    iput v0, p0, Landroid/app/LongSnapClientJob;->mStrideOffsetY:I

    .line 474
    iput v2, p0, Landroid/app/LongSnapClientJob;->mMaxStrideOffsetY:I

    .line 476
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/LongSnapClientJob;->SCROLL_TYPE_UP_TO_UP:I

    .line 477
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LongSnapClientJob;->SCROLL_TYPE_UP_TO_DOWN:I

    .line 479
    const/16 v0, 0xc

    iput v0, p0, Landroid/app/LongSnapClientJob;->SCROLL_SCREEN_COUNT:I

    .line 480
    const/16 v0, 0x32

    iput v0, p0, Landroid/app/LongSnapClientJob;->MOVE_EVENT_COUNT:I

    .line 481
    const/16 v0, 0xa0

    iput v0, p0, Landroid/app/LongSnapClientJob;->MOVE_EVENT_X:I

    .line 492
    const/16 v0, 0xc8

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_PREPARE_LONGSNAP:I

    .line 493
    const/16 v0, 0xca

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_NEXT_SNAP:I

    .line 494
    const/16 v0, 0xcb

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_CHECK:I

    .line 495
    const/16 v0, 0xd2

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_FAKE_TOUCH_DOWN:I

    .line 496
    const/16 v0, 0xd3

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_FAKE_TOUCH_MOVE:I

    .line 497
    const/16 v0, 0xd4

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_FAKE_TOUCH_UP:I

    .line 499
    const/16 v0, 0xd5

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_SCROLL:I

    .line 500
    const/16 v0, 0xd6

    iput v0, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_SCROLL_OVER:I

    .line 502
    const-string v0, "canLongSnap"

    iput-object v0, p0, Landroid/app/LongSnapClientJob;->NOTIFY_SERVICE_CAN_LONG_SNAP:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Landroid/app/LongSnapClientJob;->mOutHandler:Landroid/os/Handler;

    .line 41
    iput-object p3, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    .line 42
    iput p4, p0, Landroid/app/LongSnapClientJob;->mDispWidth:I

    .line 43
    iput p5, p0, Landroid/app/LongSnapClientJob;->mDispHeight:I

    .line 44
    return-void
.end method

.method static synthetic access$002(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/LongSnapClientJob;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/LongSnapClientJob;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->sendDragEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/LongSnapClientJob;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/LongSnapClientJob;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->doCheckScrollable()V

    return-void
.end method

.method static synthetic access$700(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->sendNotifyActivityReady()V

    return-void
.end method

.method private canLongSnap()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    if-nez v2, :cond_0

    .line 160
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v2, v2, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    .line 163
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v2, v2, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v2, v2, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    goto :goto_0

    .line 166
    :cond_3
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    goto :goto_0
.end method

.method private computeVerticalScrollOffset(Landroid/view/View;)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 355
    const/4 v4, 0x0

    .line 358
    .local v4, "retval":Ljava/lang/Integer;
    :try_start_0
    const-string v6, "android.view.View"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 359
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "computeVerticalScrollOffset"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 361
    .local v2, "meth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 362
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 363
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 364
    .local v3, "retobj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    .end local v3    # "retobj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 372
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 374
    :cond_1
    return v5

    .line 367
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private computeVerticalScrollRange(Landroid/view/View;)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 378
    const/4 v4, 0x0

    .line 381
    .local v4, "retval":Ljava/lang/Integer;
    :try_start_0
    const-string v6, "android.view.View"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 382
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "computeVerticalScrollRange"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 384
    .local v2, "meth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 385
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 386
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 387
    .local v3, "retobj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    .end local v3    # "retobj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 395
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 397
    :cond_1
    return v5

    .line 390
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private doCheckScrollable()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->scanAllViews()V

    .line 154
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->findBiggestScrollView()V

    .line 155
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->canLongSnap()V

    .line 156
    return-void
.end method

.method private findBiggestScrollView()V
    .locals 5

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "node":Landroid/app/LongSnapClientJob$ViewInfoNode;
    const/4 v0, 0x0

    .line 241
    .local v0, "i":I
    const/4 v2, 0x0

    .line 243
    .local v2, "val":I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 245
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 246
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "node":Landroid/app/LongSnapClientJob$ViewInfoNode;
    check-cast v1, Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 247
    .restart local v1    # "node":Landroid/app/LongSnapClientJob$ViewInfoNode;
    iget-boolean v3, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_1

    .line 245
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v3, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 251
    iget-object v3, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int v2, v3, v4

    .line 252
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    goto :goto_1

    .line 255
    :cond_2
    return-void
.end method

.method private isVisibleToUser(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 401
    const/4 v4, 0x0

    .line 404
    .local v4, "retval":Ljava/lang/Boolean;
    :try_start_0
    const-string v6, "android.view.View"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 405
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "isVisibleToUser"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 407
    .local v2, "meth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 408
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 409
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    .local v3, "retobj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    .end local v3    # "retobj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 418
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 420
    :cond_1
    return v5

    .line 413
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private scanAllViews()V
    .locals 3

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/app/LongSnapClientJob;->traverseScanViews(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v0

    .line 178
    .local v0, "node":Landroid/app/LongSnapClientJob$ViewInfoNode;
    goto :goto_0
.end method

.method private scanView(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    new-instance v0, Landroid/app/LongSnapClientJob$ViewInfoNode;

    .end local v0    # "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/app/LongSnapClientJob$ViewInfoNode;-><init>(Landroid/app/LongSnapClientJob;Landroid/app/LongSnapClientJob$1;)V

    .line 228
    .restart local v0    # "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    iput-object p1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewId:I

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->computeVerticalScrollRange(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    iput-boolean v1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    .line 233
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    .line 235
    return-object v0

    .line 230
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scanViewGroup(Landroid/view/ViewGroup;)Landroid/app/LongSnapClientJob$ViewInfoNode;
    .locals 11
    .param p1, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 203
    .local v2, "count":I
    const/4 v0, 0x0

    .line 204
    .local v0, "child":Landroid/view/View;
    const/4 v5, 0x0

    .line 205
    .local v5, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    const/4 v4, 0x0

    .line 206
    .local v4, "tmpNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "childrenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LongSnapClientJob$ViewInfoNode;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 209
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Landroid/app/LongSnapClientJob;->traverseScanViews(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v4

    .line 211
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_0
    new-instance v5, Landroid/app/LongSnapClientJob$ViewInfoNode;

    .end local v5    # "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Landroid/app/LongSnapClientJob$ViewInfoNode;-><init>(Landroid/app/LongSnapClientJob;Landroid/app/LongSnapClientJob$1;)V

    .line 215
    .restart local v5    # "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    iput-object p1, v5, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    .line 216
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    iput v7, v5, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewId:I

    .line 217
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->computeVerticalScrollRange(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_2

    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_1
    iput-boolean v6, v5, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    .line 219
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v5, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    .line 221
    return-object v5

    .line 217
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private sendDragEvent(Landroid/os/Message;)V
    .locals 35
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 260
    .local v32, "startTime":J
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v6, :cond_1

    .line 261
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    .line 262
    .local v24, "densityScale":F
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v28, v0

    .line 263
    .local v28, "location":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v6, v6, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 264
    const/4 v6, 0x1

    aget v6, v28, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v7, v7, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v8, v6

    .line 265
    .local v8, "currentY":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 266
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 267
    .local v4, "eventTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    int-to-float v0, v6

    move/from16 v26, v0

    .line 268
    .local v26, "heightMoveOnce":F
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    div-int/lit8 v31, v6, 0x2

    .line 269
    .local v31, "moveX":I
    const/4 v6, 0x0

    move/from16 v0, v31

    int-to-float v7, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v25

    .line 271
    .local v25, "downEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 272
    const/16 v27, 0x0

    .line 273
    .local v27, "i":I
    :goto_0
    const/16 v6, 0x32

    move/from16 v0, v27

    if-ge v0, v6, :cond_0

    .line 274
    const/high16 v6, 0x40000000    # 2.0f

    div-float v26, v26, v6

    .line 275
    sub-float v8, v8, v26

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x2

    move/from16 v0, v31

    int-to-float v15, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v10, v2

    move/from16 v16, v8

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v30

    .line 280
    .local v30, "moveEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 281
    add-int/lit8 v27, v27, 0x1

    .line 282
    goto :goto_0

    .line 284
    .end local v30    # "moveEvent":Landroid/view/MotionEvent;
    :cond_0
    sub-float v8, v8, v26

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x2

    move/from16 v0, v31

    int-to-float v15, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v10, v2

    move/from16 v16, v8

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v29

    .line 289
    .local v29, "move":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 292
    const/4 v6, 0x1

    move/from16 v0, v31

    int-to-float v7, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v34

    .line 295
    .local v34, "upEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 298
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v8    # "currentY":F
    .end local v24    # "densityScale":F
    .end local v25    # "downEvent":Landroid/view/MotionEvent;
    .end local v26    # "heightMoveOnce":F
    .end local v27    # "i":I
    .end local v28    # "location":[I
    .end local v29    # "move":Landroid/view/MotionEvent;
    .end local v31    # "moveX":I
    .end local v34    # "upEvent":Landroid/view/MotionEvent;
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/app/LongSnapClientJob;->sendNotifyScrollFinish()V

    .line 299
    return-void
.end method

.method private sendNotifyActivityReady()V
    .locals 4

    .prologue
    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "canLongSnap"

    iget-boolean v3, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 427
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 429
    :try_start_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private sendNotifyScrollFinish()V
    .locals 4

    .prologue
    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "canLongSnap"

    iget-boolean v3, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const/4 v2, 0x0

    const/16 v3, 0x68

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 439
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 441
    :try_start_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private traverseScanViews(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 187
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->scanViewGroup(Landroid/view/ViewGroup;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v0

    .line 194
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    return-object v0

    .line 190
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->scanView(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Intent;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-string v3, "cn.nubia.supersnap.service.bindLongSnapService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.supersnap"

    const-string v4, "cn.nubia.supersnap.service.TakeScreenShotService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 52
    .local v2, "user":Landroid/os/UserHandle;
    if-eqz v2, :cond_0

    .line 53
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public sendDragEventOver(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    move/from16 v24, v0

    .line 303
    .local v24, "densityScale":F
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v6, v6, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v7, v7, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float v8, v6, v7

    .line 304
    .local v8, "currentY":F
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 306
    .local v4, "eventTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    int-to-float v0, v6

    move/from16 v26, v0

    .line 307
    .local v26, "heightMoveOnce":F
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    div-int/lit8 v29, v6, 0x2

    .line 308
    .local v29, "moveX":I
    const/4 v6, 0x0

    move/from16 v0, v29

    int-to-float v7, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v25

    .line 310
    .local v25, "downEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v6, :cond_1

    .line 311
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v6, v6, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 316
    :goto_1
    const/16 v27, 0x0

    .line 317
    .local v27, "i":I
    :goto_2
    const/16 v6, 0x32

    move/from16 v0, v27

    if-ge v0, v6, :cond_3

    .line 318
    const/high16 v6, 0x40000000    # 2.0f

    div-float v26, v26, v6

    .line 319
    add-float v8, v8, v26

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x2

    move/from16 v0, v29

    int-to-float v15, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v10, v2

    move/from16 v16, v8

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v28

    .line 323
    .local v28, "moveEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v6, :cond_2

    .line 324
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v6, v6, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 328
    :goto_3
    add-int/lit8 v27, v27, 0x1

    .line 329
    goto :goto_2

    .line 303
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v8    # "currentY":F
    .end local v25    # "downEvent":Landroid/view/MotionEvent;
    .end local v26    # "heightMoveOnce":F
    .end local v27    # "i":I
    .end local v28    # "moveEvent":Landroid/view/MotionEvent;
    .end local v29    # "moveX":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v8, v6

    goto/16 :goto_0

    .line 313
    .restart local v2    # "downTime":J
    .restart local v4    # "eventTime":J
    .restart local v8    # "currentY":F
    .restart local v25    # "downEvent":Landroid/view/MotionEvent;
    .restart local v26    # "heightMoveOnce":F
    .restart local v29    # "moveX":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 326
    .restart local v27    # "i":I
    .restart local v28    # "moveEvent":Landroid/view/MotionEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 331
    .end local v28    # "moveEvent":Landroid/view/MotionEvent;
    :cond_3
    add-float v8, v8, v26

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x2

    move/from16 v0, v29

    int-to-float v15, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v10, v2

    move/from16 v16, v8

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v28

    .line 335
    .restart local v28    # "moveEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v6, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v6, v6, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    :goto_4
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 342
    const/4 v6, 0x1

    move/from16 v0, v29

    int-to-float v7, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v30

    .line 345
    .local v30, "upEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v6, :cond_6

    .line 346
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v6, v6, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 351
    .end local v30    # "upEvent":Landroid/view/MotionEvent;
    :cond_4
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/app/LongSnapClientJob;->sendNotifyScrollFinish()V

    .line 352
    return-void

    .line 338
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 348
    .restart local v30    # "upEvent":Landroid/view/MotionEvent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5
.end method
