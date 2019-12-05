.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v9, 0x80

    .line 199
    aget-byte v0, p1, p2

    .line 200
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 201
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 202
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 205
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 206
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 207
    .local v5, "i1":I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 208
    .local v6, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 210
    .local v7, "i3":I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4    # "i0":I
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v7    # "i3":I
    :cond_0
    move v4, v0

    .line 205
    goto :goto_0

    .restart local v4    # "i0":I
    :cond_1
    move v5, v1

    .line 206
    goto :goto_1

    .restart local v5    # "i1":I
    :cond_2
    move v6, v2

    .line 207
    goto :goto_2

    .restart local v6    # "i2":I
    :cond_3
    move v7, v3

    .line 208
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 219
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 220
    .local v0, "fraction":J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private requestAddress(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 12
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 252
    .local v2, "addressDnsBack":[Ljava/net/InetAddress;
    const-string v9, "61.135.250.78"

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 256
    .local v3, "addressLTE":Ljava/net/InetAddress;
    const/4 v5, 0x0

    .line 257
    .local v5, "bDuplicate":Z
    move-object v4, v2

    .local v4, "arr$":[Ljava/net/InetAddress;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v4, v7

    .line 258
    .local v0, "add":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 259
    const/4 v5, 0x1

    .line 264
    .end local v0    # "add":Ljava/net/InetAddress;
    :cond_0
    if-nez v5, :cond_2

    .line 265
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/net/InetAddress;

    .line 266
    .local v1, "address":[Ljava/net/InetAddress;
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    array-length v9, v2

    aput-object v3, v1, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "address":[Ljava/net/InetAddress;
    .end local v2    # "addressDnsBack":[Ljava/net/InetAddress;
    .end local v3    # "addressLTE":Ljava/net/InetAddress;
    .end local v4    # "arr$":[Ljava/net/InetAddress;
    .end local v5    # "bDuplicate":Z
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :goto_1
    return-object v1

    .line 257
    .restart local v0    # "add":Ljava/net/InetAddress;
    .restart local v2    # "addressDnsBack":[Ljava/net/InetAddress;
    .restart local v3    # "addressLTE":Ljava/net/InetAddress;
    .restart local v4    # "arr$":[Ljava/net/InetAddress;
    .restart local v5    # "bDuplicate":Z
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "add":Ljava/net/InetAddress;
    :cond_2
    move-object v1, v2

    .restart local v1    # "address":[Ljava/net/InetAddress;
    goto :goto_1

    .line 274
    .end local v1    # "address":[Ljava/net/InetAddress;
    .end local v2    # "addressDnsBack":[Ljava/net/InetAddress;
    .end local v3    # "addressLTE":Ljava/net/InetAddress;
    .end local v4    # "arr$":[Ljava/net/InetAddress;
    .end local v5    # "bDuplicate":Z
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v6

    .line 275
    .local v6, "e":Ljava/lang/Exception;
    const-string v9, "SntpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "request address failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    .prologue
    .line 228
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .line 229
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    .line 230
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    .line 233
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 234
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 235
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 236
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 238
    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 240
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 241
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 242
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 244
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 245
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 40
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 77
    invoke-direct/range {p0 .. p1}, Landroid/net/SntpClient;->requestAddress(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    .line 79
    .local v5, "addressArray":[Ljava/net/InetAddress;
    if-nez v5, :cond_0

    .line 80
    const/16 v33, 0x0

    .line 163
    :goto_0
    return v33

    .line 83
    :cond_0
    move/from16 v0, p2

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    array-length v0, v5

    move/from16 v36, v0

    add-int v33, v33, v36

    add-int/lit8 v33, v33, -0x1

    array-length v0, v5

    move/from16 v36, v0

    div-int v33, v33, v36

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v32, v0

    .line 85
    .local v32, "timeoutEach":I
    move-object v6, v5

    .local v6, "arr$":[Ljava/net/InetAddress;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_4

    aget-object v4, v6, v11

    .line 86
    .local v4, "address":Ljava/net/InetAddress;
    const/4 v12, 0x1

    .line 88
    .local v12, "isTimeSuccess":Z
    const/16 v30, 0x0

    .line 90
    .local v30, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v31, Ljava/net/DatagramSocket;

    invoke-direct/range {v31 .. v31}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v30    # "socket":Ljava/net/DatagramSocket;
    .local v31, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    invoke-virtual/range {v31 .. v32}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 98
    const/16 v33, 0x30

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 99
    .local v7, "buffer":[B
    new-instance v18, Ljava/net/DatagramPacket;

    array-length v0, v7

    move/from16 v33, v0

    const/16 v36, 0x7b

    move-object/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-direct {v0, v7, v1, v4, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 104
    .local v18, "request":Ljava/net/DatagramPacket;
    const/16 v33, 0x0

    const/16 v36, 0x1b

    aput-byte v36, v7, v33

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 108
    .local v22, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 109
    .local v20, "requestTicks":J
    const/16 v33, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-wide/from16 v2, v22

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 111
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 114
    new-instance v19, Ljava/net/DatagramPacket;

    array-length v0, v7

    move/from16 v33, v0

    move-object/from16 v0, v19

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 115
    .local v19, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 117
    .local v24, "responseTicks":J
    sub-long v36, v24, v20

    add-long v26, v22, v36

    .line 120
    .local v26, "responseTime":J
    const/16 v33, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v14

    .line 121
    .local v14, "originateTime":J
    const/16 v33, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v16

    .line 122
    .local v16, "receiveTime":J
    const/16 v33, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v34

    .line 123
    .local v34, "transmitTime":J
    sub-long v36, v24, v20

    sub-long v38, v34, v16

    sub-long v28, v36, v38

    .line 132
    .local v28, "roundTripTime":J
    sub-long v36, v16, v14

    sub-long v38, v34, v26

    add-long v36, v36, v38

    const-wide/16 v38, 0x2

    div-long v8, v36, v38

    .line 138
    .local v8, "clockOffset":J
    add-long v36, v26, v8

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 139
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 140
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    if-eqz v31, :cond_5

    .line 151
    invoke-virtual/range {v31 .. v31}, Ljava/net/DatagramSocket;->close()V

    move-object/from16 v30, v31

    .line 156
    .end local v7    # "buffer":[B
    .end local v8    # "clockOffset":J
    .end local v14    # "originateTime":J
    .end local v16    # "receiveTime":J
    .end local v18    # "request":Ljava/net/DatagramPacket;
    .end local v19    # "response":Ljava/net/DatagramPacket;
    .end local v20    # "requestTicks":J
    .end local v22    # "requestTime":J
    .end local v24    # "responseTicks":J
    .end local v26    # "responseTime":J
    .end local v28    # "roundTripTime":J
    .end local v31    # "socket":Ljava/net/DatagramSocket;
    .end local v34    # "transmitTime":J
    .restart local v30    # "socket":Ljava/net/DatagramSocket;
    :cond_1
    :goto_2
    if-nez v12, :cond_3

    .line 85
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 141
    :catch_0
    move-exception v10

    .line 147
    .local v10, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v12, 0x0

    .line 150
    if-eqz v30, :cond_1

    .line 151
    invoke-virtual/range {v30 .. v30}, Ljava/net/DatagramSocket;->close()V

    goto :goto_2

    .line 150
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v33

    :goto_4
    if-eqz v30, :cond_2

    .line 151
    invoke-virtual/range {v30 .. v30}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v33

    .line 159
    :cond_3
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 163
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v12    # "isTimeSuccess":Z
    .end local v30    # "socket":Ljava/net/DatagramSocket;
    :cond_4
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 150
    .restart local v4    # "address":Ljava/net/InetAddress;
    .restart local v12    # "isTimeSuccess":Z
    .restart local v31    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v33

    move-object/from16 v30, v31

    .end local v31    # "socket":Ljava/net/DatagramSocket;
    .restart local v30    # "socket":Ljava/net/DatagramSocket;
    goto :goto_4

    .line 141
    .end local v30    # "socket":Ljava/net/DatagramSocket;
    .restart local v31    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v10

    move-object/from16 v30, v31

    .end local v31    # "socket":Ljava/net/DatagramSocket;
    .restart local v30    # "socket":Ljava/net/DatagramSocket;
    goto :goto_3

    .end local v30    # "socket":Ljava/net/DatagramSocket;
    .restart local v7    # "buffer":[B
    .restart local v8    # "clockOffset":J
    .restart local v14    # "originateTime":J
    .restart local v16    # "receiveTime":J
    .restart local v18    # "request":Ljava/net/DatagramPacket;
    .restart local v19    # "response":Ljava/net/DatagramPacket;
    .restart local v20    # "requestTicks":J
    .restart local v22    # "requestTime":J
    .restart local v24    # "responseTicks":J
    .restart local v26    # "responseTime":J
    .restart local v28    # "roundTripTime":J
    .restart local v31    # "socket":Ljava/net/DatagramSocket;
    .restart local v34    # "transmitTime":J
    :cond_5
    move-object/from16 v30, v31

    .end local v31    # "socket":Ljava/net/DatagramSocket;
    .restart local v30    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2
.end method
