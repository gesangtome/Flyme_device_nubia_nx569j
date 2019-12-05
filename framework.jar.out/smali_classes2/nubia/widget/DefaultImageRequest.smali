.class public Lnubia/widget/DefaultImageRequest;
.super Ljava/lang/Object;
.source "DefaultImageRequest.java"


# static fields
.field public static final CARD_ID_DEFAULT:I = -0x1

.field public static final CARD_RES_TYPE_DEFAULT:I = 0x0

.field public static final OFFSET_DEFAULT:F = 0.0f

.field public static final SCALE_DEFAULT:F = 0.7f

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3


# instance fields
.field public mCardId:I

.field public mCardResType:I

.field public mContactType:I

.field public mDisplayName:Ljava/lang/String;

.field public mIdentifier:Ljava/lang/String;

.field public mIsCircular:Z

.field public mOffset:F

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mContactType:I

    .line 21
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mScale:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mOffset:F

    .line 25
    iput-boolean v1, p0, Lnubia/widget/DefaultImageRequest;->mIsCircular:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mCardId:I

    .line 29
    iput v1, p0, Lnubia/widget/DefaultImageRequest;->mCardResType:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V
    .locals 9
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "scale"    # F
    .param p5, "offset"    # F
    .param p6, "isCircular"    # Z

    .prologue
    .line 48
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lnubia/widget/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZII)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZII)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "scale"    # F
    .param p5, "offset"    # F
    .param p6, "isCircular"    # Z
    .param p7, "cardId"    # I
    .param p8, "cardResType"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mContactType:I

    .line 21
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mScale:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mOffset:F

    .line 25
    iput-boolean v1, p0, Lnubia/widget/DefaultImageRequest;->mIsCircular:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/DefaultImageRequest;->mCardId:I

    .line 29
    iput v1, p0, Lnubia/widget/DefaultImageRequest;->mCardResType:I

    .line 67
    iput-object p1, p0, Lnubia/widget/DefaultImageRequest;->mDisplayName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lnubia/widget/DefaultImageRequest;->mIdentifier:Ljava/lang/String;

    .line 69
    iput p3, p0, Lnubia/widget/DefaultImageRequest;->mContactType:I

    .line 70
    iput p4, p0, Lnubia/widget/DefaultImageRequest;->mScale:F

    .line 71
    iput p5, p0, Lnubia/widget/DefaultImageRequest;->mOffset:F

    .line 72
    iput-boolean p6, p0, Lnubia/widget/DefaultImageRequest;->mIsCircular:Z

    .line 73
    iput p7, p0, Lnubia/widget/DefaultImageRequest;->mCardId:I

    .line 74
    iput p8, p0, Lnubia/widget/DefaultImageRequest;->mCardResType:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "isCircular"    # Z

    .prologue
    .line 42
    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lnubia/widget/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 9
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "isCircular"    # Z
    .param p5, "cardId"    # I

    .prologue
    .line 54
    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lnubia/widget/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZII)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 9
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "isCircular"    # Z
    .param p5, "cardId"    # I
    .param p6, "cardResType"    # I

    .prologue
    .line 60
    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lnubia/widget/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZII)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "isCircular"    # Z

    .prologue
    .line 36
    const/4 v3, 0x1

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lnubia/widget/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZII)V

    .line 38
    return-void
.end method
