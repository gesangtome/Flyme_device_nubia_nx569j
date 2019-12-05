.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$1;,
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field private static final POWER_CPU_CLUSTER_ACTIVE_PREFIX:Ljava/lang/String; = "cpu.active.cluster"

.field private static final POWER_CPU_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final POWER_CPU_CLUSTER_SPEED_PREFIX:Ljava/lang/String; = "cpu.speeds.cluster"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_GPU_ACTIVE:Ljava/lang/String; = "gpu.active"

.field public static final POWER_GPU_SPEEDS:Ljava/lang/String; = "gpu.speeds"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static mCaptcity:D

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 203
    return-void
.end method

.method private initCpuClusters()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 300
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    const-string v5, "cpu.clusters.cores"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 301
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, [Ljava/lang/Double;

    if-nez v4, :cond_2

    .line 303
    :cond_0
    new-array v4, v9, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 304
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string v7, "cpu.speeds"

    const-string v8, "cpu.active"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V

    aput-object v6, v4, v5

    .line 317
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    return-void

    .line 307
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast v3, [Ljava/lang/Double;

    .end local v3    # "obj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Ljava/lang/Double;

    .line 308
    .local v0, "array":[Ljava/lang/Double;
    array-length v4, v0

    new-array v4, v4, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 309
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 310
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 311
    .local v2, "numCpusInCluster":I
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.speeds.cluster"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cpu.active.cluster"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2, v10}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V

    aput-object v5, v4, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const v9, 0x111000f

    .line 207
    .local v9, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 208
    .local v14, "resources":Landroid/content/res/Resources;
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 209
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v12, 0x0

    .line 210
    .local v12, "parsingArray":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .line 214
    .local v3, "arrayName":Ljava/lang/String;
    :try_start_0
    const-string v15, "device"

    invoke-static {v11, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 219
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "element":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 249
    if-eqz v12, :cond_1

    .line 250
    sget-object v15, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 261
    const/16 v15, 0x8

    new-array v5, v15, [I

    fill-array-data v5, :array_0

    .line 272
    .local v5, "configResIds":[I
    const/16 v15, 0x8

    new-array v4, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v18, "bluetooth.controller.idle"

    aput-object v18, v4, v15

    const/4 v15, 0x1

    const-string v18, "bluetooth.controller.rx"

    aput-object v18, v4, v15

    const/4 v15, 0x2

    const-string v18, "bluetooth.controller.tx"

    aput-object v18, v4, v15

    const/4 v15, 0x3

    const-string v18, "bluetooth.controller.voltage"

    aput-object v18, v4, v15

    const/4 v15, 0x4

    const-string v18, "wifi.controller.idle"

    aput-object v18, v4, v15

    const/4 v15, 0x5

    const-string v18, "wifi.controller.rx"

    aput-object v18, v4, v15

    const/4 v15, 0x6

    const-string v18, "wifi.controller.tx"

    aput-object v18, v4, v15

    const/4 v15, 0x7

    const-string v18, "wifi.controller.voltage"

    aput-object v18, v4, v15

    .line 283
    .local v4, "configResIdKeys":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v15, v5

    if-ge v8, v15, :cond_9

    .line 284
    aget v15, v5, v8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 285
    .local v16, "value":I
    if-lez v16, :cond_2

    .line 286
    sget-object v15, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    aget-object v18, v4, v8

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 222
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v8    # "i":I
    .end local v16    # "value":I
    :cond_3
    if-eqz v12, :cond_4

    :try_start_1
    const-string v15, "value"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 224
    sget-object v15, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v12, 0x0

    .line 227
    :cond_4
    const-string v15, "array"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 228
    const/4 v12, 0x1

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 230
    const/4 v15, 0x0

    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 231
    :cond_5
    const-string v15, "item"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "value"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 232
    :cond_6
    const/4 v10, 0x0

    .line 233
    .local v10, "name":Ljava/lang/String;
    if-nez v12, :cond_7

    const/4 v15, 0x0

    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    :cond_7
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 235
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 236
    .local v13, "power":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 238
    .local v16, "value":D
    :try_start_2
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    .line 241
    :goto_2
    :try_start_3
    const-string v15, "item"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 242
    sget-object v15, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 252
    .end local v7    # "element":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v16    # "value":D
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v15

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    throw v15

    .line 243
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "power":Ljava/lang/String;
    .restart local v16    # "value":D
    :cond_8
    if-eqz v12, :cond_0

    .line 244
    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 254
    .end local v7    # "element":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v16    # "value":D
    :catch_1
    move-exception v6

    .line 255
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "configResIdKeys":[Ljava/lang/String;
    .restart local v5    # "configResIds":[I
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_9
    return-void

    .line 239
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v8    # "i":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "power":Ljava/lang/String;
    .restart local v16    # "value":D
    :catch_2
    move-exception v15

    goto :goto_2

    .line 261
    nop

    :array_0
    .array-data 4
        0x10e006a
        0x10e006b
        0x10e006c
        0x10e006d
        0x10e003c
        0x10e003d
        0x10e003e
        0x10e003f
    .end array-data
.end method

.method public static setBatteryCapacity(D)V
    .locals 0
    .param p0, "captcity"    # D

    .prologue
    .line 431
    sput-wide p0, Lcom/android/internal/os/PowerProfile;->mCaptcity:D

    .line 432
    return-void
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 380
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 392
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "data":Ljava/lang/Object;
    instance-of v4, v0, [Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 395
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    .line 396
    .local v1, "values":[Ljava/lang/Double;
    array-length v4, v1

    if-le v4, p2, :cond_1

    if-ltz p2, :cond_1

    .line 397
    aget-object v2, v1, p2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 407
    .end local v1    # "values":[Ljava/lang/Double;
    :cond_0
    :goto_0
    return-wide v2

    .line 398
    .restart local v1    # "values":[Ljava/lang/Double;
    :cond_1
    if-ltz p2, :cond_0

    array-length v4, v1

    if-eqz v4, :cond_0

    .line 401
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 404
    .end local v1    # "values":[Ljava/lang/Double;
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_2
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getAveragePowerForCpu(II)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .prologue
    .line 348
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$300(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    .line 351
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 362
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 365
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 370
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 367
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local p2    # "defaultValue":D
    :cond_1
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public getBatteryCapacity()D
    .locals 4

    .prologue
    .line 424
    sget-wide v0, Lcom/android/internal/os/PowerProfile;->mCaptcity:D

    const-wide v2, 0x407f400000000000L    # 500.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 425
    sget-wide v0, Lcom/android/internal/os/PowerProfile;->mCaptcity:D

    .line 427
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getNumCoresInCpuCluster(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    # getter for: Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I
    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$100(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v0

    return v0
.end method

.method public getNumCpuClusters()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public getNumGpuSpeedSteps()I
    .locals 3

    .prologue
    .line 435
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    const-string v2, "gpu.speeds"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 437
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    .line 439
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNumSpeedStepsInCpuCluster(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 340
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v2, v2, p1

    # getter for: Lcom/android/internal/os/PowerProfile$CpuClusterKey;->timeKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$200(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 342
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    .line 344
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
