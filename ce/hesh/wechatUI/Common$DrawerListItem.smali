.class public Lce/hesh/wechatUI/Common$DrawerListItem;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawerListItem"
.end annotation


# instance fields
.field public ICON_ID:I

.field public final KEY:I

.field public TEXT_ID:I

.field public unread:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "TextResid"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 225
    iput p1, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    .line 226
    iput p2, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    .line 227
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "IconResid"    # I
    .param p3, "TextResid"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->unread:Ljava/lang/String;

    .line 230
    iput p1, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->KEY:I

    .line 231
    iput p2, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->ICON_ID:I

    .line 232
    iput p3, p0, Lce/hesh/wechatUI/Common$DrawerListItem;->TEXT_ID:I

    .line 233
    return-void
.end method
