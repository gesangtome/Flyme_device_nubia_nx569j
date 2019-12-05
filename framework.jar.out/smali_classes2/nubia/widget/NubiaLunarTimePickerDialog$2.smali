.class Lnubia/widget/NubiaLunarTimePickerDialog$2;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaLunarTimePickerDialog;->setupNubiaSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaLunarTimePickerDialog;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # setter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z
    invoke-static {v0, p2}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$602(Lnubia/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 516
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$600(Lnubia/widget/NubiaLunarTimePickerDialog;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 518
    :try_start_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnubia/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    .line 519
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->updateLunar()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1600(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    .line 520
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->updateLunarTitle()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$700(Lnubia/widget/NubiaLunarTimePickerDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaLunarTimePickerView;->noticeTimeChange()V

    .line 529
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$600(Lnubia/widget/NubiaLunarTimePickerDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # getter for: Lnubia/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lnubia/widget/NubiaLunarTimePickerView;
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1000(Lnubia/widget/NubiaLunarTimePickerDialog;)Lnubia/widget/NubiaLunarTimePickerView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnubia/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    .line 525
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->updateSolar()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1700(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    .line 526
    iget-object v0, p0, Lnubia/widget/NubiaLunarTimePickerDialog$2;->this$0:Lnubia/widget/NubiaLunarTimePickerDialog;

    # invokes: Lnubia/widget/NubiaLunarTimePickerDialog;->updateSolarTitle()V
    invoke-static {v0}, Lnubia/widget/NubiaLunarTimePickerDialog;->access$1800(Lnubia/widget/NubiaLunarTimePickerDialog;)V

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method
