.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"

.field private static mCheckMTP:Z


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "persist.sys.check_mtp_on"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/mtp/MtpPropertyGroup;->mCheckMTP:Z

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 77
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 78
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 80
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 82
    array-length v1, p5

    .line 83
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 87
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 88
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 92
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 93
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 101
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "type":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 202
    :goto_1
    return-object v2

    .line 103
    .end local v1    # "type":I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 104
    const/4 v1, 0x6

    .line 105
    .restart local v1    # "type":I
    goto :goto_0

    .line 107
    .end local v1    # "type":I
    :sswitch_1
    const-string v0, "format"

    .line 108
    const/4 v1, 0x4

    .line 109
    .restart local v1    # "type":I
    goto :goto_0

    .line 112
    .end local v1    # "type":I
    :sswitch_2
    const/4 v1, 0x4

    .line 113
    .restart local v1    # "type":I
    goto :goto_0

    .line 115
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "_size"

    .line 116
    const/16 v1, 0x8

    .line 117
    .restart local v1    # "type":I
    goto :goto_0

    .line 119
    .end local v1    # "type":I
    :sswitch_4
    const-string v0, "_data"

    .line 120
    const v1, 0xffff

    .line 121
    .restart local v1    # "type":I
    goto :goto_0

    .line 123
    .end local v1    # "type":I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 124
    const v1, 0xffff

    .line 125
    .restart local v1    # "type":I
    goto :goto_0

    .line 127
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "date_modified"

    .line 128
    const v1, 0xffff

    .line 129
    .restart local v1    # "type":I
    goto :goto_0

    .line 131
    .end local v1    # "type":I
    :sswitch_7
    const-string v0, "date_added"

    .line 132
    const v1, 0xffff

    .line 133
    .restart local v1    # "type":I
    goto :goto_0

    .line 135
    .end local v1    # "type":I
    :sswitch_8
    const-string/jumbo v0, "year"

    .line 136
    const v1, 0xffff

    .line 137
    .restart local v1    # "type":I
    goto :goto_0

    .line 139
    .end local v1    # "type":I
    :sswitch_9
    const-string/jumbo v0, "parent"

    .line 140
    const/4 v1, 0x6

    .line 141
    .restart local v1    # "type":I
    goto :goto_0

    .line 144
    .end local v1    # "type":I
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    .line 145
    const/16 v1, 0xa

    .line 146
    .restart local v1    # "type":I
    goto :goto_0

    .line 148
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "duration"

    .line 149
    const/4 v1, 0x6

    .line 150
    .restart local v1    # "type":I
    goto :goto_0

    .line 152
    .end local v1    # "type":I
    :sswitch_c
    const-string/jumbo v0, "track"

    .line 153
    const/4 v1, 0x4

    .line 154
    .restart local v1    # "type":I
    goto :goto_0

    .line 156
    .end local v1    # "type":I
    :sswitch_d
    const-string v0, "_display_name"

    .line 157
    const v1, 0xffff

    .line 158
    .restart local v1    # "type":I
    goto :goto_0

    .line 160
    .end local v1    # "type":I
    :sswitch_e
    const v1, 0xffff

    .line 161
    .restart local v1    # "type":I
    goto :goto_0

    .line 163
    .end local v1    # "type":I
    :sswitch_f
    const v1, 0xffff

    .line 164
    .restart local v1    # "type":I
    goto :goto_0

    .line 166
    .end local v1    # "type":I
    :sswitch_10
    const-string v0, "album_artist"

    .line 167
    const v1, 0xffff

    .line 168
    .restart local v1    # "type":I
    goto :goto_0

    .line 171
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 172
    .restart local v1    # "type":I
    goto :goto_0

    .line 174
    .end local v1    # "type":I
    :sswitch_12
    const-string v0, "composer"

    .line 175
    const v1, 0xffff

    .line 176
    .restart local v1    # "type":I
    goto :goto_0

    .line 178
    .end local v1    # "type":I
    :sswitch_13
    const-string v0, "description"

    .line 179
    const v1, 0xffff

    .line 180
    .restart local v1    # "type":I
    goto :goto_0

    .line 185
    .end local v1    # "type":I
    :sswitch_14
    const/4 v1, 0x6

    .line 186
    .restart local v1    # "type":I
    goto :goto_0

    .line 190
    .end local v1    # "type":I
    :sswitch_15
    const/4 v1, 0x4

    .line 191
    .restart local v1    # "type":I
    goto :goto_0

    .line 202
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 101
    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde92 -> :sswitch_15
        0xde93 -> :sswitch_14
        0xde94 -> :sswitch_15
        0xde99 -> :sswitch_14
        0xde9a -> :sswitch_14
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 292
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 293
    add-int/lit8 v2, v1, 0x1

    .line 295
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 296
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 297
    add-int/lit16 v0, v2, 0xff

    .line 299
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 228
    const/4 v8, 0x0

    .line 230
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 233
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 241
    if-eqz v8, :cond_0

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    if-eqz v8, :cond_0

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    :catch_0
    move-exception v9

    .line 241
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 241
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 248
    const/4 v8, 0x0

    .line 250
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 251
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 254
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    if-eqz v8, :cond_0

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 257
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v8, :cond_0

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 259
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 260
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    if-eqz v8, :cond_2

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 263
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 270
    const/4 v8, 0x0

    .line 273
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 276
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v8, :cond_0

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    if-eqz v8, :cond_2

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 285
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    if-eqz v8, :cond_2

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 207
    const/4 v8, 0x0

    .line 210
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 213
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 221
    if-eqz v8, :cond_0

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    if-eqz v8, :cond_0

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v9

    .line 221
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 221
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private updateParentId(II)V
    .locals 24
    .param p1, "handle"    # I
    .param p2, "count"    # I

    .prologue
    .line 485
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 486
    .local v11, "checkName":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 487
    invoke-static {v11}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 489
    .local v19, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 490
    .local v12, "cur":Landroid/database/Cursor;
    const-string v10, "bucket_display_name=? and _data >=? and _data <?"

    .line 492
    .local v10, "ID_BUCKET":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "parent"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "_data"

    aput-object v7, v5, v6

    const-string v6, "bucket_display_name=? and _data >=? and _data <?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 495
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 496
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 498
    .local v18, "length":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v20, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 501
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 502
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v14, v2

    .line 503
    .local v14, "currentid":I
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v21, v0

    .line 504
    .local v21, "parentid":I
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 505
    .local v15, "currentpath":Ljava/lang/String;
    move/from16 v0, v21

    move/from16 v1, p1

    if-eq v0, v1, :cond_1

    if-eqz v15, :cond_1

    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update currentpath ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    .line 508
    .local v13, "currentArgs":[Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "parent"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v2, "_data"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id=?"

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v13    # "currentArgs":[Ljava/lang/String;
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 518
    .end local v14    # "currentid":I
    .end local v15    # "currentpath":Ljava/lang/String;
    .end local v21    # "parentid":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v0}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v17    # "index":I
    .end local v18    # "length":I
    .end local v20    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    if-eqz v12, :cond_4

    .line 525
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 529
    .end local v10    # "ID_BUCKET":Ljava/lang/String;
    .end local v12    # "cur":Landroid/database/Cursor;
    .end local v19    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 521
    .restart local v10    # "ID_BUCKET":Ljava/lang/String;
    .restart local v12    # "cur":Landroid/database/Cursor;
    .restart local v19    # "name":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 522
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MtpPropertyGroup"

    const-string/jumbo v3, "update  ParentId "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    if-eqz v12, :cond_4

    .line 525
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 524
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 525
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 34
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 304
    const/4 v4, 0x1

    move/from16 v0, p3

    if-le v0, v4, :cond_1

    .line 307
    new-instance v10, Landroid/mtp/MtpPropertyList;

    const/4 v4, 0x0

    const v5, 0xa808

    invoke-direct {v10, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 475
    :cond_0
    :goto_0
    return-object v10

    .line 312
    :cond_1
    if-nez p2, :cond_5

    .line 313
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 315
    const/4 v8, 0x0

    .line 316
    .local v8, "where":Ljava/lang/String;
    const/4 v9, 0x0

    .line 340
    .local v9, "whereArgs":[Ljava/lang/String;
    :goto_1
    const/16 v22, 0x0

    .line 343
    .local v22, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 344
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v22

    .line 345
    if-nez v22, :cond_8

    .line 346
    new-instance v10, Landroid/mtp/MtpPropertyList;

    const/4 v4, 0x0

    const/16 v5, 0x2009

    invoke-direct {v10, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    if-eqz v22, :cond_0

    .line 475
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 318
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v22    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 319
    .restart local v9    # "whereArgs":[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 320
    const-string/jumbo v8, "parent=?"

    .restart local v8    # "where":Ljava/lang/String;
    goto :goto_1

    .line 322
    .end local v8    # "where":Ljava/lang/String;
    :cond_4
    const-string v8, "_id=?"

    .restart local v8    # "where":Ljava/lang/String;
    goto :goto_1

    .line 326
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 328
    const-string v8, "format=?"

    .line 329
    .restart local v8    # "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .restart local v9    # "whereArgs":[Ljava/lang/String;
    goto :goto_1

    .line 331
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 332
    .restart local v9    # "whereArgs":[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    .line 333
    const-string/jumbo v8, "parent=? AND format=?"

    .restart local v8    # "where":Ljava/lang/String;
    goto :goto_1

    .line 335
    .end local v8    # "where":Ljava/lang/String;
    :cond_7
    const-string v8, "_id=? AND format=?"

    .restart local v8    # "where":Ljava/lang/String;
    goto :goto_1

    .line 350
    .restart local v22    # "c":Landroid/database/Cursor;
    :cond_8
    if-nez v22, :cond_b

    const/16 v24, 0x1

    .line 351
    .local v24, "count":I
    :goto_2
    :try_start_1
    new-instance v10, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v4, v4

    mul-int v4, v4, v24

    const/16 v5, 0x2001

    invoke-direct {v10, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 355
    .local v10, "result":Landroid/mtp/MtpPropertyList;
    sget-boolean v4, Landroid/mtp/MtpPropertyGroup;->mCheckMTP:Z

    if-eqz v4, :cond_9

    .line 356
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->updateParentId(II)V

    .line 360
    :cond_9
    const/16 v29, 0x0

    .local v29, "objectIndex":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 361
    if-eqz v22, :cond_a

    .line 362
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    .line 363
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 p1, v0

    .line 367
    :cond_a
    const/16 v31, 0x0

    .local v31, "propertyIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v4, v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_14

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v30, v4, v31

    .line 369
    .local v30, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v30

    iget v12, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 370
    .local v12, "propertyCode":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v23, v0

    .line 373
    .local v23, "column":I
    sparse-switch v12, :sswitch_data_0

    .line 457
    move-object/from16 v0, v30

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v5, 0xffff

    if-ne v4, v5, :cond_12

    .line 458
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v12, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 367
    :goto_5
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 350
    .end local v10    # "result":Landroid/mtp/MtpPropertyList;
    .end local v12    # "propertyCode":I
    .end local v23    # "column":I
    .end local v24    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :cond_b
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v24

    goto :goto_2

    .line 376
    .restart local v10    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v12    # "propertyCode":I
    .restart local v23    # "column":I
    .restart local v24    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_0
    const/4 v13, 0x4

    const-wide/16 v14, 0x0

    move/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 471
    .end local v10    # "result":Landroid/mtp/MtpPropertyList;
    .end local v12    # "propertyCode":I
    .end local v23    # "column":I
    .end local v24    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :catch_0
    move-exception v26

    .line 472
    .local v26, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v10, Landroid/mtp/MtpPropertyList;

    const/4 v4, 0x0

    const/16 v5, 0x2002

    invoke-direct {v10, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    if-eqz v22, :cond_0

    .line 475
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 380
    .end local v26    # "e":Landroid/os/RemoteException;
    .restart local v10    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v12    # "propertyCode":I
    .restart local v23    # "column":I
    .restart local v24    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_1
    :try_start_3
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 381
    .local v32, "value":Ljava/lang/String;
    if-eqz v32, :cond_d

    .line 382
    invoke-static/range {v32 .. v32}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v12, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 474
    .end local v10    # "result":Landroid/mtp/MtpPropertyList;
    .end local v12    # "propertyCode":I
    .end local v23    # "column":I
    .end local v24    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    .end local v32    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_c

    .line 475
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 384
    .restart local v10    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v12    # "propertyCode":I
    .restart local v23    # "column":I
    .restart local v24    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    .restart local v32    # "value":Ljava/lang/String;
    :cond_d
    const/16 v4, 0x2009

    :try_start_4
    invoke-virtual {v10, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 389
    .end local v32    # "value":Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 391
    .local v28, "name":Ljava/lang/String;
    if-nez v28, :cond_e

    .line 392
    const-string/jumbo v4, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 395
    :cond_e
    if-nez v28, :cond_f

    .line 396
    const-string v4, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 397
    if-eqz v28, :cond_f

    .line 398
    invoke-static/range {v28 .. v28}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 401
    :cond_f
    if-eqz v28, :cond_10

    .line 402
    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v12, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 404
    :cond_10
    const/16 v4, 0x2009

    invoke-virtual {v10, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 410
    .end local v28    # "name":Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v12, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 414
    :sswitch_4
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 415
    .local v33, "year":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0101T000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 416
    .local v25, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v12, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 420
    .end local v25    # "dateTime":Ljava/lang/String;
    .end local v33    # "year":I
    :sswitch_5
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 421
    .local v14, "puid":J
    const/16 v4, 0x20

    shl-long/2addr v14, v4

    .line 422
    move/from16 v0, p1

    int-to-long v4, v0

    add-long/2addr v14, v4

    .line 423
    const/16 v13, 0xa

    move/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 426
    .end local v14    # "puid":J
    :sswitch_6
    const/16 v19, 0x4

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 430
    :sswitch_7
    const-string v4, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v12, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 434
    :sswitch_8
    const-string v4, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v12, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 438
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v27

    .line 439
    .local v27, "genre":Ljava/lang/String;
    if-eqz v27, :cond_11

    .line 440
    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v12, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 442
    :cond_11
    const/16 v4, 0x2009

    invoke-virtual {v10, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 449
    .end local v27    # "genre":Ljava/lang/String;
    :sswitch_a
    const/16 v19, 0x6

    const-wide/16 v20, 0x0

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 454
    :sswitch_b
    const/16 v19, 0x4

    const-wide/16 v20, 0x0

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 459
    :cond_12
    move-object/from16 v0, v30

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v4, :cond_13

    .line 460
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 462
    :cond_13
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v19, v0

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, v12

    invoke-virtual/range {v16 .. v21}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 360
    .end local v12    # "propertyCode":I
    .end local v23    # "column":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_14
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 474
    .end local v31    # "propertyIndex":I
    :cond_15
    if-eqz v22, :cond_0

    .line 475
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 373
    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_0
        0xdc07 -> :sswitch_1
        0xdc09 -> :sswitch_3
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_7
        0xdc4e -> :sswitch_3
        0xdc8b -> :sswitch_6
        0xdc8c -> :sswitch_9
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_8
        0xde92 -> :sswitch_b
        0xde93 -> :sswitch_a
        0xde94 -> :sswitch_b
        0xde99 -> :sswitch_a
        0xde9a -> :sswitch_a
    .end sparse-switch
.end method
