.class Lcom/android/server/am/SingleUIBlackAppHelper$1;
.super Ljava/util/ArrayList;
.source "SingleUIBlackAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SingleUIBlackAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SingleUIBlackAppHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/SingleUIBlackAppHelper;)V
    .locals 1

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/am/SingleUIBlackAppHelper$1;->this$0:Lcom/android/server/am/SingleUIBlackAppHelper;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    const-string v0, "com.android.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/am/SingleUIBlackAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v0, "cn.nubia.singlehandpageset"

    invoke-virtual {p0, v0}, Lcom/android/server/am/SingleUIBlackAppHelper$1;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
