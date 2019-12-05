.class public Lcom/android/server/NubiaPermissionDialog;
.super Lcom/android/server/NubiaBasePermissionDialog;
.source "NubiaPermissionDialog.java"


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final ACTION_TIMEDOWN:I = 0xf

.field private static final CALENDAR_PERMISSIONS:[Ljava/lang/String;

.field private static final CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private static final CONTACTS_PERMISSIONS:[Ljava/lang/String;

.field static final DISMISS_TIMEOUT:J = 0x3a98L

.field public static final HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

.field private static final LOCATION_PERMISSIONS:[Ljava/lang/String;

.field private static final MICROPHONE_PERMISSIONS:[Ljava/lang/String;

.field static final ONE_SECOND:J = 0x3e8L

.field public static final PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

.field private static final PHONE_PERMISSIONS:[Ljava/lang/String;

.field private static final SENSORS_PERMISSIONS:[Ljava/lang/String;

.field private static final SMS_PERMISSIONS:[Ljava/lang/String;

.field private static final STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NubiaPermissionDialog"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCancel:Landroid/widget/Button;

.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountDown:I

.field private final mHandler:Landroid/os/Handler;

.field private mModeAsk:I

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPM:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private final mUserHandle:Landroid/os/UserHandle;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v5

    const-string v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v6

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.USE_SIP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->PHONE_PERMISSIONS:[Ljava/lang/String;

    .line 87
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v1, v0, v6

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.READ_CELL_BROADCASTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->SMS_PERMISSIONS:[Ljava/lang/String;

    .line 101
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    .line 105
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CALENDAR_PERMISSIONS:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    .line 113
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.BODY_SENSORS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->SENSORS_PERMISSIONS:[Ljava/lang/String;

    .line 115
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->PHONE_PERMISSIONS:[Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->SMS_PERMISSIONS:[Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/NubiaPermissionDialog;->CALENDAR_PERMISSIONS:[Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/NubiaPermissionDialog;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/NubiaPermissionDialog;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/NubiaPermissionDialog;->SENSORS_PERMISSIONS:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/NubiaPermissionDialog;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    .line 131
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v1, v0, v5

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/NubiaPermissionDialog;->HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/NubiaBasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 225
    new-instance v4, Lcom/android/server/NubiaPermissionDialog$3;

    invoke-direct {v4, p0}, Lcom/android/server/NubiaPermissionDialog$3;-><init>(Lcom/android/server/NubiaPermissionDialog;)V

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object p1, p0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 149
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;

    .line 150
    const-string v4, "appops"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 151
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mPM:Landroid/content/pm/PackageManager;

    .line 152
    iput-object p2, p0, Lcom/android/server/NubiaPermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 153
    iput p3, p0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    .line 154
    iput-object p5, p0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 155
    iput p4, p0, Lcom/android/server/NubiaPermissionDialog;->mUid:I

    .line 156
    const v4, 0x3080006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 157
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionDialog;->revokeModeAsk()I

    move-result v4

    iput v4, p0, Lcom/android/server/NubiaPermissionDialog;->mModeAsk:I

    .line 159
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/NubiaPermissionDialog;->setCancelable(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/NubiaPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 162
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/NubiaPermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x110

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 165
    invoke-virtual {p0}, Lcom/android/server/NubiaPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/NubiaPermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x303001d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    .line 169
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v5, 0x30d0061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 170
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v5, 0x30d005f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/server/NubiaPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v5, 0x30d0062

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mChoice:Landroid/widget/CheckBox;

    .line 172
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v5, 0x30d0064

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    .line 173
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/NubiaPermissionDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/NubiaPermissionDialog$1;-><init>(Lcom/android/server/NubiaPermissionDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const/16 v4, 0xf

    iput v4, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    .line 179
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    const v5, 0x30c005c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    const v5, 0x30d0065

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mConfirm:Landroid/widget/Button;

    .line 181
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mConfirm:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/NubiaPermissionDialog$2;

    invoke-direct {v5, p0}, Lcom/android/server/NubiaPermissionDialog$2;-><init>(Lcom/android/server/NubiaPermissionDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/NubiaPermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    .line 189
    :cond_0
    const v4, 0x30c005e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/NubiaPermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/server/NubiaPermissionDialog;->setView(Landroid/view/View;)V

    .line 192
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/NubiaPermissionDialog;->mCountDown:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NubiaPermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/NubiaPermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 213
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    :cond_0
    :goto_0
    return-object v3

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private revokeModeAsk()I
    .locals 6

    .prologue
    .line 197
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 199
    .local v3, "mode":Ljava/lang/Integer;
    :try_start_0
    const-string v5, "android.app.AppOpsManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 200
    .local v1, "AppOpsManager":Ljava/lang/Class;
    const-string v5, "MODE_ASK"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 201
    .local v4, "modeAsk":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 202
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 206
    .end local v1    # "AppOpsManager":Ljava/lang/Class;
    .end local v4    # "modeAsk":Ljava/lang/reflect/Field;
    :goto_0
    return v5

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0
.end method
