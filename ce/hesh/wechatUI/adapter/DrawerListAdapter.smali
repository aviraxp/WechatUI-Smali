.class public Lce/hesh/wechatUI/adapter/DrawerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/hesh/wechatUI/adapter/DrawerListAdapter$1;,
        Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_ITEM:I

.field private final TYPE_SEPARATOR:I

.field private mContext:Landroid/content/Context;

.field private mDrawerListItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lce/hesh/wechatUI/Common$DrawerListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightedItemPosition:I

.field private mLauncherUI:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

.field private sectionHeader:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "launcherUI"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->TYPE_ITEM:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->TYPE_SEPARATOR:I

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->sectionHeader:Ljava/util/TreeSet;

    .line 41
    iput-object p1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mLauncherUI:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .line 43
    return-void
.end method


# virtual methods
.method public addItem(III)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "IconResid"    # I
    .param p3, "TextResid"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    new-instance v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    invoke-direct {v1, p1, p2, p3}, Lce/hesh/wechatUI/Common$DrawerListItem;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public addSectionHeaderItem(II)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "TextResid"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    new-instance v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    invoke-direct {v1, p1, p2}, Lce/hesh/wechatUI/Common$DrawerListItem;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->sectionHeader:Ljava/util/TreeSet;

    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lce/hesh/wechatUI/Common$DrawerListItem;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce/hesh/wechatUI/Common$DrawerListItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->getItem(I)Lce/hesh/wechatUI/Common$DrawerListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 236
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->sectionHeader:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->getItem(I)Lce/hesh/wechatUI/Common$DrawerListItem;

    move-result-object v1

    .line 59
    .local v1, "drawerListItem":Lce/hesh/wechatUI/Common$DrawerListItem;
    invoke-virtual {p0, p1}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->getItemViewType(I)I

    move-result v0

    .line 60
    .local v0, "ItemType":I
    if-nez p2, :cond_c2

    .line 61
    new-instance v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;

    invoke-direct {v3, p0, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;-><init>(Lce/hesh/wechatUI/adapter/DrawerListAdapter;Lce/hesh/wechatUI/adapter/DrawerListAdapter$1;)V

    .line 62
    .local v3, "viewHolder":Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;
    packed-switch v0, :pswitch_data_3e8

    .line 69
    iget-object v4, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040003

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    const v4, 0x7f0b0005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 71
    const v4, 0x7f0b0004

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 72
    const v4, 0x7f0b0006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->unread:Landroid/widget/TextView;

    .line 75
    :goto_42
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_45
    if-eqz v1, :cond_7e

    .line 81
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_d0

    .line 82
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_shopping()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_5b

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 84
    :cond_5b
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/XModuleResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .end local v2    # "s":Ljava/lang/String;
    :goto_68
    if-nez v0, :cond_7e

    .line 197
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->ICON_ID:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/XModuleResources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->unread:Landroid/widget/TextView;

    iget-object v5, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_7e
    iget v4, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mHighlightedItemPosition:I

    if-ne p1, v4, :cond_3c0

    .line 202
    sget-object v4, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    const v5, 0x7f090002

    invoke-virtual {v4, v5, v7}, Landroid/content/res/XModuleResources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget v5, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    if-nez v0, :cond_a5

    .line 205
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v5, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 206
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->unread:Landroid/widget/TextView;

    sget v5, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->actionBarColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_a5
    :goto_a5
    return-object p2

    .line 64
    :pswitch_a6
    iget-object v4, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040004

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    const v4, 0x7f0b0008

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    goto :goto_42

    .line 77
    .end local v3    # "viewHolder":Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;
    :cond_c2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;
    goto/16 :goto_45

    .line 86
    .restart local v2    # "s":Ljava/lang/String;
    :cond_ca
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 87
    .end local v2    # "s":Ljava/lang/String;
    :cond_d0
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_fd

    .line 88
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_contact()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_e3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 90
    :cond_e3
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 92
    :cond_f6
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 94
    .end local v2    # "s":Ljava/lang/String;
    :cond_fd
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_12b

    .line 95
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_discovery()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_111

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 97
    :cond_111
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 99
    :cond_124
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 100
    .end local v2    # "s":Ljava/lang/String;
    :cond_12b
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_159

    .line 101
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_moments()Ljava/lang/String;

    move-result-object v2

    .line 102
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_13f

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 103
    :cond_13f
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 105
    :cond_152
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 107
    .end local v2    # "s":Ljava/lang/String;
    :cond_159
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_187

    .line 108
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_sns_scan()Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_16d

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 110
    :cond_16d
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 112
    :cond_180
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 114
    .end local v2    # "s":Ljava/lang/String;
    :cond_187
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_1b5

    .line 115
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_sns_shake()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_19b

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ae

    .line 117
    :cond_19b
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 119
    :cond_1ae
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 121
    .end local v2    # "s":Ljava/lang/String;
    :cond_1b5
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x18

    if-ne v4, v5, :cond_1e3

    .line 122
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_nearby_people()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_1c9

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dc

    .line 124
    :cond_1c9
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 126
    :cond_1dc
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 128
    .end local v2    # "s":Ljava/lang/String;
    :cond_1e3
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x19

    if-ne v4, v5, :cond_211

    .line 129
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_drift_bottle()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_1f7

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 131
    :cond_1f7
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 133
    :cond_20a
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 135
    .end local v2    # "s":Ljava/lang/String;
    :cond_211
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    if-nez v4, :cond_23d

    .line 136
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_main_chat()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_223

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_236

    .line 138
    :cond_223
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 140
    :cond_236
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 141
    .end local v2    # "s":Ljava/lang/String;
    :cond_23d
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_26b

    .line 142
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_games()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_251

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_264

    .line 144
    :cond_251
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 146
    :cond_264
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 147
    .end local v2    # "s":Ljava/lang/String;
    :cond_26b
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_299

    .line 148
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_me()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_27f

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_292

    .line 150
    :cond_27f
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 152
    :cond_292
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 154
    .end local v2    # "s":Ljava/lang/String;
    :cond_299
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_2c7

    .line 155
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_photo()Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_2ad

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c0

    .line 157
    :cond_2ad
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 159
    :cond_2c0
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 161
    .end local v2    # "s":Ljava/lang/String;
    :cond_2c7
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2f5

    .line 162
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_collect()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_2db

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ee

    .line 164
    :cond_2db
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 166
    :cond_2ee
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 168
    .end local v2    # "s":Ljava/lang/String;
    :cond_2f5
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x21

    if-ne v4, v5, :cond_323

    .line 169
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_wallet()Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_309

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31c

    .line 171
    :cond_309
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 173
    :cond_31c
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 174
    .end local v2    # "s":Ljava/lang/String;
    :cond_323
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_351

    .line 175
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_card_package()Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_337

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34a

    .line 177
    :cond_337
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 179
    :cond_34a
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 180
    .end local v2    # "s":Ljava/lang/String;
    :cond_351
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x23

    if-ne v4, v5, :cond_37f

    .line 181
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_emoj()Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_365

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_378

    .line 183
    :cond_365
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 185
    :cond_378
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 186
    .end local v2    # "s":Ljava/lang/String;
    :cond_37f
    iget v4, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3ad

    .line 187
    invoke-static {}, Lce/hesh/wechatUI/Common$DIY_TEXT;->getDT_setting()Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_393

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a6

    .line 189
    :cond_393
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 191
    :cond_3a6
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 193
    .end local v2    # "s":Ljava/lang/String;
    :cond_3ad
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 209
    :cond_3c0
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    const v6, 0x7f090009

    invoke-virtual {v5, v6, v7}, Landroid/content/res/XModuleResources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    if-nez v0, :cond_a5

    .line 212
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 213
    iget-object v4, v3, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->unread:Landroid/widget/TextView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_RES:Landroid/content/res/XModuleResources;

    const v6, 0x7f09002f

    invoke-virtual {v5, v6, v7}, Landroid/content/res/XModuleResources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a5

    .line 62
    :pswitch_data_3e8
    .packed-switch 0x1
        :pswitch_a6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x2

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 241
    .local v0, "key":I
    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x14

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_16

    .line 242
    :cond_13
    invoke-virtual {p0, v0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setSingleItemHighlighted(I)V

    .line 244
    :cond_16
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mLauncherUI:Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    invoke-virtual {v1, v0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->callMMFeature(I)V

    .line 245
    return-void
.end method

.method public setContactUnread(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 265
    if-lez p1, :cond_15

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "text":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 272
    return-void

    .line 268
    .end local v0    # "text":Ljava/lang/String;
    :cond_15
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_6
.end method

.method public setDriftBottleUnread(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 320
    if-lez p1, :cond_16

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "text":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 327
    return-void

    .line 323
    .end local v0    # "text":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_6
.end method

.method public setMainChattingUnread(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 254
    if-lez p1, :cond_15

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "text":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 261
    return-void

    .line 257
    .end local v0    # "text":Ljava/lang/String;
    :cond_15
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_6
.end method

.method public setMomentsPoint(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    .line 287
    if-eqz p1, :cond_14

    .line 288
    const-string v0, "new"

    .line 292
    .local v0, "text":Ljava/lang/String;
    :goto_4
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 294
    return-void

    .line 290
    .end local v0    # "text":Ljava/lang/String;
    :cond_14
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_4
.end method

.method public setMomentsUnread(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 276
    if-lez p1, :cond_16

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "text":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 283
    return-void

    .line 279
    .end local v0    # "text":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_6
.end method

.method public setNearbyPeopleUnread(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 298
    if-lez p1, :cond_16

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "text":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 305
    return-void

    .line 301
    .end local v0    # "text":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_6
.end method

.method public setShakeUnread(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 309
    if-lez p1, :cond_16

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "text":Ljava/lang/String;
    :goto_6
    iget-object v1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/hesh/wechatUI/Common$DrawerListItem;

    iput-object v0, v1, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 316
    return-void

    .line 312
    .end local v0    # "text":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_6
.end method

.method public setSingleItemHighlighted(I)V
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mDrawerListItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iput v0, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->mHighlightedItemPosition:I

    .line 249
    invoke-virtual {p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->notifyDataSetChanged()V

    .line 250
    return-void
.end method
