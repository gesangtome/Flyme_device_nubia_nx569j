.class public Lcom/android/internal/telephony/OperatorSimInfo;
.super Ljava/lang/Object;
.source "OperatorSimInfo.java"


# instance fields
.field private final GENERIC_SIM_DRAWABLE_TAG:Ljava/lang/String;

.field private final OPERATOR_DISPLAY_NAME_TAG:Ljava/lang/String;

.field private final OPERATOR_MCC_MNC_ARRAY_TAG:Ljava/lang/String;

.field private final OPERATOR_SIM_DRAWABLE_TAG:Ljava/lang/String;

.field private final OPERATOR_SIM_ICON_PROPERTY_NAME:Ljava/lang/String;

.field private final PRE_PACKAGE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mGenericSimDrawableIcon:Landroid/graphics/drawable/Drawable;

.field private mIsCustomSimFeatureEnabled:Z

.field private mOperatorDisplayName:Ljava/lang/String;

.field private mOperatorDrawableIcon:Landroid/graphics/drawable/Drawable;

.field private mSize:I

.field private mccMncList:[Ljava/lang/String;

.field private prePackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "generic_sim_drawable_name"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->GENERIC_SIM_DRAWABLE_TAG:Ljava/lang/String;

    .line 42
    const-string v1, "mcc_mnc_list"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_MCC_MNC_ARRAY_TAG:Ljava/lang/String;

    .line 43
    const-string v1, "operator_display_name"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_DISPLAY_NAME_TAG:Ljava/lang/String;

    .line 44
    const-string v1, "operator_sim_drawable_name"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_SIM_DRAWABLE_TAG:Ljava/lang/String;

    .line 45
    const-string v1, "persist.radio.custom_sim_icon"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->OPERATOR_SIM_ICON_PROPERTY_NAME:Ljava/lang/String;

    .line 46
    const-string v1, "com.android.customsiminfo.res"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->PRE_PACKAGE_NAME:Ljava/lang/String;

    .line 47
    const-string v1, "OperatorSimInfo"

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->TAG:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    .line 57
    iput-boolean v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mIsCustomSimFeatureEnabled:Z

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    .line 63
    :try_start_0
    const-string v1, "com.android.customsiminfo.res"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getMccMncListFromApp()V

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorLabelFromApp()V

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getOperatorDrawableFromApp()V

    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/OperatorSimInfo;->getGenericDrawableFromApp()V

    .line 74
    :cond_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OperatorSimInfo"

    const-string v2, "Create Res Apk Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getGenericDrawableFromApp()V
    .locals 8

    .prologue
    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "generic_sim_drawable_name"

    const-string v6, "string"

    const-string v7, "com.android.customsiminfo.res"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "genericDrawableStringResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "genericDrawableNameString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.android.customsiminfo.res"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "genericSimDrawableResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mGenericSimDrawableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "genericDrawableNameString":Ljava/lang/String;
    .end local v1    # "genericDrawableStringResId":I
    .end local v3    # "genericSimDrawableResId":I
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "genericResException":Ljava/lang/Exception;
    const-string v4, "OperatorSimInfo"

    const-string v5, "Generic icon not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMccMncListFromApp()V
    .locals 5

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mcc_mnc_list"

    const-string v3, "array"

    const-string v4, "com.android.customsiminfo.res"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "arrayResId":I
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    .line 82
    return-void
.end method

.method private getOperatorDrawableFromApp()V
    .locals 8

    .prologue
    .line 100
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "operator_sim_drawable_name"

    const-string v6, "string"

    const-string v7, "com.android.customsiminfo.res"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, "drawableStringResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "drawableNameString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.android.customsiminfo.res"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "drawableResId":I
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDrawableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "drawableNameString":Ljava/lang/String;
    .end local v1    # "drawableResId":I
    .end local v2    # "drawableStringResId":I
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, "resException":Ljava/lang/Exception;
    const-string v4, "OperatorSimInfo"

    const-string v5, "Operator icon not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOperatorLabelFromApp()V
    .locals 6

    .prologue
    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "operator_display_name"

    const-string v4, "string"

    const-string v5, "com.android.customsiminfo.res"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "labelResId":I
    iget-object v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->prePackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "labelResId":I
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "textException":Ljava/lang/Exception;
    const-string v2, "OperatorSimInfo"

    const-string v3, "Operator label not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getGenericSimDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mGenericSimDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOperatorDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mOperatorDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOperatorFeatureEnabled()Z
    .locals 2

    .prologue
    .line 181
    const-string v0, "persist.radio.custom_sim_icon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mIsCustomSimFeatureEnabled:Z

    .line 183
    iget-boolean v0, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mIsCustomSimFeatureEnabled:Z

    return v0
.end method

.method public isSimTypeOperator(I)Z
    .locals 7
    .param p1, "slotIndex"    # I

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, "mccMncString":Ljava/lang/String;
    const/4 v3, -0x1

    .line 134
    .local v3, "mccMnc":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "isSimSlotOperator":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 139
    iget-object v6, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-lez v6, :cond_2

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-ge v0, v6, :cond_0

    .line 141
    iget-object v6, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, "operatorMccMnc":I
    if-ne v5, v3, :cond_1

    .line 143
    const/4 v1, 0x1

    .end local v5    # "operatorMccMnc":I
    :cond_0
    move v2, v1

    .line 150
    .end local v0    # "i":I
    .end local v1    # "isSimSlotOperator":Z
    .local v2, "isSimSlotOperator":I
    :goto_1
    return v2

    .line 140
    .end local v2    # "isSimSlotOperator":I
    .restart local v0    # "i":I
    .restart local v1    # "isSimSlotOperator":Z
    .restart local v5    # "operatorMccMnc":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v5    # "operatorMccMnc":I
    :cond_2
    move v2, v1

    .line 150
    .restart local v2    # "isSimSlotOperator":I
    goto :goto_1
.end method

.method public isSimTypeOperatorForMccMnc(I)Z
    .locals 5
    .param p1, "currentMccMnc"    # I

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "isSimSlotOperator":Z
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-lez v4, :cond_2

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mSize:I

    if-ge v0, v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/android/internal/telephony/OperatorSimInfo;->mccMncList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, "operatorMccMnc":I
    if-ne v3, p1, :cond_1

    .line 159
    const/4 v1, 0x1

    .end local v3    # "operatorMccMnc":I
    :cond_0
    move v2, v1

    .line 165
    .end local v0    # "i":I
    .end local v1    # "isSimSlotOperator":Z
    .local v2, "isSimSlotOperator":I
    :goto_1
    return v2

    .line 156
    .end local v2    # "isSimSlotOperator":I
    .restart local v0    # "i":I
    .restart local v1    # "isSimSlotOperator":Z
    .restart local v3    # "operatorMccMnc":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v3    # "operatorMccMnc":I
    :cond_2
    move v2, v1

    .line 165
    .restart local v2    # "isSimSlotOperator":I
    goto :goto_1
.end method
