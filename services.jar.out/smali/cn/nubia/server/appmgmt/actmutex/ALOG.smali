.class public final Lcn/nubia/server/appmgmt/actmutex/ALOG;
.super Ljava/lang/Object;
.source "ALOG.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionMutexController"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcn/nubia/server/appmgmt/actmutex/ALOG;->DEBUG:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-boolean v0, Lcn/nubia/server/appmgmt/actmutex/ALOG;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "ActionMutexController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-boolean v0, Lcn/nubia/server/appmgmt/actmutex/ALOG;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "ActionMutexController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcn/nubia/server/appmgmt/actmutex/ALOG;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "ActionMutexController"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method
