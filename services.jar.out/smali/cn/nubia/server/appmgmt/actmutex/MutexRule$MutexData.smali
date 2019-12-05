.class Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;
.super Ljava/lang/Object;
.source "MutexRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/actmutex/MutexRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MutexData"
.end annotation


# instance fields
.field private mMode:I

.field private mNext:Ljava/lang/String;

.field private mPro:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/actmutex/MutexRule;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/actmutex/MutexRule;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "a"    # Ljava/lang/String;
    .param p3, "w"    # Ljava/lang/String;
    .param p4, "m"    # I

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->this$0:Lcn/nubia/server/appmgmt/actmutex/MutexRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->mPro:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->mNext:Ljava/lang/String;

    .line 167
    iput p4, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->mMode:I

    .line 168
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->mMode:I

    return v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->mNext:Ljava/lang/String;

    return-object v0
.end method

.method public getPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/MutexRule$MutexData;->mPro:Ljava/lang/String;

    return-object v0
.end method
