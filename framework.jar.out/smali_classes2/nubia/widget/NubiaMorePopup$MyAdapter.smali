.class Lnubia/widget/NubiaMorePopup$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mDataList:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # [Ljava/lang/CharSequence;

    .prologue
    .line 590
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 591
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 592
    iput-object p3, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    .line 593
    return-void
.end method

.method private initItem(Ljava/lang/CharSequence;Landroid/view/View;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "postion"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    const v1, 0x30d005d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 624
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z
    invoke-static {v1}, Lnubia/widget/NubiaMorePopup;->access$200(Lnubia/widget/NubiaMorePopup;)[Z

    move-result-object v1

    aget-boolean v1, v1, p3

    if-nez v1, :cond_0

    .line 627
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 628
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 633
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 631
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "postion"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mDataList:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 607
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "postion"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 612
    if-nez p2, :cond_0

    .line 613
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x303001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 617
    :cond_0
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaMorePopup$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p2, p1}, Lnubia/widget/NubiaMorePopup$MyAdapter;->initItem(Ljava/lang/CharSequence;Landroid/view/View;I)V

    .line 618
    return-object p2
.end method
