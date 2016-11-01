.class Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DrawerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/adapter/DrawerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

.field unread:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lce/hesh/wechatUI/adapter/DrawerListAdapter;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;->this$0:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lce/hesh/wechatUI/adapter/DrawerListAdapter;Lce/hesh/wechatUI/adapter/DrawerListAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lce/hesh/wechatUI/adapter/DrawerListAdapter;
    .param p2, "x1"    # Lce/hesh/wechatUI/adapter/DrawerListAdapter$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lce/hesh/wechatUI/adapter/DrawerListAdapter$ViewHolder;-><init>(Lce/hesh/wechatUI/adapter/DrawerListAdapter;)V

    return-void
.end method
