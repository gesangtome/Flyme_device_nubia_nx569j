.class Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;
.super Ljava/lang/Object;
.source "ScreenShotsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultData"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field hashCode:I

.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "hashCode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 930
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;->this$0:Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;->hashCode:I

    .line 932
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/resloader/ScreenShotsLoader$ResultData;->bitmap:Landroid/graphics/Bitmap;

    .line 933
    return-void
.end method
