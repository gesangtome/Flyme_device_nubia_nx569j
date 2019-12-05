.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field private static final BDS_ALMANAC_MASK:I = 0x4

.field private static final BDS_EPHEMERIS_MASK:I = 0x3

.field private static final BDS_SV_PRN_MAX:I = 0xeb

.field private static final BDS_SV_PRN_MIN:I = 0xc9

.field private static final BDS_USED_FOR_FIX_MASK:I = 0x5

.field private static final DEBUG:Z

.field private static final GAL_ALMANAC_MASK:I = 0x7

.field private static final GAL_EPHEMERIS_MASK:I = 0x6

.field private static final GAL_SV_PRN_MAX:I = 0x150

.field private static final GAL_SV_PRN_MIN:I = 0x12d

.field private static final GAL_USED_FOR_FIX_MASK:I = 0x8

.field private static final GLONASS_ALMANAC_MASK:I = 0x1

.field private static final GLONASS_EPHEMERIS_MASK:I = 0x0

.field private static final GLONASS_SV_PRN_MAX:I = 0x60

.field private static final GLONASS_SV_PRN_MIN:I = 0x41

.field private static final GLONASS_USED_FOR_FIX_MASK:I = 0x2

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final GPS_SV_PRN_MAX:I = 0x20

.field private static final GPS_SV_PRN_MIN:I = 0x1

.field private static final NUM_SATELLITES:I = 0x150

.field private static final TAG:Ljava/lang/String; = "GpsStatus"

.field private static final VERBOSE:Z


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "GpsStatus"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/location/GpsStatus;->DEBUG:Z

    .line 34
    const-string v0, "GpsStatus"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/location/GpsStatus;->VERBOSE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 161
    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsStatus;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method private clearSatellites()V
    .locals 4

    .prologue
    .line 293
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 294
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 295
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 296
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x150

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[FIII[J)V
    .locals 8
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I
    .param p9, "gnssSvMask"    # [J

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 173
    const-string v4, "GpsStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SV Status Update: SV count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v4, "GpsStatus"

    const-string v5, "Svids: "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_12

    .line 176
    aget v1, p2, v0

    .line 177
    .local v1, "prn":I
    if-lez v1, :cond_2

    const/16 v4, 0x150

    if-gt v1, v4, :cond_2

    .line 178
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 179
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_0

    .line 180
    new-instance v3, Landroid/location/GpsSatellite;

    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v1}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 181
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 185
    aget v4, p3, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    .line 186
    aget v4, p4, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    .line 187
    aget v4, p5, v0

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 189
    const/16 v4, 0x20

    if-gt v1, v4, :cond_6

    .line 190
    const/4 v4, 0x1

    add-int/lit8 v5, v1, -0x1

    shl-int v2, v4, v5

    .line 191
    .local v2, "prnShift":I
    and-int v4, p6, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 192
    and-int v4, p7, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 193
    and-int v4, p8, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 211
    .end local v2    # "prnShift":I
    :cond_1
    :goto_4
    const-string v4, "GpsStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .restart local v2    # "prnShift":I
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 192
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 193
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 194
    .end local v2    # "prnShift":I
    :cond_6
    const/16 v4, 0x41

    if-lt v1, v4, :cond_a

    const/16 v4, 0x60

    if-gt v1, v4, :cond_a

    .line 195
    const/4 v4, 0x1

    add-int/lit8 v5, v1, -0x41

    shl-int v2, v4, v5

    .line 196
    .restart local v2    # "prnShift":I
    const/4 v4, 0x0

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 197
    const/4 v4, 0x1

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 198
    const/4 v4, 0x2

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_7
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 172
    .end local v0    # "i":I
    .end local v1    # "prn":I
    .end local v2    # "prnShift":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 196
    .restart local v0    # "i":I
    .restart local v1    # "prn":I
    .restart local v2    # "prnShift":I
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 197
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 198
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 199
    .end local v2    # "prnShift":I
    :cond_a
    const/16 v4, 0xc9

    if-lt v1, v4, :cond_e

    const/16 v4, 0xeb

    if-gt v1, v4, :cond_e

    .line 200
    const/4 v4, 0x1

    add-int/lit16 v5, v1, -0xc9

    shl-int v2, v4, v5

    .line 201
    .restart local v2    # "prnShift":I
    const/4 v4, 0x3

    :try_start_1
    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_8
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 202
    const/4 v4, 0x4

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_9
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 203
    const/4 v4, 0x5

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_a
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    goto/16 :goto_4

    .line 201
    :cond_b
    const/4 v4, 0x0

    goto :goto_8

    .line 202
    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    .line 203
    :cond_d
    const/4 v4, 0x0

    goto :goto_a

    .line 205
    .end local v2    # "prnShift":I
    :cond_e
    const/16 v4, 0x12d

    if-lt v1, v4, :cond_1

    const/16 v4, 0x150

    if-gt v1, v4, :cond_1

    .line 206
    const/4 v4, 0x1

    add-int/lit16 v5, v1, -0x12d

    shl-int v2, v4, v5

    .line 207
    .restart local v2    # "prnShift":I
    const/4 v4, 0x6

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_b
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 208
    const/4 v4, 0x7

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_c
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 209
    const/16 v4, 0x8

    aget-wide v4, p9, v4

    int-to-long v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_d
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 207
    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    .line 208
    :cond_10
    const/4 v4, 0x0

    goto :goto_c

    .line 209
    :cond_11
    const/4 v4, 0x0

    goto :goto_d

    .line 214
    .end local v1    # "prn":I
    .end local v2    # "prnShift":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_12
    monitor-exit p0

    return-void
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 9
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v8

    iput v8, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 224
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 226
    iget-object v3, p1, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 227
    .local v3, "otherSatellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 228
    .local v4, "otherSatellitesCount":I
    const/4 v6, 0x0

    .line 231
    .local v6, "satelliteIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 232
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 233
    .local v1, "otherSatellite":Landroid/location/GpsSatellite;
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 235
    .local v2, "otherSatellitePrn":I
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 237
    .local v7, "satellitesCount":I
    :goto_1
    if-ge v6, v7, :cond_0

    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GpsSatellite;

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 241
    :cond_0
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 242
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    .line 243
    .local v5, "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    if-ne v8, v2, :cond_1

    .line 244
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 231
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v5, Landroid/location/GpsSatellite;

    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 247
    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 248
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 251
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    new-instance v5, Landroid/location/GpsSatellite;

    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 252
    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 253
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 256
    .end local v1    # "otherSatellite":Landroid/location/GpsSatellite;
    .end local v2    # "otherSatellitePrn":I
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    .end local v7    # "satellitesCount":I
    :cond_3
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 259
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 260
    return-void
.end method
