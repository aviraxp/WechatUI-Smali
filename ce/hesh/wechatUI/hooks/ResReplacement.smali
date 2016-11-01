.class public Lce/hesh/wechatUI/hooks/ResReplacement;
.super Ljava/lang/Object;
.source "ResReplacement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .registers 3
    .param p0, "resparam"    # Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;

    .prologue
    .line 24
    iget-object v0, p0, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    :cond_a
    return-void
.end method
