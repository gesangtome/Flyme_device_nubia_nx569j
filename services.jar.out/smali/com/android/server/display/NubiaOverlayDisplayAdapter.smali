.class final Lcom/android/server/display/NubiaOverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "NubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_NAME_PREFIX:Ljava/lang/String; = "singleUI:"

.field private static final NUBIA_OVERLAY_DISPLAY_CLOSE_MODE:Ljava/lang/String; = "single_ui_close_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final STATUS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SU_MODE_CLOSE:I = 0x0

.field private static final SU_MODE_LEFT:I = 0x2

.field private static final SU_MODE_RIGHT:I = 0x1

.field static final TAG:Ljava/lang/String; = "SingleHand"


# instance fields
.field private mCurrentSingleUIMode:I

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private rotated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "(\\d+);(\\d+);(\\d+);(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->STATUS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 7
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 97
    const-string v5, "SingleHand"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 142
    iput v6, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    .line 460
    iput-boolean v6, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->rotated:Z

    .line 98
    iput-object p5, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->rotated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/NubiaOverlayDisplayAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->rotated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 21

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    const/4 v12, 0x0

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 150
    .local v18, "singleUIMode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    if-eqz v2, :cond_2

    if-nez v18, :cond_0

    .line 160
    :cond_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    const-string v2, "SingleHand"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 166
    .local v16, "overlay":Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_1

    .line 168
    .end local v16    # "overlay":Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 172
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v18, :cond_0

    .line 176
    const-string v11, ""

    .line 177
    .local v11, "leftOrRight":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 178
    const-string v11, "right"

    .line 182
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 183
    .local v5, "x":I
    const/4 v6, 0x0

    .line 184
    .local v6, "y":I
    const/16 v7, 0x3c0

    .line 185
    .local v7, "width":I
    const/16 v8, 0x21c

    .line 187
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 189
    .local v19, "status":Ljava/lang/String;
    if-eqz v19, :cond_8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 190
    sget-object v2, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->STATUS_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 191
    .local v15, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 193
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 195
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 196
    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 207
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :goto_3
    const/16 v9, 0x1e0

    .line 208
    .local v9, "densityDpi":I
    int-to-float v2, v7

    int-to-float v3, v8

    div-float v17, v2, v3

    .line 209
    .local v17, "rate":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->rotated:Z

    .line 210
    const-string v4, "singleUI_view"

    .line 211
    .local v4, "name":Ljava/lang/String;
    const/16 v10, 0x33

    .line 213
    .local v10, "gravity":I
    const-string v2, "SingleHand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SingleUI opened :name = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "x,y"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " ,wid,hei = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " ,densityDpi = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", gravity = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", leftOrRight = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ",rate = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v2, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    move/from16 v0, v17

    float-to-double v12, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter;Ljava/lang/String;IIIIIILjava/lang/String;D)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 179
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "densityDpi":I
    .end local v10    # "gravity":I
    .end local v17    # "rate":F
    .end local v19    # "status":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 180
    const-string v11, "left"

    goto/16 :goto_2

    .line 198
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    .restart local v15    # "matcher":Ljava/util/regex/Matcher;
    .restart local v19    # "status":Ljava/lang/String;
    :cond_7
    const-string v2, "SingleHand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUBIA_OVERLAY_DISPLAY_STATUS is NOT MATCH @ "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 203
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    const-string v2, "SingleHand"

    const-string v3, "NUBIA_OVERLAY_DISPLAY_STATUS is EMPTY but still go into NubiaOverlayDisplayAdapter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 111
    .local v1, "overlay":Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 113
    .end local v1    # "overlay":Lcom/android/server/display/NubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/NubiaOverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/NubiaOverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method
