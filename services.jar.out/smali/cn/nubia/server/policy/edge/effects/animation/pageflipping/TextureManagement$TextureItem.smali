.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
.super Ljava/lang/Object;
.source "TextureManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureItem"
.end annotation


# static fields
.field public static final STATUS_BITMAP:I = 0x1

.field public static final STATUS_DEL_TEXTURE:I = 0x5

.field public static final STATUS_NULL:I = 0x0

.field public static final STATUS_PRE_DEL_TEXTURE:I = 0x4

.field public static final STATUS_TEXTURE:I = 0x3

.field public static final STATUS_UPLOADING:I = 0x2


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mHashcode:I

.field public mHeight:I

.field public mStatus:I

.field public mTexureId:I

.field public mWidth:I

.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    .line 297
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    .line 298
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    .line 299
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    .line 300
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 302
    return-void
.end method
