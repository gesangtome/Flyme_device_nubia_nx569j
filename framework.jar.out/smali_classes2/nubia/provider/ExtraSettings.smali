.class public Lnubia/provider/ExtraSettings;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/provider/ExtraSettings$Global;,
        Lnubia/provider/ExtraSettings$Secure;,
        Lnubia/provider/ExtraSettings$System;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final SILENT_ITEM_URI:Ljava/lang/String; = "content://media/internal/audio/media/10000"

.field private static final TAG:Ljava/lang/String; = "ExtraSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static convertForMediaPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 94
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->needChangedForMediaUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p2, p1}, Lnubia/provider/ExtraSettings;->filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static convertForMediaUri(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 101
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->needChangedForMediaUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p2, p1}, Lnubia/provider/ExtraSettings;->uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 65
    move-object v7, p1

    .line 66
    .local v7, "uri":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v0, "/storage/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v6, 0x0

    .line 69
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_data = ?"

    .line 70
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    if-eqz v7, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :cond_1
    if-eqz v6, :cond_2

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v7

    .line 80
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 82
    if-eqz v6, :cond_2

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, ""

    .line 177
    .local v0, "albumName":Ljava/lang/String;
    const-string v1, "ringtone_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    :cond_0
    const-string v0, "ringtones"

    .line 188
    :cond_1
    :goto_0
    return-object v0

    .line 182
    :cond_2
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "message_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    :cond_3
    const-string v0, "notifications"

    goto :goto_0

    .line 185
    :cond_4
    const-string v1, "alarm_alert"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string v0, "alarms"

    goto :goto_0
.end method

.method private static getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, ""

    .line 160
    .local v0, "defaultName":Ljava/lang/String;
    const-string v1, "ringtone_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    :cond_0
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_1
    :goto_0
    return-object v0

    .line 165
    :cond_2
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_3
    const-string v1, "alarm_alert"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_4
    const-string v1, "message_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "ro.config.message_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static ifNeededSetDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "content://media/internal/audio/media/10000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    const/4 v6, 0x0

    .line 118
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    invoke-static {p0, p1, p2}, Lnubia/provider/ExtraSettings;->setDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 125
    :cond_1
    if-eqz v6, :cond_2

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object p2

    .line 123
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 125
    if-eqz v6, :cond_2

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static ifNotExistsSetDefault(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 108
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->needChangedForMediaUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0, p2, p1}, Lnubia/provider/ExtraSettings;->ifNeededSetDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static needChangedForMediaUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alarm_alert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "message_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "displayName":Ljava/lang/String;
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->getAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "albumName":Ljava/lang/String;
    const-string v3, "_display_name = ? AND album = ?"

    .line 138
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object v8, v4, v1

    aput-object v6, v4, v2

    .line 139
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 141
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 143
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 150
    :cond_0
    if-eqz v7, :cond_1

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    :goto_0
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    return-object p2

    .line 148
    :catch_0
    move-exception v0

    .line 150
    if-eqz v7, :cond_1

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 39
    move-object v7, p1

    .line 40
    .local v7, "str":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v0, "content://media/external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const/4 v6, 0x0

    .line 43
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 45
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 47
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    if-nez v7, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :cond_1
    if-eqz v6, :cond_2

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 61
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v7

    .line 51
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 53
    if-eqz v6, :cond_2

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
