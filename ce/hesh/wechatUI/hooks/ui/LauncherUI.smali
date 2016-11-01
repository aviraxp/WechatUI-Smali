.class public Lce/hesh/wechatUI/hooks/ui/LauncherUI;
.super Ljava/lang/Object;
.source "LauncherUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;,
        Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;
    }
.end annotation


# static fields
.field public static ViewPager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static tabViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lce/hesh/wechatUI/hooks/ui/LauncherUI;",
            ">;"
        }
    .end annotation
.end field

.field public static viewPage:Ljava/lang/Object;


# instance fields
.field private LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bg_image:Landroid/widget/ImageView;

.field protected contactTabUnread:Lce/hesh/wechatUI/view/BadgeView;

.field private customViewPager:Landroid/view/ViewGroup;

.field private drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field protected drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

.field protected drawer_indicator_poi:Landroid/widget/ImageView;

.field protected foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

.field private isMainTabCreated:Z

.field private mDrawer:Landroid/view/View;

.field private mDrawerBgBitmap:Landroid/graphics/Bitmap;

.field protected mainTabUnread:Lce/hesh/wechatUI/view/BadgeView;

.field private materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

.field protected materialTabsLayout:Landroid/widget/LinearLayout;

.field private myDrawerListener:Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;

.field private navMode:Ljava/lang/String;

.field private tabViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public user_avatar:Landroid/widget/ImageView;

.field private username:Landroid/widget/TextView;

.field private wechatID:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViews:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "launcherUI"    # Landroid/app/Activity;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;

    .line 346
    return-void
.end method

.method static synthetic access$000(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/support/v4/widget/DrawerLayout;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p1, "x1"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->initNewActionBar(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V
    .registers 1
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    invoke-direct {p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->refreshDrawerInfo()V

    return-void
.end method

.method static synthetic access$300(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Lce/hesh/wechatUI/view/tabs/MaterialTabHost;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    return-object v0
.end method

.method static synthetic access$400(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Z
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-boolean v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->isMainTabCreated:Z

    return v0
.end method

.method static synthetic access$502(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Z)Z
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->isMainTabCreated:Z

    return p1
.end method

.method static synthetic access$600(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;

    .prologue
    .line 73
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->navMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;Z)V
    .registers 3
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->removeMMTabs(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$800(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p1, "x1"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->addNavigationDrawer(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$900(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lce/hesh/wechatUI/hooks/ui/LauncherUI;
    .param p1, "x1"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->addTabs(Landroid/app/Activity;)V

    return-void
.end method

.method private addNavigationDrawer(Landroid/app/Activity;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 644
    new-instance v5, Landroid/support/v4/widget/DrawerLayout;

    sget-object v6, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 645
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v9}, Landroid/support/v4/widget/DrawerLayout;->setFocusable(Z)V

    .line 646
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v9}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 647
    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const v6, 0x7f040002

    invoke-static {v5, v6, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    .line 648
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    sget-object v6, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-static {v6}, Lce/hesh/wechatUI/Common;->getDrawerWidthdip(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v5

    invoke-direct {v1, v5, v8}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 649
    .local v1, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->getDrawerGravity()Ljava/lang/String;

    move-result-object v5

    const-string v6, "left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 650
    const v5, 0x800003

    iput v5, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 654
    :goto_45
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const v6, 0x7f0b0003

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 657
    .local v2, "mDrawerList":Landroid/widget/ListView;
    new-instance v5, Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    sget-object v6, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct {v5, v6, p0}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;-><init>(Landroid/content/Context;Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    .line 658
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 660
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-direct {p0, v5}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->initDrawerList(Lce/hesh/wechatUI/adapter/DrawerListAdapter;)V

    .line 661
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 662
    sget-object v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->main_tab:Ljava/lang/String;

    invoke-static {p1, v5}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 663
    .local v3, "main_tab":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 664
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v3}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 665
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v6, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 666
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5, v6}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const/high16 v6, 0x7f0b0000

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->bg_image:Landroid/widget/ImageView;

    .line 668
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->bg_image:Landroid/widget/ImageView;

    new-instance v6, Lce/hesh/wechatUI/hooks/ui/LauncherUI$13;

    invoke-direct {v6, p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$13;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->username:Landroid/widget/TextView;

    .line 673
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->wechatID:Landroid/widget/TextView;

    .line 674
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 675
    .local v4, "user_avatar_container":Landroid/view/ViewGroup;
    new-instance v5, Lce/hesh/wechatUI/widget/CircleImageView;

    sget-object v6, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lce/hesh/wechatUI/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->user_avatar:Landroid/widget/ImageView;

    .line 676
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->user_avatar:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 677
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->user_avatar:Landroid/widget/ImageView;

    new-instance v6, Lce/hesh/wechatUI/hooks/ui/LauncherUI$14;

    invoke-direct {v6, p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$14;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    new-instance v5, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;

    invoke-direct {v5, p0, v11}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Lce/hesh/wechatUI/hooks/ui/LauncherUI$1;)V

    iput-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->myDrawerListener:Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;

    .line 687
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v6, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->myDrawerListener:Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 689
    sget v5, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    if-ge v5, v10, :cond_10a

    .line 690
    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const v6, 0x7f0b001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 692
    .local v0, "fixig":Landroid/widget/ImageView;
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    .end local v0    # "fixig":Landroid/widget/ImageView;
    :cond_10a
    return-void

    .line 652
    .end local v2    # "mDrawerList":Landroid/widget/ListView;
    .end local v3    # "main_tab":Landroid/view/View;
    .end local v4    # "user_avatar_container":Landroid/view/ViewGroup;
    :cond_10b
    const v5, 0x800005

    iput v5, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    goto/16 :goto_45
.end method

.method private addTabs(Landroid/app/Activity;)V
    .registers 24
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 444
    sget-object v17, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;

    .line 446
    sget-object v17, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 447
    .local v16, "windowManager":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 448
    .local v4, "DM":Landroid/util/DisplayMetrics;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 449
    new-instance v15, Landroid/widget/RelativeLayout;

    sget-object v17, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 451
    .local v15, "relativeLayout":Landroid/widget/RelativeLayout;
    sget-object v17, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v18, "actionbar_color"

    const-string v19, "#22292C"

    invoke-virtual/range {v17 .. v19}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 453
    .local v7, "actionbar_color":I
    new-instance v17, Landroid/widget/LinearLayout;

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/high16 v18, -0x1000000

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 456
    new-instance v17, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setMinimumWidth(I)V

    .line 458
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isEnableActionBarColor()Z

    move-result v17

    if-eqz v17, :cond_d9

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setBackgroundColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setPrimaryColor(I)V

    .line 466
    :goto_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setAccentColor(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setHasIcons(Z)V

    .line 468
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a6
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v10, v0, :cond_f8

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->newTab()Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setIcon(Landroid/graphics/drawable/Drawable;)Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v18

    new-instance v19, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$10;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    invoke-virtual/range {v18 .. v19}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->setTabListener(Lce/hesh/wechatUI/view/tabs/MaterialTabListener;)Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->addTab(Lce/hesh/wechatUI/view/tabs/MaterialTab;)V

    .line 468
    add-int/lit8 v10, v10, 0x1

    goto :goto_a6

    .line 462
    .end local v10    # "i":I
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    const-string v18, "#22292C"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setBackgroundColor(I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v17, v0

    const-string v18, "#22292C"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->setPrimaryColor(I)V

    goto :goto_8f

    .line 500
    .restart local v10    # "i":I
    :cond_f8
    new-instance v17, Lce/hesh/wechatUI/view/BadgeView;

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mainTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mainTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->getActionBarColorFromPrefs()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setTextColor(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mainTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getTab(I)Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getIcon()Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mainTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    .line 505
    new-instance v17, Lce/hesh/wechatUI/view/BadgeView;

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->contactTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->contactTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->getActionBarColorFromPrefs()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setTextColor(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->contactTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getTab(I)Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getIcon()Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->contactTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    .line 510
    new-instance v17, Lce/hesh/wechatUI/view/BadgeView;

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->getActionBarColorFromPrefs()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setTextColor(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lce/hesh/wechatUI/view/tabs/MaterialTabHost;->getTab(I)Lce/hesh/wechatUI/view/tabs/MaterialTab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lce/hesh/wechatUI/view/tabs/MaterialTab;->getIcon()Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setShowBackgroundOnly(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->foundTabUnread:Lce/hesh/wechatUI/view/BadgeView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lce/hesh/wechatUI/view/BadgeView;->setBadgeCount(I)V

    .line 516
    sget v17, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_20a

    .line 517
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v20, 0x30

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 519
    .local v9, "emptyViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 520
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 522
    new-instance v8, Landroid/view/View;

    sget-object v17, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 523
    .local v8, "emptyView":Landroid/view/View;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 524
    const v17, 0x7f0b0007

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setId(I)V

    .line 525
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual {v15, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 529
    .end local v8    # "emptyView":Landroid/view/View;
    .end local v9    # "emptyViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_20a
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v20, 0x30

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 532
    .local v13, "paramTab":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabs:Lce/hesh/wechatUI/view/tabs/MaterialTabHost;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    invoke-static {}, Lce/hesh/wechatUI/utils/SdkUtils;->hasLOLLIPOP()Z

    move-result v17

    if-eqz v17, :cond_254

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v20, 0x4

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 538
    :cond_254
    sget v17, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_37a

    .line 539
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v20, 0x30

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 541
    .local v14, "paramTabLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 542
    const/16 v17, 0x3

    const v18, 0x7f0b0007

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f0b000d

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setId(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :goto_29f
    sget-object v17, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->ViewPager:Ljava/lang/Class;

    const-string v18, "onTouchEvent"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Landroid/view/MotionEvent;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lce/hesh/wechatUI/hooks/ui/LauncherUI$11;

    invoke-direct/range {v21 .. v22}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$11;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 583
    sget v17, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_30c

    .line 585
    const-string v17, "getActionBar"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 586
    .local v6, "actionbar":Ljava/lang/Object;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lce/hesh/wechatUI/hooks/ui/MMFragmentActivity;->getActionBarColorFromPrefs()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 587
    .local v5, "actionBarColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "setBackgroundDrawable"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Landroid/graphics/drawable/Drawable;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$12;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;Landroid/app/Activity;Landroid/graphics/drawable/ColorDrawable;)V

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 617
    .end local v5    # "actionBarColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v6    # "actionbar":Ljava/lang/Object;
    :cond_30c
    sget-object v17, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->main_tab:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 618
    .local v12, "main_tab":Landroid/view/ViewGroup;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 620
    sget v17, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3ac

    .line 621
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 623
    .local v11, "mainTabLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 624
    const/16 v17, 0x3

    const v18, 0x7f0b000d

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 625
    sget-object v17, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v18, 0x30

    invoke-static/range {v17 .. v19}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 626
    const v17, 0x7f0b000c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 627
    invoke-virtual {v15, v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    :goto_369
    new-instance v17, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    return-void

    .line 547
    .end local v11    # "mainTabLayout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "main_tab":Landroid/view/ViewGroup;
    .end local v14    # "paramTabLayout":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_37a
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    sget-object v18, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v20, 0x30

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 549
    .restart local v14    # "paramTabLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 550
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->materialTabsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_29f

    .line 629
    .restart local v12    # "main_tab":Landroid/view/ViewGroup;
    :cond_3ac
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 631
    .restart local v11    # "mainTabLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 632
    sget-object v17, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-wide/16 v18, 0x30

    invoke-static/range {v17 .. v19}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 633
    const/16 v17, 0x3

    const v18, 0x7f0b000d

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 634
    const v17, 0x7f0b000c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 635
    invoke-virtual {v15, v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_369
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 409
    packed-switch p1, :pswitch_data_54

    move-object v0, v1

    .line 439
    :goto_6
    return-object v0

    .line 411
    :pswitch_7
    sget-object v2, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const v3, 0x7f020007

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_14

    move-object v0, v1

    .line 413
    goto :goto_6

    .line 415
    :cond_14
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    .line 418
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1a
    sget-object v2, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const v3, 0x7f020005

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 419
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_27

    move-object v0, v1

    .line 420
    goto :goto_6

    .line 422
    :cond_27
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    .line 425
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2d
    sget-object v2, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const v3, 0x7f020006

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3a

    move-object v0, v1

    .line 427
    goto :goto_6

    .line 429
    :cond_3a
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    .line 432
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_40
    sget-object v2, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const v3, 0x7f020008

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4d

    move-object v0, v1

    .line 434
    goto :goto_6

    .line 436
    :cond_4d
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    .line 409
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1a
        :pswitch_2d
        :pswitch_40
    .end packed-switch
.end method

.method private getNickname()Ljava/lang/CharSequence;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 874
    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->AccountStorage:Ljava/lang/Class;

    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getAccStg:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 875
    .local v1, "object":Ljava/lang/Object;
    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getUserInfoFromDB:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_37

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37

    .line 881
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    :goto_36
    return-object v2

    :cond_37
    move-object v2, v3

    goto :goto_36
.end method

.method private getUsername()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 887
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->UserInfo:Ljava/lang/Class;

    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getUsername:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 888
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 889
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->UserInfo:Ljava/lang/Class;

    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getOrigUsername:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 891
    :goto_1b
    return-object v1

    :cond_1c
    move-object v1, v0

    goto :goto_1b
.end method

.method public static init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 9
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    const-string v0, "com.tencent.mm.ui.base.CustomViewPager"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->ViewPager:Ljava/lang/Class;

    .line 207
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    const-string v1, "onCreate"

    new-array v2, v7, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v5

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUI$1;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$1;-><init>()V

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 218
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    const-string v1, "onResume"

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUI$2;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$2;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 247
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_97

    .line 248
    const-string v0, "com.tencent.mm.ui.tools.TestTimeForChatting"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "setFixSystemWindowBottomPadding"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    new-instance v4, Lce/hesh/wechatUI/hooks/ui/LauncherUI$3;

    invoke-direct {v4}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$3;-><init>()V

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 283
    :cond_4d
    :goto_4d
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->startMainUI:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUI$5;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$5;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 311
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    const-string v1, "dispatchKeyEvent"

    new-array v2, v7, [Ljava/lang/Object;

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v5

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUI$6;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$6;-><init>()V

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 325
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->initActionBar:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUI$7;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$7;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 333
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_96

    .line 334
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUI:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getActionBarColor:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUI$8;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$8;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 342
    :cond_96
    return-void

    .line 261
    :cond_97
    sget v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4d

    .line 262
    const-string v0, "com.tencent.mm.ui.LauncherUI.FitSystemWindowLayoutView"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "setActionBarContainer"

    new-array v3, v7, [Ljava/lang/Object;

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v3, v5

    new-instance v4, Lce/hesh/wechatUI/hooks/ui/LauncherUI$4;

    invoke-direct {v4}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$4;-><init>()V

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_4d
.end method

.method private initDrawerList(Lce/hesh/wechatUI/adapter/DrawerListAdapter;)V
    .registers 10
    .param p1, "drawerListAdapter"    # Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 698
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    .line 699
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_sns_shake_enabled:Z

    .line 700
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_sns_people_nearby_enabled:Z

    .line 701
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_sns_drift_bottle_enabled:Z

    .line 702
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_sns_shopping_enabled:Z

    .line 703
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_sns_games_enabled:Z

    .line 704
    sput-boolean v5, Lce/hesh/wechatUI/Common;->item_me_card_package_enabled:Z

    .line 705
    sget v4, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    if-le v4, v5, :cond_3f

    move v4, v5

    :goto_15
    sput-boolean v4, Lce/hesh/wechatUI/Common;->item_me_emoji_store_enabled:Z

    .line 706
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 707
    .local v0, "defstrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lce/hesh/wechatUI/Common;->XMOD_PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v7, "disabled_items"

    invoke-virtual {v4, v7, v0}, Lde/robv/android/xposed/XSharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 708
    .local v3, "strs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 709
    .local v2, "str":Ljava/lang/String;
    const-string v4, "item_sns_moments"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 710
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    goto :goto_28

    .end local v0    # "defstrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3f
    move v4, v6

    .line 705
    goto :goto_15

    .line 711
    .restart local v0    # "defstrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "strs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_41
    const-string v4, "item_sns_shake"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 712
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_sns_shake_enabled:Z

    goto :goto_28

    .line 713
    :cond_4c
    const-string v4, "item_sns_people_nearby"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 714
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_sns_people_nearby_enabled:Z

    goto :goto_28

    .line 715
    :cond_57
    const-string v4, "item_sns_drift_bottle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 716
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_sns_drift_bottle_enabled:Z

    goto :goto_28

    .line 717
    :cond_62
    const-string v4, "item_sns_shopping"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 718
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_sns_shopping_enabled:Z

    goto :goto_28

    .line 719
    :cond_6d
    const-string v4, "item_sns_games"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 720
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_sns_games_enabled:Z

    goto :goto_28

    .line 721
    :cond_78
    const-string v4, "item_me_card_package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 722
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_me_card_package_enabled:Z

    goto :goto_28

    .line 723
    :cond_83
    const-string v4, "item_me_emoji_store"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 724
    sput-boolean v6, Lce/hesh/wechatUI/Common;->item_me_emoji_store_enabled:Z

    goto :goto_28

    .line 727
    .end local v2    # "str":Ljava/lang/String;
    :cond_8e
    const v4, 0x7f02000b

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    invoke-virtual {p1, v6, v4, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 728
    const v4, 0x7f02000c

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    invoke-virtual {p1, v5, v4, v6}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 729
    const/16 v4, 0x14

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    invoke-virtual {p1, v4, v6}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addSectionHeaderItem(II)V

    .line 730
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    if-eqz v4, :cond_b3

    .line 731
    const/16 v4, 0x15

    const v6, 0x7f02001a

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 733
    :cond_b3
    const/16 v4, 0x16

    const v6, 0x7f02001c

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 734
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_sns_shake_enabled:Z

    if-eqz v4, :cond_cb

    .line 735
    const/16 v4, 0x17

    const v6, 0x7f02001d

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 737
    :cond_cb
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_sns_people_nearby_enabled:Z

    if-eqz v4, :cond_d9

    .line 738
    const/16 v4, 0x18

    const v6, 0x7f02001b

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 740
    :cond_d9
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_sns_drift_bottle_enabled:Z

    if-eqz v4, :cond_e7

    .line 741
    const/16 v4, 0x19

    const v6, 0x7f020018

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 743
    :cond_e7
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_sns_shopping_enabled:Z

    if-eqz v4, :cond_f6

    .line 744
    const/16 v4, 0x1a

    const v6, 0x7f02001e

    const v7, 0x7f080038

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 746
    :cond_f6
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_sns_games_enabled:Z

    if-eqz v4, :cond_104

    .line 747
    const/16 v4, 0x1b

    const v6, 0x7f020019

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 749
    :cond_104
    const/16 v4, 0x1e

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    invoke-virtual {p1, v4, v6}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addSectionHeaderItem(II)V

    .line 750
    const/16 v4, 0x1f

    const v6, 0x7f020011

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 751
    const/16 v4, 0x20

    const v6, 0x7f020010

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 752
    const/16 v4, 0x21

    const v6, 0x7f020013

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 753
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_me_card_package_enabled:Z

    if-eqz v4, :cond_137

    .line 754
    const/16 v4, 0x22

    const v6, 0x7f02000e

    sget v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    invoke-virtual {p1, v4, v6, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 756
    :cond_137
    sget-boolean v4, Lce/hesh/wechatUI/Common;->item_me_emoji_store_enabled:Z

    if-eqz v4, :cond_149

    sget v4, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    if-le v4, v5, :cond_149

    .line 757
    const/16 v4, 0x23

    const v5, 0x7f02000f

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    invoke-virtual {p1, v4, v5, v6}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 759
    :cond_149
    const/16 v4, 0x24

    const v5, 0x7f020012

    sget v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    invoke-virtual {p1, v4, v5, v6}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->addItem(III)V

    .line 760
    return-void
.end method

.method private initNewActionBar(Landroid/app/Activity;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 377
    sget-object v4, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->actionBar:Ljava/lang/String;

    invoke-static {p1, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "actionBar":Ljava/lang/Object;
    const-string v4, "getCustomView"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 379
    .local v1, "actionBarView":Landroid/view/View;
    sget-object v4, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const/high16 v5, 0x7f040000

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 381
    .local v3, "newActionBarView":Landroid/view/ViewGroup;
    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 382
    .local v2, "iv":Landroid/widget/ImageView;
    new-instance v4, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    .line 383
    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const v6, 0x7f090001

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;->setStrokeColor(I)V

    .line 384
    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerArrowDrawable:Lchrisrenke/drawerarrowdrawable/DrawerArrowDrawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawer_indicator_poi:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    const-string v4, "setCustomView"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v0, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v4, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;

    invoke-direct {v4, p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$9;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method private refreshDrawerInfo()V
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 763
    const/4 v2, 0x0

    .line 764
    .local v2, "i":I
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 765
    .local v0, "LauncherUI_INSTANCE":Landroid/app/Activity;
    if-eqz v0, :cond_1b

    .line 766
    sget-object v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->curTabNum:Ljava/lang/String;

    invoke-static {v0, v7}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 767
    .local v1, "curTabNum":I
    packed-switch v1, :pswitch_data_1c2

    .line 782
    .end local v1    # "curTabNum":I
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->updateBackgroundImage()V

    .line 785
    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isNoAvatar()Z

    move-result v7

    if-nez v7, :cond_29

    .line 786
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->user_avatar:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->setAvatar(Landroid/widget/ImageView;)V

    .line 791
    :cond_29
    invoke-direct {p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->getNickname()Ljava/lang/CharSequence;

    move-result-object v4

    .line 792
    .local v4, "str":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3a

    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isNoAvatar()Z

    move-result v7

    if-nez v7, :cond_3a

    .line 793
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->username:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    :cond_3a
    invoke-direct {p0}, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 796
    .local v6, "wechatIDStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_72

    invoke-static {}, Lce/hesh/wechatUI/utils/SettingSP;->isNowechatID()Z

    move-result v7

    if-nez v7, :cond_72

    .line 797
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->wechatID:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lce/hesh/wechatUI/Common;->MM_Context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :cond_72
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 800
    .local v5, "tabView":Ljava/lang/Object;
    if-eqz v5, :cond_118

    .line 802
    :try_start_7a
    sget-boolean v7, Lce/hesh/wechatUI/Common;->item_sns_moments_enabled:Z

    if-eqz v7, :cond_b8

    .line 803
    sget-object v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->WTFClazz:Ljava/lang/Class;

    sget-object v8, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->moments_jj:Ljava/lang/String;

    invoke-static {v7, v8}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 804
    .local v3, "object":Ljava/lang/Object;
    if-eqz v3, :cond_97

    .line 805
    sget-object v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getMomentsUnreadCount:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 807
    :cond_97
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v7, v2}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsUnread(I)V

    .line 808
    if-nez v2, :cond_b8

    .line 810
    sget v7, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_13a

    .line 811
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const-string v7, "bdk"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    .line 829
    .end local v3    # "object":Ljava/lang/Object;
    :cond_b8
    :goto_b8
    sget-boolean v7, Lce/hesh/wechatUI/Common;->item_sns_shake_enabled:Z

    if-eqz v7, :cond_db

    .line 830
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    sget-object v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->NewFriendMessage:Ljava/lang/Class;

    sget-object v9, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getShakeVerifyMessage:Ljava/lang/String;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getVerifyMessageCount:Ljava/lang/String;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setShakeUnread(I)V

    .line 832
    :cond_db
    sget-boolean v7, Lce/hesh/wechatUI/Common;->item_sns_people_nearby_enabled:Z

    if-eqz v7, :cond_fe

    .line 833
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    sget-object v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->NewFriendMessage:Ljava/lang/Class;

    sget-object v9, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getLBSVerifyMessage:Ljava/lang/String;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getVerifyMessageCount:Ljava/lang/String;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setNearbyPeopleUnread(I)V

    .line 835
    :cond_fe
    sget-boolean v7, Lce/hesh/wechatUI/Common;->item_sns_drift_bottle_enabled:Z

    if-eqz v7, :cond_118

    .line 836
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    sget-object v7, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Bottle:Ljava/lang/Class;

    sget-object v9, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getBottleUnreadCount:Ljava/lang/String;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setDriftBottleUnread(I)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_118} :catch_156

    .line 842
    :cond_118
    :goto_118
    return-void

    .line 769
    .end local v4    # "str":Ljava/lang/CharSequence;
    .end local v5    # "tabView":Ljava/lang/Object;
    .end local v6    # "wechatIDStr":Ljava/lang/String;
    .restart local v1    # "curTabNum":I
    :pswitch_119
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    invoke-virtual {v7, v8}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setSingleItemHighlighted(I)V

    goto/16 :goto_1b

    .line 772
    :pswitch_120
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setSingleItemHighlighted(I)V

    goto/16 :goto_1b

    .line 775
    :pswitch_128
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setSingleItemHighlighted(I)V

    goto/16 :goto_1b

    .line 778
    :pswitch_131
    iget-object v7, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setSingleItemHighlighted(I)V

    goto/16 :goto_1b

    .line 813
    .end local v1    # "curTabNum":I
    .restart local v3    # "object":Ljava/lang/Object;
    .restart local v4    # "str":Ljava/lang/CharSequence;
    .restart local v5    # "tabView":Ljava/lang/Object;
    .restart local v6    # "wechatIDStr":Ljava/lang/String;
    :cond_13a
    :try_start_13a
    sget v7, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_158

    .line 814
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const-string v7, "beS"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    goto/16 :goto_b8

    .line 838
    .end local v3    # "object":Ljava/lang/Object;
    :catch_156
    move-exception v7

    goto :goto_118

    .line 816
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_158
    sget v7, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_174

    .line 817
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const-string v7, "bhJ"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    goto/16 :goto_b8

    .line 819
    :cond_174
    sget v7, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_190

    .line 820
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const-string v7, "bhR"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    goto/16 :goto_b8

    .line 822
    :cond_190
    sget v7, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v8, 0xe

    if-ne v7, v8, :cond_1ac

    .line 823
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const-string v7, "bos"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V

    goto/16 :goto_b8

    .line 825
    :cond_1ac
    iget-object v8, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerListAdapter:Lce/hesh/wechatUI/adapter/DrawerListAdapter;

    const-string v7, "getShowFriendPoint"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lce/hesh/wechatUI/adapter/DrawerListAdapter;->setMomentsPoint(Z)V
    :try_end_1c0
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_1c0} :catch_156

    goto/16 :goto_b8

    .line 767
    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_119
        :pswitch_120
        :pswitch_128
        :pswitch_131
    .end packed-switch
.end method

.method private removeMMTabs(Landroid/app/Activity;Z)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keepCanSlide"    # Z

    .prologue
    .line 349
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;

    .line 350
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->tabView:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 351
    .local v0, "tabView":Landroid/view/View;
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViews:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->tabViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 353
    iget-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 355
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_43

    .line 356
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    .line 357
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "iJ"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    :goto_42
    return-void

    .line 359
    :cond_43
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5d

    .line 360
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    .line 361
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "ij"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    .line 364
    :cond_5d
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_69

    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7d

    .line 365
    :cond_69
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    .line 366
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "qA"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    .line 367
    :cond_7d
    sget v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_97

    .line 368
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->customViewPager:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    .line 369
    sget-object v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->viewPage:Ljava/lang/Object;

    const-string v2, "CE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    .line 371
    :cond_97
    iget-object v1, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->customViewPager:Landroid/view/ViewGroup;

    const-string v2, "setCanSlide"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42
.end method

.method private setAvatar(Landroid/widget/ImageView;)V
    .registers 7
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 895
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->UserInfo:Ljava/lang/Class;

    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->getOrigUsername:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 896
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->Avatar:Ljava/lang/Class;

    sget-object v2, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setAvatarByOrigUsername:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    return-void
.end method

.method private updateBackgroundImage()V
    .registers 9

    .prologue
    .line 845
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawerBgBitmap:Landroid/graphics/Bitmap;

    .line 848
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawer:Landroid/view/View;

    const/high16 v5, 0x7f0b0000

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->bg_image:Landroid/widget/ImageView;

    .line 851
    :try_start_e
    sget-object v4, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const-string v5, "drawer_bg.jpg"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 852
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawerBgBitmap:Landroid/graphics/Bitmap;

    .line 853
    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->bg_image:Landroid/widget/ImageView;

    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawerBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 854
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_39

    .line 867
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_26
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_38

    .line 868
    const-string v4, "WeChange"

    const-string v5, "recycle old BackgroundImage!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 871
    :cond_38
    return-void

    .line 855
    :catch_39
    move-exception v1

    .line 857
    .local v1, "e":Ljava/io/IOException;
    :try_start_3a
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "drawer_bg.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 859
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawerBgBitmap:Landroid/graphics/Bitmap;

    .line 860
    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->bg_image:Landroid/widget/ImageView;

    iget-object v5, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->mDrawerBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 861
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_74} :catch_75

    goto :goto_26

    .line 862
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_75
    move-exception v3

    .line 863
    .local v3, "u":Ljava/io/IOException;
    iget-object v4, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->bg_image:Landroid/widget/ImageView;

    sget-object v5, Lce/hesh/wechatUI/Common;->MOD_Context:Landroid/content/Context;

    const/high16 v6, 0x7f020000

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26
.end method


# virtual methods
.method public callMMFeature(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->LauncherUI_INSTANCE_WeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    .line 901
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->myDrawerListener:Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;

    new-instance v1, Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;

    invoke-direct {v1, p0, p1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$callMMFragmentFeatureRunnable;-><init>(Lce/hesh/wechatUI/hooks/ui/LauncherUI;I)V

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/hooks/ui/LauncherUI$MyDrawerListener;->runOnIdle(Ljava/lang/Runnable;)V

    .line 902
    iget-object v0, p0, Lce/hesh/wechatUI/hooks/ui/LauncherUI;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 904
    :cond_17
    return-void
.end method
