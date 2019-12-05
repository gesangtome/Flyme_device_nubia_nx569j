.class Lnubia/widget/NubiaCharacterListView$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaCharacterListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnubia/widget/NubiaCharacterListView;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->this$0:Lnubia/widget/NubiaCharacterListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 545
    iput-object p2, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mContext:Landroid/content/Context;

    .line 546
    iput-object p3, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mList:Ljava/util/ArrayList;

    .line 547
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 561
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 568
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mContext:Landroid/content/Context;

    const v2, 0x303000f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 571
    :cond_0
    const v1, 0x30d003e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 572
    .local v0, "name":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    return-object p2
.end method

.method public setListView(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView$MyAdapter;->mList:Ljava/util/ArrayList;

    .line 578
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView$MyAdapter;->notifyDataSetChanged()V

    .line 579
    return-void
.end method
