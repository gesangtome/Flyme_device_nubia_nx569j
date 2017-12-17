.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const v0, #android:layout@preference_list_fragment#t

    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    new-instance v0, Landroid/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Landroid/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$3;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 110
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 359
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onBindPreferences()V

    .line 363
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 400
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 405
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_1
    const v2, #android:id@list#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 409
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 414
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 415
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_3
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 420
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 353
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 303
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 304
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 315
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 317
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 340
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    .line 376
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    iget-object v4, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v2

    .line 384
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_2

    move v2, v3

    .line 386
    goto :goto_0

    .line 388
    :cond_2
    const v4, #android:id@list#t

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, "rawListView":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ListView;

    if-nez v4, :cond_3

    move v2, v3

    .line 390
    goto :goto_0

    .line 392
    :cond_3
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 393
    iget-object v4, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v4, :cond_0

    move v2, v3

    .line 394
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 200
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    .line 203
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 209
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 214
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->resetFlymeListViewPaddingTop()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 260
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const v0, 0x3030026

    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 169
    :cond_0
    new-instance v0, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 170
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    const v4, #android:^attr-private@preferenceFragmentStyle#t

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const v1, 0x3030026

    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 192
    :cond_0
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 240
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 241
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 232
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 235
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 324
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 248
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 251
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 219
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 220
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 225
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 226
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 227
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    .line 279
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    .line 283
    :cond_0
    return-void
.end method

.method private resetFlymeListViewPaddingTop()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->isActionBarToTop()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "actionBarHight":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:dimen@status_bar_height#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .local v7, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$dimen;->mz_preferencefragment_margin_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "marginToActionBar":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_0

    instance-of v8, v5, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/flyme/internal/R$dimen;->mz_preferencefragment_category_margin_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v2, 0x0

    .local v2, "listView":Landroid/widget/ListView;
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    .local v4, "paddingBottom":I
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v0

    add-int/2addr v9, v7

    add-int/2addr v9, v3

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {v2, v11}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .end local v0    # "actionBarHight":I
    .end local v3    # "marginToActionBar":I
    .end local v4    # "paddingBottom":I
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "statusBarHeight":I
    :cond_1
    return-void

    .restart local v0    # "actionBarHight":I
    .restart local v2    # "listView":Landroid/widget/ListView;
    .restart local v3    # "marginToActionBar":I
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v7    # "statusBarHeight":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
