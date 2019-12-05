.class Lcom/android/server/connectivity/VpnIcon;
.super Ljava/lang/Object;
.source "VpnIcon.java"


# static fields
.field private static final NOTIFICATION_ID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackage:Ljava/lang/String;

.field private final mUserHandle:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    .line 35
    iput-object p3, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private createBitmap(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v7, 0x0

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 123
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 126
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    .local v2, "height":I
    invoke-virtual {v3, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_0
    return-object v0
.end method

.method private hideNotification(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 114
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "userHandle"    # I
    .param p4, "vpnConfig"    # Lcom/android/internal/net/VpnConfig;
    .param p5, "statusIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 83
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040444

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget-object v4, p4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040446

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "text":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108074e

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "Running"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "90"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 106
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 108
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040445

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    .restart local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040447

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method hideNotificationForAll()V
    .locals 6

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 64
    .local v2, "token":J
    iget v5, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V

    .line 67
    :try_start_0
    iget v5, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    if-nez v5, :cond_0

    .line 68
    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 70
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    return-void
.end method

.method showNotificationAccordingToPackage(ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "userHandle"    # I
    .param p2, "vpnConfig"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "statusIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const-string v3, "[Legacy VPN]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnIcon;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V

    .line 60
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 44
    .local v10, "token":J
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 46
    .local v8, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 49
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "label":Ljava/lang/String;
    invoke-direct {p0, v6, v8}, Lcom/android/server/connectivity/VpnIcon;->createBitmap(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 52
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnIcon;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 54
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 55
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid application"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
