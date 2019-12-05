.class Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexRuleHolder;
.super Ljava/lang/Object;
.source "MutexRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/actmutex/MutexRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutexRuleHolder"
.end annotation


# static fields
.field private static final sInstance:Lcn/nubia/server/appmgmt/actmutex/MutexRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/actmutex/MutexRule;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexRuleHolder;->sInstance:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/nubia/server/appmgmt/actmutex/MutexRule;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexRuleHolder;->sInstance:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    return-object v0
.end method
