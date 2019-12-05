.class Lcn/nubia/server/appmgmt/CABCController$XmlData;
.super Ljava/lang/Object;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmlData"
.end annotation


# instance fields
.field private array:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;

.field private value:I


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;ILandroid/util/ArrayMap;)V
    .locals 0
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$XmlData;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p2, p0, Lcn/nubia/server/appmgmt/CABCController$XmlData;->value:I

    .line 122
    iput-object p3, p0, Lcn/nubia/server/appmgmt/CABCController$XmlData;->array:Landroid/util/ArrayMap;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/CABCController$XmlData;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController$XmlData;

    .prologue
    .line 117
    iget v0, p0, Lcn/nubia/server/appmgmt/CABCController$XmlData;->value:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/CABCController$XmlData;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController$XmlData;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcn/nubia/server/appmgmt/CABCController$XmlData;->value:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController$XmlData;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$XmlData;->array:Landroid/util/ArrayMap;

    return-object v0
.end method
