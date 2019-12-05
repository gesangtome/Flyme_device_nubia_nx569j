.class public final enum Lcn/nubia/server/Sequence;
.super Ljava/lang/Enum;
.source "Sequence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/server/Sequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/server/Sequence;

.field public static final enum FIRST:Lcn/nubia/server/Sequence;

.field public static final enum LAST:Lcn/nubia/server/Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcn/nubia/server/Sequence;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/Sequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    .line 9
    new-instance v0, Lcn/nubia/server/Sequence;

    const-string v1, "LAST"

    invoke-direct {v0, v1, v3}, Lcn/nubia/server/Sequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/server/Sequence;

    sget-object v1, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/server/Sequence;->$VALUES:[Lcn/nubia/server/Sequence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/server/Sequence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcn/nubia/server/Sequence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/Sequence;

    return-object v0
.end method

.method public static values()[Lcn/nubia/server/Sequence;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcn/nubia/server/Sequence;->$VALUES:[Lcn/nubia/server/Sequence;

    invoke-virtual {v0}, [Lcn/nubia/server/Sequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/server/Sequence;

    return-object v0
.end method
