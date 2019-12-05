.class public Lcn/nubia/server/notification/NotificationSettingObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettingObserver.java"


# static fields
.field public static final DB_UPDATE:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationSettingObserver;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationSettingObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    return-void
.end method
