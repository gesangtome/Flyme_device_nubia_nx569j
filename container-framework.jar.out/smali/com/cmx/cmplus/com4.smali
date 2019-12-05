.class public Lcom/cmx/cmplus/com4;
.super Ljava/lang/Object;


# instance fields
.field public NUL:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public prn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cmx/cmplus/com4;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmx/cmplus/com4;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmx/cmplus/com4;->NUL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmx/cmplus/com4;->prn:Z

    iput-object p1, p0, Lcom/cmx/cmplus/com4;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmx/cmplus/com4;->NUL:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cmx/cmplus/com4;->prn:Z

    return-void
.end method
