.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;
.super Ljava/lang/Object;
.source "PointFlip.java"


# static fields
.field public static final NUM:I = 0x6

.field public static final SIDE_B:I = 0x2

.field public static final SIDE_L:I = 0x3

.field public static final SIDE_R:I = 0x1

.field public static final SIDE_T:I = 0x0

.field public static final STATE_FLIP:I = -0x1

.field public static final STATE_FLIP_LINE:I = 0x0

.field public static final STATE_STATIC:I = 0x1


# instance fields
.field private final CORNER_LB:I

.field private final CORNER_LT:I

.field private final CORNER_RB:I

.field private final CORNER_RT:I

.field private mIsAllFlip:Z

.field private final mState:[I

.field public final mTexCoor:[Landroid/graphics/PointF;

.field public final mVertex:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_LT:I

    .line 21
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_RT:I

    .line 23
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_RB:I

    .line 25
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->CORNER_LB:I

    .line 37
    new-array v1, v3, [I

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    .line 38
    new-array v1, v3, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 41
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-array v1, v3, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    .line 46
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 47
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method

.method private set(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v2, v5

    .line 139
    .local v2, "width":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v0, v5

    .line 141
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x3

    if-gt v1, v5, :cond_0

    .line 142
    packed-switch v1, :pswitch_data_0

    .line 164
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    .line 165
    .local v3, "x":F
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    .line 169
    .local v4, "y":F
    :goto_1
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aput p2, v5, v1

    .line 170
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v5, v5, v1

    iput v3, v5, Landroid/graphics/PointF;->x:F

    .line 171
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v5, v5, v1

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 172
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    div-float v3, v5, v2

    .line 173
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v5, v4, v5

    div-float v4, v5, v0

    .line 174
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v5, v5, v1

    iput v3, v5, Landroid/graphics/PointF;->x:F

    .line 175
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v5, v5, v1

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    .line 145
    .restart local v3    # "x":F
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    .line 146
    .restart local v4    # "y":F
    goto :goto_1

    .line 149
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v5

    .line 150
    .restart local v3    # "x":F
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    .line 151
    .restart local v4    # "y":F
    goto :goto_1

    .line 154
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v5

    .line 155
    .restart local v3    # "x":F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v5

    .line 156
    .restart local v4    # "y":F
    goto :goto_1

    .line 159
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_3
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    .line 160
    .restart local v3    # "x":F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v5

    .line 161
    .restart local v4    # "y":F
    goto :goto_1

    .line 177
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getIndex(I[I)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "index"    # [I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 190
    iget-boolean v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mIsAllFlip:Z

    if-ne v7, v6, :cond_1

    const/4 v6, -0x1

    if-ne v6, p1, :cond_1

    .line 191
    aput v5, p2, v5

    .line 192
    aput v7, p2, v7

    .line 193
    aput v8, p2, v8

    .line 194
    aput v9, p2, v9

    .line 195
    const/4 v3, 0x4

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 198
    :cond_1
    const/4 v3, 0x0

    .line 199
    .local v3, "j":I
    const/4 v0, 0x0

    .line 201
    .local v0, "counter":I
    if-nez p1, :cond_2

    move v3, v5

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v5, v6, v5

    if-ne p1, v5, :cond_4

    .line 206
    const/4 v1, 0x2

    .line 211
    .local v1, "counterEx":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v5, 0xc

    if-ge v2, v5, :cond_0

    .line 212
    rem-int/lit8 v4, v2, 0x6

    .line 214
    .local v4, "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v5, v5, v4

    if-nez v5, :cond_5

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 217
    if-gt v0, v1, :cond_0

    .line 211
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    .end local v1    # "counterEx":I
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "counterEx":I
    goto :goto_1

    .line 224
    .restart local v2    # "i":I
    .restart local v4    # "n":I
    :cond_5
    if-ne v0, v1, :cond_3

    .line 225
    aput v4, p2, v3

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public getRegionIndex(I[I)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "index"    # [I

    .prologue
    const/4 v5, 0x0

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "j":I
    const/4 v0, 0x0

    .line 242
    .local v0, "counter":I
    if-nez p1, :cond_0

    .line 269
    :goto_0
    return v5

    .line 246
    :cond_0
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v5, v6, v5

    if-ne p1, v5, :cond_4

    .line 247
    const/4 v1, 0x2

    .line 252
    .local v1, "counterEx":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v5, 0xc

    if-ge v2, v5, :cond_3

    .line 253
    rem-int/lit8 v4, v2, 0x6

    .line 255
    .local v4, "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v5, v5, v4

    if-nez v5, :cond_1

    .line 256
    add-int/lit8 v0, v0, 0x1

    .line 259
    :cond_1
    if-lt v0, v1, :cond_2

    .line 260
    aput v4, p2, v3

    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 264
    :cond_2
    if-le v0, v1, :cond_5

    .end local v4    # "n":I
    :cond_3
    move v5, v3

    .line 269
    goto :goto_0

    .line 249
    .end local v1    # "counterEx":I
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "counterEx":I
    goto :goto_1

    .line 252
    .restart local v2    # "i":I
    .restart local v4    # "n":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public set(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;[I)V
    .locals 15
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p3, "basePoint"    # Landroid/graphics/PointF;
    .param p4, "side"    # [I

    .prologue
    .line 56
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mIsAllFlip:Z

    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "j":I
    const/4 v5, 0x0

    .line 60
    .local v5, "k":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v7, v10

    .line 61
    .local v7, "width":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v1, v10

    .line 63
    .local v1, "height":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x3

    if-gt v2, v10, :cond_2

    .line 64
    packed-switch v2, :pswitch_data_0

    .line 86
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v10

    .line 87
    .local v8, "x":F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v10

    .line 91
    .local v9, "y":F
    :goto_1
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    const/4 v11, 0x1

    aput v11, v10, v4

    .line 92
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    iput v8, v10, Landroid/graphics/PointF;->x:F

    .line 93
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    iput v9, v10, Landroid/graphics/PointF;->y:F

    .line 94
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, v8, v10

    div-float v8, v10, v7

    .line 95
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float v10, v9, v10

    div-float v9, v10, v1

    .line 96
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    iput v8, v10, Landroid/graphics/PointF;->x:F

    .line 97
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    iput v9, v10, Landroid/graphics/PointF;->y:F

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 100
    const/4 v10, 0x0

    aget v10, p4, v10

    const/4 v11, 0x1

    aget v11, p4, v11

    if-ge v10, v11, :cond_1

    .line 101
    move v6, v5

    .line 106
    .local v6, "n":I
    :goto_2
    const/4 v10, 0x2

    if-ge v5, v10, :cond_0

    aget v10, p4, v6

    if-ne v2, v10, :cond_0

    .line 107
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    const/4 v11, 0x0

    aput v11, v10, v4

    .line 108
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    move-object/from16 v0, p2

    iget-object v11, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v11, v11, v6

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 109
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    move-object/from16 v0, p2

    iget-object v11, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v11, v11, v6

    iput v11, v10, Landroid/graphics/PointF;->y:F

    .line 110
    move-object/from16 v0, p2

    iget-object v10, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v10, v10, v6

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    div-float v8, v10, v7

    .line 111
    move-object/from16 v0, p2

    iget-object v10, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v10, v10, v6

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    div-float v9, v10, v1

    .line 112
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    iput v8, v10, Landroid/graphics/PointF;->x:F

    .line 113
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget-object v10, v10, v4

    iput v9, v10, Landroid/graphics/PointF;->y:F

    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 66
    .end local v6    # "n":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v10

    .line 67
    .restart local v8    # "x":F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v10

    .line 68
    .restart local v9    # "y":F
    goto/16 :goto_1

    .line 71
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v10

    .line 72
    .restart local v8    # "x":F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v10

    .line 73
    .restart local v9    # "y":F
    goto/16 :goto_1

    .line 76
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v10

    .line 77
    .restart local v8    # "x":F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v10

    .line 78
    .restart local v9    # "y":F
    goto/16 :goto_1

    .line 81
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v10

    .line 82
    .restart local v8    # "x":F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v10

    .line 83
    .restart local v9    # "y":F
    goto/16 :goto_1

    .line 103
    :cond_1
    add-int/lit8 v10, v5, 0x1

    rem-int/lit8 v6, v10, 0x2

    .restart local v6    # "n":I
    goto/16 :goto_2

    .line 119
    .end local v6    # "n":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_2
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->isSameSide(FFFF)Z

    move-result v3

    .line 121
    .local v3, "isSameSide":Z
    const/4 v2, 0x0

    :goto_3
    const/4 v10, 0x6

    if-ge v2, v10, :cond_6

    .line 122
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    aget v10, v10, v2

    if-nez v10, :cond_5

    .line 123
    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 121
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 123
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 127
    :cond_5
    if-eqz v3, :cond_3

    .line 128
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mState:[I

    const/4 v11, -0x1

    aput v11, v10, v2

    goto :goto_4

    .line 131
    :cond_6
    return-void

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAllFlip(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mIsAllFlip:Z

    .line 181
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->set(Landroid/graphics/Rect;I)V

    .line 182
    return-void
.end method
