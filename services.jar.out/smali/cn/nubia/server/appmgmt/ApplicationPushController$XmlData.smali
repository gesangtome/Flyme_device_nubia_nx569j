.class Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
.super Ljava/lang/Object;
.source "ApplicationPushController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPushController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmlData"
.end annotation


# instance fields
.field private alloweds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefixs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "pre":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "all":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->this$0:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->prefixs:Ljava/util/HashSet;

    .line 145
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->alloweds:Ljava/util/HashSet;

    .line 146
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->prefixs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->alloweds:Ljava/util/HashSet;

    return-object v0
.end method
