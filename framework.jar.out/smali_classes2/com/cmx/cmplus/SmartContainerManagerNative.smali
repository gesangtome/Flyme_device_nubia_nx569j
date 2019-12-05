.class public Lcom/cmx/cmplus/SmartContainerManagerNative;
.super Ljava/lang/Object;
.source "SmartContainerManagerNative.java"


# static fields
.field private static SMART_CONTAINER_SERVICE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/cmx/cmplus/ISmartContainerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "SmartContainerManagerNative"

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerNative;->TAG:Ljava/lang/String;

    .line 13
    const-string v0, "smart_container"

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerNative;->SMART_CONTAINER_SERVICE:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/cmx/cmplus/SmartContainerManagerNative$1;

    invoke-direct {v0}, Lcom/cmx/cmplus/SmartContainerManagerNative$1;-><init>()V

    sput-object v0, Lcom/cmx/cmplus/SmartContainerManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerNative;->SMART_CONTAINER_SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static get()Lcom/cmx/cmplus/ISmartContainerManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/cmx/cmplus/SmartContainerManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmx/cmplus/ISmartContainerManager;

    return-object v0
.end method
