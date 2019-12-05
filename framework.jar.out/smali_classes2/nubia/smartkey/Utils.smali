.class public final Lnubia/smartkey/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static sHasSmartKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lnubia/smartkey/Utils;->hasSmartKeyFeature()Z

    move-result v0

    sput-boolean v0, Lnubia/smartkey/Utils;->sHasSmartKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableWakeup(Z)Z
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 21
    const/4 v1, 0x1

    .line 23
    .local v1, "result":Z
    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "1"

    .line 24
    .local v2, "value":Ljava/lang/String;
    :goto_0
    const-string v3, "sys/class/pressure_device/pressure_device/enable_smart_key"

    invoke-static {v3, v2}, Lnubia/smartkey/Utils;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    return v1

    .line 23
    :cond_0
    const-string v2, "0"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static hasSmartKeyFeature()Z
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    const-string v1, "sys/class/pressure_device/pressure_device/enable_smart_key"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static writeNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "nodePath"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    .local v0, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 17
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 18
    return-void
.end method
