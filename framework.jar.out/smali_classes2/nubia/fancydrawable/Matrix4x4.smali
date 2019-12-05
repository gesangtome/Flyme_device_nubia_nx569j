.class public Lnubia/fancydrawable/Matrix4x4;
.super Ljava/lang/Object;
.source "Matrix4x4.java"


# instance fields
.field private final NUM:I

.field private mValue:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lnubia/fancydrawable/Matrix4x4;->NUM:I

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    .line 11
    invoke-virtual {p0}, Lnubia/fancydrawable/Matrix4x4;->identity()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lnubia/fancydrawable/Matrix4x4;)V
    .locals 3
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .prologue
    const/16 v2, 0x10

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v2, p0, Lnubia/fancydrawable/Matrix4x4;->NUM:I

    .line 8
    new-array v1, v2, [F

    iput-object v1, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    .line 16
    if-eqz p1, :cond_0

    .line 17
    new-array v0, v2, [F

    .line 19
    .local v0, "value":[F
    invoke-virtual {p1, v0}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 20
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 25
    .end local v0    # "value":[F
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/Matrix4x4;->identity()V

    goto :goto_0
.end method

.method private operate([F[F[F)V
    .locals 9
    .param p1, "value"    # [F
    .param p2, "valueA"    # [F
    .param p3, "valueB"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 462
    aget v0, p2, v4

    aget v1, p3, v4

    mul-float/2addr v0, v1

    aget v1, p2, v5

    aget v2, p3, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v7

    const/16 v2, 0xc

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v4

    .line 464
    aget v0, p2, v4

    aget v1, p3, v5

    mul-float/2addr v0, v1

    aget v1, p2, v5

    const/4 v2, 0x5

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/16 v2, 0x9

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v7

    const/16 v2, 0xd

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v5

    .line 466
    aget v0, p2, v4

    aget v1, p3, v6

    mul-float/2addr v0, v1

    aget v1, p2, v5

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/16 v2, 0xa

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v7

    const/16 v2, 0xe

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v6

    .line 468
    aget v0, p2, v4

    aget v1, p3, v7

    mul-float/2addr v0, v1

    aget v1, p2, v5

    const/4 v2, 0x7

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/16 v2, 0xb

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v7

    const/16 v2, 0xf

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v7

    .line 471
    aget v0, p2, v8

    aget v1, p3, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p2, v1

    aget v2, p3, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p2, v1

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p2, v1

    const/16 v2, 0xc

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v8

    .line 473
    const/4 v0, 0x5

    aget v1, p2, v8

    aget v2, p3, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 475
    const/4 v0, 0x6

    aget v1, p2, v8

    aget v2, p3, v6

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 477
    const/4 v0, 0x7

    aget v1, p2, v8

    aget v2, p3, v7

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 480
    const/16 v0, 0x8

    const/16 v1, 0x8

    aget v1, p2, v1

    aget v2, p3, v4

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    aget v3, p3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xc

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 482
    const/16 v0, 0x9

    const/16 v1, 0x8

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 484
    const/16 v0, 0xa

    const/16 v1, 0x8

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 486
    const/16 v0, 0xb

    const/16 v1, 0x8

    aget v1, p2, v1

    aget v2, p3, v7

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 489
    const/16 v0, 0xc

    const/16 v1, 0xc

    aget v1, p2, v1

    aget v2, p3, v4

    mul-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    aget v3, p3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xc

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 491
    const/16 v0, 0xd

    const/16 v1, 0xc

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 493
    const/16 v0, 0xe

    const/16 v1, 0xc

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 495
    const/16 v0, 0xf

    const/16 v1, 0xc

    aget v1, p2, v1

    aget v2, p3, v7

    mul-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 497
    return-void
.end method

.method private rotateX(F)Lnubia/fancydrawable/Matrix4x4;
    .locals 12
    .param p1, "degree"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 304
    const/16 v5, 0x10

    new-array v4, v5, [F

    .line 305
    .local v4, "value":[F
    new-instance v2, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v2}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 307
    .local v2, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 308
    .local v0, "angle":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 309
    .local v3, "sina":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 311
    .local v1, "cosa":F
    const/4 v5, 0x0

    aput v11, v4, v5

    .line 312
    const/4 v5, 0x1

    aput v10, v4, v5

    .line 313
    const/4 v5, 0x2

    aput v10, v4, v5

    .line 314
    const/4 v5, 0x3

    aput v10, v4, v5

    .line 316
    const/4 v5, 0x4

    aput v10, v4, v5

    .line 317
    const/4 v5, 0x5

    aput v1, v4, v5

    .line 318
    const/4 v5, 0x6

    neg-float v6, v3

    aput v6, v4, v5

    .line 319
    const/4 v5, 0x7

    aput v10, v4, v5

    .line 321
    const/16 v5, 0x8

    aput v10, v4, v5

    .line 322
    const/16 v5, 0x9

    aput v3, v4, v5

    .line 323
    const/16 v5, 0xa

    aput v1, v4, v5

    .line 324
    const/16 v5, 0xb

    aput v10, v4, v5

    .line 326
    const/16 v5, 0xc

    aput v10, v4, v5

    .line 327
    const/16 v5, 0xd

    aput v10, v4, v5

    .line 328
    const/16 v5, 0xe

    aput v10, v4, v5

    .line 329
    const/16 v5, 0xf

    aput v11, v4, v5

    .line 331
    invoke-virtual {v2, v4}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 332
    return-object v2
.end method

.method private rotateY(F)Lnubia/fancydrawable/Matrix4x4;
    .locals 12
    .param p1, "degree"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 339
    const/16 v5, 0x10

    new-array v4, v5, [F

    .line 340
    .local v4, "value":[F
    new-instance v2, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v2}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 342
    .local v2, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 343
    .local v0, "angle":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 344
    .local v3, "sina":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 346
    .local v1, "cosa":F
    const/4 v5, 0x0

    aput v1, v4, v5

    .line 347
    const/4 v5, 0x1

    aput v10, v4, v5

    .line 348
    const/4 v5, 0x2

    aput v3, v4, v5

    .line 349
    const/4 v5, 0x3

    aput v10, v4, v5

    .line 351
    const/4 v5, 0x4

    aput v10, v4, v5

    .line 352
    const/4 v5, 0x5

    aput v11, v4, v5

    .line 353
    const/4 v5, 0x6

    aput v10, v4, v5

    .line 354
    const/4 v5, 0x7

    aput v10, v4, v5

    .line 356
    const/16 v5, 0x8

    neg-float v6, v3

    aput v6, v4, v5

    .line 357
    const/16 v5, 0x9

    aput v10, v4, v5

    .line 358
    const/16 v5, 0xa

    aput v1, v4, v5

    .line 359
    const/16 v5, 0xb

    aput v10, v4, v5

    .line 361
    const/16 v5, 0xc

    aput v10, v4, v5

    .line 362
    const/16 v5, 0xd

    aput v10, v4, v5

    .line 363
    const/16 v5, 0xe

    aput v10, v4, v5

    .line 364
    const/16 v5, 0xf

    aput v11, v4, v5

    .line 366
    invoke-virtual {v2, v4}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 367
    return-object v2
.end method

.method private rotateZ(F)Lnubia/fancydrawable/Matrix4x4;
    .locals 12
    .param p1, "degree"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 374
    const/16 v5, 0x10

    new-array v4, v5, [F

    .line 375
    .local v4, "value":[F
    new-instance v2, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v2}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 377
    .local v2, "matrix":Lnubia/fancydrawable/Matrix4x4;
    float-to-double v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 378
    .local v0, "angle":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 379
    .local v3, "sina":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 381
    .local v1, "cosa":F
    const/4 v5, 0x0

    aput v1, v4, v5

    .line 382
    const/4 v5, 0x1

    neg-float v6, v3

    aput v6, v4, v5

    .line 383
    const/4 v5, 0x2

    aput v10, v4, v5

    .line 384
    const/4 v5, 0x3

    aput v10, v4, v5

    .line 386
    const/4 v5, 0x4

    aput v3, v4, v5

    .line 387
    const/4 v5, 0x5

    aput v1, v4, v5

    .line 388
    const/4 v5, 0x6

    aput v10, v4, v5

    .line 389
    const/4 v5, 0x7

    aput v10, v4, v5

    .line 391
    const/16 v5, 0x8

    aput v10, v4, v5

    .line 392
    const/16 v5, 0x9

    aput v10, v4, v5

    .line 393
    const/16 v5, 0xa

    aput v11, v4, v5

    .line 394
    const/16 v5, 0xb

    aput v10, v4, v5

    .line 396
    const/16 v5, 0xc

    aput v10, v4, v5

    .line 397
    const/16 v5, 0xd

    aput v10, v4, v5

    .line 398
    const/16 v5, 0xe

    aput v10, v4, v5

    .line 399
    const/16 v5, 0xf

    aput v11, v4, v5

    .line 401
    invoke-virtual {v2, v4}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 402
    return-object v2
.end method

.method private scale(FFF)Lnubia/fancydrawable/Matrix4x4;
    .locals 4
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    const/4 v3, 0x0

    .line 406
    const/16 v2, 0x10

    new-array v1, v2, [F

    .line 407
    .local v1, "value":[F
    new-instance v0, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v0}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 409
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/4 v2, 0x0

    aput p1, v1, v2

    .line 410
    const/4 v2, 0x1

    aput v3, v1, v2

    .line 411
    const/4 v2, 0x2

    aput v3, v1, v2

    .line 412
    const/4 v2, 0x3

    aput v3, v1, v2

    .line 414
    const/4 v2, 0x4

    aput v3, v1, v2

    .line 415
    const/4 v2, 0x5

    aput p2, v1, v2

    .line 416
    const/4 v2, 0x6

    aput v3, v1, v2

    .line 417
    const/4 v2, 0x7

    aput v3, v1, v2

    .line 419
    const/16 v2, 0x8

    aput v3, v1, v2

    .line 420
    const/16 v2, 0x9

    aput v3, v1, v2

    .line 421
    const/16 v2, 0xa

    aput p3, v1, v2

    .line 422
    const/16 v2, 0xb

    aput v3, v1, v2

    .line 424
    const/16 v2, 0xc

    aput v3, v1, v2

    .line 425
    const/16 v2, 0xd

    aput v3, v1, v2

    .line 426
    const/16 v2, 0xe

    aput v3, v1, v2

    .line 427
    const/16 v2, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 429
    invoke-virtual {v0, v1}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 430
    return-object v0
.end method

.method private translate(FFF)Lnubia/fancydrawable/Matrix4x4;
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 434
    const/16 v2, 0x10

    new-array v1, v2, [F

    .line 435
    .local v1, "value":[F
    new-instance v0, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v0}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 437
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/4 v2, 0x0

    aput v4, v1, v2

    .line 438
    const/4 v2, 0x1

    aput v3, v1, v2

    .line 439
    const/4 v2, 0x2

    aput v3, v1, v2

    .line 440
    const/4 v2, 0x3

    aput p1, v1, v2

    .line 442
    const/4 v2, 0x4

    aput v3, v1, v2

    .line 443
    const/4 v2, 0x5

    aput v4, v1, v2

    .line 444
    const/4 v2, 0x6

    aput v3, v1, v2

    .line 445
    const/4 v2, 0x7

    aput p2, v1, v2

    .line 447
    const/16 v2, 0x8

    aput v3, v1, v2

    .line 448
    const/16 v2, 0x9

    aput v3, v1, v2

    .line 449
    const/16 v2, 0xa

    aput v4, v1, v2

    .line 450
    const/16 v2, 0xb

    aput p3, v1, v2

    .line 452
    const/16 v2, 0xc

    aput v3, v1, v2

    .line 453
    const/16 v2, 0xd

    aput v3, v1, v2

    .line 454
    const/16 v2, 0xe

    aput v3, v1, v2

    .line 455
    const/16 v2, 0xf

    aput v4, v1, v2

    .line 457
    invoke-virtual {v0, v1}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 458
    return-object v0
.end method


# virtual methods
.method public camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;
    .locals 18
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .prologue
    .line 259
    const/16 v13, 0x10

    new-array v12, v13, [F

    .line 260
    .local v12, "value":[F
    new-instance v8, Lnubia/fancydrawable/Matrix4x4;

    invoke-direct {v8}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 262
    .local v8, "matrix":Lnubia/fancydrawable/Matrix4x4;
    move/from16 v0, p9

    float-to-double v14, v0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v11, v14

    .line 263
    .local v11, "sinT":F
    move/from16 v0, p9

    float-to-double v14, v0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    .line 264
    .local v7, "cosT":F
    move/from16 v0, p10

    float-to-double v14, v0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v9, v14

    .line 265
    .local v9, "sinP":F
    move/from16 v0, p10

    float-to-double v14, v0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v5, v14

    .line 266
    .local v5, "cosP":F
    move/from16 v0, p11

    float-to-double v14, v0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 267
    .local v10, "sinR":F
    move/from16 v0, p11

    float-to-double v14, v0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v6, v14

    .line 269
    .local v6, "cosR":F
    mul-float v13, v6, v7

    mul-float/2addr v13, v9

    mul-float v14, v11, v10

    add-float v2, v13, v14

    .line 270
    .local v2, "G":F
    mul-float v13, v10, v7

    mul-float/2addr v13, v9

    mul-float v14, v11, v6

    sub-float v3, v13, v14

    .line 271
    .local v3, "H":F
    mul-float v4, v7, v5

    .line 273
    .local v4, "I":F
    const/4 v13, 0x0

    mul-float v14, v5, v6

    mul-float v14, v14, p1

    div-float v15, p3, p5

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 274
    const/4 v13, 0x1

    mul-float v14, v5, v10

    mul-float v14, v14, p1

    div-float v15, p3, p5

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 275
    const/4 v13, 0x2

    const/high16 v14, -0x40800000    # -1.0f

    mul-float/2addr v14, v9

    mul-float v14, v14, p1

    div-float v15, p3, p5

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 276
    const/4 v13, 0x3

    mul-float v14, p1, p8

    div-float v15, p3, p5

    mul-float v15, v15, p6

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 279
    const/4 v13, 0x4

    mul-float v14, v6, v11

    mul-float/2addr v14, v9

    mul-float v15, v7, v10

    sub-float/2addr v14, v15

    mul-float v14, v14, p2

    div-float v15, p4, p5

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 281
    const/4 v13, 0x5

    mul-float v14, v10, v11

    mul-float/2addr v14, v9

    mul-float v15, v7, v6

    add-float/2addr v14, v15

    mul-float v14, v14, p2

    div-float v15, p4, p5

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 283
    const/4 v13, 0x6

    mul-float v14, v5, v11

    mul-float v14, v14, p2

    div-float v15, p4, p5

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 284
    const/4 v13, 0x7

    mul-float v14, p2, p7

    div-float v15, p4, p5

    mul-float v15, v15, p6

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 286
    const/16 v13, 0x8

    aput v2, v12, v13

    .line 287
    const/16 v13, 0x9

    aput v3, v12, v13

    .line 288
    const/16 v13, 0xa

    aput v4, v12, v13

    .line 289
    const/16 v13, 0xb

    aput p6, v12, v13

    .line 291
    const/16 v13, 0xc

    div-float v14, v2, p5

    aput v14, v12, v13

    .line 292
    const/16 v13, 0xd

    div-float v14, v3, p5

    aput v14, v12, v13

    .line 293
    const/16 v13, 0xe

    div-float v14, v4, p5

    aput v14, v12, v13

    .line 294
    const/16 v13, 0xf

    div-float v14, p6, p5

    aput v14, v12, v13

    .line 296
    invoke-virtual {v8, v12}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 297
    return-object v8
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const/16 v2, 0x10

    new-array v1, v2, [F

    .line 34
    .local v1, "value9":[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 37
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 38
    const/4 v2, 0x2

    iget-object v3, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v3, v3, v5

    aput v3, v1, v2

    .line 40
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v2, v2, v6

    aput v2, v1, v5

    .line 41
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v2, v2, v7

    aput v2, v1, v6

    .line 42
    iget-object v2, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v1, v7

    .line 44
    const/4 v2, 0x6

    iget-object v3, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    aput v3, v1, v2

    .line 45
    const/4 v2, 0x7

    iget-object v3, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    aput v3, v1, v2

    .line 46
    const/16 v2, 0x8

    iget-object v3, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v4, 0xf

    aget v3, v3, v4

    aput v3, v1, v2

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 49
    return-object v0
.end method

.method public getValues([F)V
    .locals 2
    .param p1, "value"    # [F

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v1, v1, v0

    aput v1, p1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public identity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 85
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 91
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 97
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 103
    return-void
.end method

.method public invert(Lnubia/fancydrawable/Matrix4x4;)Z
    .locals 1
    .param p1, "inverse"    # Lnubia/fancydrawable/Matrix4x4;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public postCamera(FFFFFFFFFFF)Z
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p11}, Lnubia/fancydrawable/Matrix4x4;->camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 113
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 114
    const/4 v1, 0x1

    return v1
.end method

.method public postContact(Lnubia/fancydrawable/Matrix4x4;)Z
    .locals 4
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .prologue
    const/16 v3, 0x10

    .line 118
    new-array v0, v3, [F

    .line 119
    .local v0, "value":[F
    new-array v1, v3, [F

    .line 120
    .local v1, "valueA":[F
    new-array v2, v3, [F

    .line 122
    .local v2, "valueB":[F
    invoke-virtual {p1, v1}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 123
    invoke-virtual {p0, v2}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 124
    invoke-direct {p0, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->operate([F[F[F)V

    .line 125
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 126
    const/4 v3, 0x1

    return v3
.end method

.method public postRotateX(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateX(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 131
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 132
    const/4 v1, 0x1

    return v1
.end method

.method public postRotateY(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateY(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 137
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public postRotateZ(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateZ(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 143
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public postScale(FFF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->scale(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 149
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 150
    const/4 v1, 0x1

    return v1
.end method

.method public postTranslate(FFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->translate(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 155
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->postContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 156
    const/4 v1, 0x1

    return v1
.end method

.method public preCamera(FFFFFFFFFFF)Z
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .prologue
    .line 163
    invoke-virtual/range {p0 .. p11}, Lnubia/fancydrawable/Matrix4x4;->camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 166
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 167
    const/4 v1, 0x1

    return v1
.end method

.method public preContact(Lnubia/fancydrawable/Matrix4x4;)Z
    .locals 4
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .prologue
    const/16 v3, 0x10

    .line 171
    new-array v0, v3, [F

    .line 172
    .local v0, "value":[F
    new-array v1, v3, [F

    .line 173
    .local v1, "valueA":[F
    new-array v2, v3, [F

    .line 175
    .local v2, "valueB":[F
    invoke-virtual {p1, v1}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 176
    invoke-virtual {p0, v2}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 177
    invoke-direct {p0, v0, v2, v1}, Lnubia/fancydrawable/Matrix4x4;->operate([F[F[F)V

    .line 178
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 179
    const/4 v3, 0x1

    return v3
.end method

.method public preRotateX(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateX(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 184
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 185
    const/4 v1, 0x1

    return v1
.end method

.method public preRotateY(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateY(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 190
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 191
    const/4 v1, 0x1

    return v1
.end method

.method public preRotateZ(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateZ(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 196
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 197
    const/4 v1, 0x1

    return v1
.end method

.method public preScale(FFF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->scale(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 202
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 203
    const/4 v1, 0x1

    return v1
.end method

.method public preTranslate(FFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->translate(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 208
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->preContact(Lnubia/fancydrawable/Matrix4x4;)Z

    .line 209
    const/4 v1, 0x1

    return v1
.end method

.method public set(Lnubia/fancydrawable/Matrix4x4;)V
    .locals 2
    .param p1, "matrix"    # Lnubia/fancydrawable/Matrix4x4;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 76
    .local v0, "value":[F
    invoke-virtual {p1, v0}, Lnubia/fancydrawable/Matrix4x4;->getValues([F)V

    .line 77
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->setValues([F)V

    .line 80
    .end local v0    # "value":[F
    :cond_0
    return-void
.end method

.method public setCamera(FFFFFFFFFFF)Z
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "nearPlane"    # F
    .param p6, "cameraDistance"    # F
    .param p7, "cameraUp"    # F
    .param p8, "cameraLeft"    # F
    .param p9, "cameraTilt"    # F
    .param p10, "cameraPan"    # F
    .param p11, "cameraRoll"    # F

    .prologue
    .line 216
    invoke-virtual/range {p0 .. p11}, Lnubia/fancydrawable/Matrix4x4;->camera(FFFFFFFFFFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 219
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 220
    const/4 v1, 0x1

    return v1
.end method

.method public setRotateX(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateX(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 225
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method public setRotateY(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateY(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 231
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 232
    const/4 v1, 0x1

    return v1
.end method

.method public setRotateZ(F)Z
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lnubia/fancydrawable/Matrix4x4;->rotateZ(F)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 237
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 238
    const/4 v1, 0x1

    return v1
.end method

.method public setScale(FFF)Z
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->scale(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 243
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 244
    const/4 v1, 0x1

    return v1
.end method

.method public setTranslate(FFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dz"    # F

    .prologue
    .line 248
    invoke-direct {p0, p1, p2, p3}, Lnubia/fancydrawable/Matrix4x4;->translate(FFF)Lnubia/fancydrawable/Matrix4x4;

    move-result-object v0

    .line 249
    .local v0, "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {p0, v0}, Lnubia/fancydrawable/Matrix4x4;->set(Lnubia/fancydrawable/Matrix4x4;)V

    .line 250
    const/4 v1, 0x1

    return v1
.end method

.method public setValues([F)V
    .locals 3
    .param p1, "value"    # [F

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lnubia/fancydrawable/Matrix4x4;->mValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
