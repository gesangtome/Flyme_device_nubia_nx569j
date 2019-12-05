.class public Lcom/android/server/display/SingleUIRectNotifyer;
.super Ljava/lang/Object;
.source "SingleUIRectNotifyer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SingleHand"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyInputDispatcherSingleUICapture(Z)V
    .locals 21
    .param p0, "capture"    # Z

    .prologue
    .line 79
    const/4 v2, 0x1

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 80
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 81
    const/4 v2, 0x1

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 82
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 83
    if-eqz p0, :cond_1

    const/16 v16, -0x2

    .line 84
    .local v16, "action":I
    :goto_0
    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v17, -0x1

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 102
    .local v19, "newEvent":Landroid/view/MotionEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v20

    .line 104
    .local v20, "result":Z
    if-nez v20, :cond_0

    .line 105
    const-string v2, "SingleHand"

    const-string v3, "single ui inject event failed ! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v20    # "result":Z
    :cond_0
    :goto_1
    return-void

    .line 83
    .end local v16    # "action":I
    .end local v19    # "newEvent":Landroid/view/MotionEvent;
    :cond_1
    const/16 v16, -0x3

    goto :goto_0

    .line 107
    .restart local v16    # "action":I
    .restart local v19    # "newEvent":Landroid/view/MotionEvent;
    :catch_0
    move-exception v18

    .line 108
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 21
    .param p0, "rectMapping"    # Landroid/graphics/Rect;
    .param p1, "rectClip"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 17
    const/4 v7, 0x6

    .line 18
    .local v7, "pointerCount":I
    new-array v9, v7, [Landroid/view/MotionEvent$PointerCoords;

    .line 19
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 20
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 21
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 22
    const/4 v2, 0x1

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 23
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 24
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 25
    const/4 v2, 0x2

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 26
    const/4 v2, 0x2

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 27
    const/4 v2, 0x2

    aget-object v2, v9, v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 28
    const/4 v2, 0x3

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 29
    const/4 v2, 0x3

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 30
    const/4 v2, 0x3

    aget-object v2, v9, v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 31
    const/4 v2, 0x4

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 32
    const/4 v2, 0x4

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 33
    const/4 v2, 0x4

    aget-object v2, v9, v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 34
    const/4 v2, 0x5

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 35
    const/4 v2, 0x5

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 36
    const/4 v2, 0x5

    aget-object v2, v9, v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 37
    new-array v8, v7, [Landroid/view/MotionEvent$PointerProperties;

    .line 38
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 39
    const/4 v2, 0x1

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 40
    const/4 v2, 0x2

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 41
    const/4 v2, 0x3

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 42
    const/4 v2, 0x4

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 43
    const/4 v2, 0x5

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 44
    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 62
    .local v19, "newEvent":Landroid/view/MotionEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v20

    .line 64
    .local v20, "result":Z
    if-nez v20, :cond_0

    .line 65
    const-string v2, "SingleHand"

    const-string v3, "single ui inject event failed ! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v20    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v18

    .line 68
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
