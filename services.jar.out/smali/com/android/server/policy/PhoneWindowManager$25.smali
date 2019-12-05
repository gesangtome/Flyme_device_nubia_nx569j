.class Lcom/android/server/policy/PhoneWindowManager$25;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 6523
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$25;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6525
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    .line 6527
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6529
    const v2, 0x10304bb

    .line 6541
    .local v2, "theme":I
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x30e0005

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 6542
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$25$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$25$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$25;Landroid/content/Context;I)V

    iput-object v4, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6566
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6567
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v4, 0x104037e

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 6571
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 6572
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 6573
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 6575
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x102

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 6578
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 6579
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 6580
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x5

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 6581
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6582
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 6583
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 6585
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "theme":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$25;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6586
    return-void

    .line 6530
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.television"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6532
    const v2, 0x103049a

    .restart local v2    # "theme":I
    goto/16 :goto_0

    .line 6534
    .end local v2    # "theme":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "theme":I
    goto/16 :goto_0

    .line 6569
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v4, 0x104037f

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto/16 :goto_1
.end method
