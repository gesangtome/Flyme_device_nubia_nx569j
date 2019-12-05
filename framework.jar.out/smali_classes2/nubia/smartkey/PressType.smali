.class public final enum Lnubia/smartkey/PressType;
.super Ljava/lang/Enum;
.source "PressType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnubia/smartkey/PressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnubia/smartkey/PressType;

.field public static final enum LONG:Lnubia/smartkey/PressType;

.field public static final enum SHORT:Lnubia/smartkey/PressType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lnubia/smartkey/PressType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v2, v2}, Lnubia/smartkey/PressType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnubia/smartkey/PressType;->SHORT:Lnubia/smartkey/PressType;

    new-instance v0, Lnubia/smartkey/PressType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3, v3}, Lnubia/smartkey/PressType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnubia/smartkey/PressType;->LONG:Lnubia/smartkey/PressType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lnubia/smartkey/PressType;

    sget-object v1, Lnubia/smartkey/PressType;->SHORT:Lnubia/smartkey/PressType;

    aput-object v1, v0, v2

    sget-object v1, Lnubia/smartkey/PressType;->LONG:Lnubia/smartkey/PressType;

    aput-object v1, v0, v3

    sput-object v0, Lnubia/smartkey/PressType;->$VALUES:[Lnubia/smartkey/PressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lnubia/smartkey/PressType;->mValue:I

    .line 10
    return-void
.end method

.method public static fromValue(I)Lnubia/smartkey/PressType;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 17
    invoke-static {}, Lnubia/smartkey/PressType;->values()[Lnubia/smartkey/PressType;

    move-result-object v0

    .local v0, "arr$":[Lnubia/smartkey/PressType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 18
    .local v3, "type":Lnubia/smartkey/PressType;
    iget v4, v3, Lnubia/smartkey/PressType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 19
    return-object v3

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v3    # "type":Lnubia/smartkey/PressType;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lnubia/smartkey/PressType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lnubia/smartkey/PressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnubia/smartkey/PressType;

    return-object v0
.end method

.method public static values()[Lnubia/smartkey/PressType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lnubia/smartkey/PressType;->$VALUES:[Lnubia/smartkey/PressType;

    invoke-virtual {v0}, [Lnubia/smartkey/PressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnubia/smartkey/PressType;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lnubia/smartkey/PressType;->mValue:I

    return v0
.end method
