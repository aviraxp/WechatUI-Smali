.class public Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView;
.super Ljava/lang/Object;
.source "LauncherUIBottomTabView.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 8
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUIBottomTabView:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setMainTabUnread:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$1;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$1;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 25
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUIBottomTabView:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setContactTabUnread:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$2;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$2;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 36
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUIBottomTabView:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setFriendTabUnread:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$3;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$3;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 56
    sget-object v0, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->LauncherUIBottomTabView:Ljava/lang/Class;

    sget-object v1, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->setShowFriendPoint:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$4;

    invoke-direct {v3}, Lce/hesh/wechatUI/hooks/ui/LauncherUIBottomTabView$4;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 82
    return-void
.end method
