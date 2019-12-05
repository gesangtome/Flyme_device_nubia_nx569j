.class final Lcom/android/server/pm/DefaultDocumentAppHelper$1;
.super Ljava/util/ArrayList;
.source "DefaultDocumentAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultDocumentAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v0, "application/mspowerpoint"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "application/ms-powerpoint"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "application/ksdps"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "application/dps"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "application/dpt"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "application/pptm"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "application/vnd.ms-powerpoint.slideshow.macroEnabled.12"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "application/ppsm"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "application/ms-word"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "application/vnd.ms-word"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "application/vnd.ms-works"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "application/kswps"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "application/wpt"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "application/ms-word"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "text/rtf"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "text/richtext"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "application/msexcel"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "application/ms-excel"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "application/msexcel"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v0, "application/kset"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v0, "application/et"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v0, "application/ett"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "application/xlsb"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "application/vnd.ms-excel.sheet.macroEnabled.12"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "text/xml"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "application/potm"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "application/wps"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method
