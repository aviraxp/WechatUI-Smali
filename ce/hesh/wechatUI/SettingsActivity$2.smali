.class Lce/hesh/wechatUI/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/hesh/wechatUI/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lce/hesh/wechatUI/SettingsActivity;


# direct methods
.method constructor <init>(Lce/hesh/wechatUI/SettingsActivity;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lce/hesh/wechatUI/SettingsActivity$2;->this$0:Lce/hesh/wechatUI/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    iget-object v4, p0, Lce/hesh/wechatUI/SettingsActivity$2;->this$0:Lce/hesh/wechatUI/SettingsActivity;

    invoke-virtual {v4}, Lce/hesh/wechatUI/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lce/hesh/wechatUI/SettingsActivity;->isCoolApkAvilible(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 270
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity$2;->this$0:Lce/hesh/wechatUI/SettingsActivity;

    invoke-virtual {v5}, Lce/hesh/wechatUI/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "localIntent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    const-string v4, "com.coolapk.market"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    iget-object v4, p0, Lce/hesh/wechatUI/SettingsActivity$2;->this$0:Lce/hesh/wechatUI/SettingsActivity;

    invoke-virtual {v4, v1}, Lce/hesh/wechatUI/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_42} :catch_58

    .line 287
    .end local v1    # "localIntent":Landroid/content/Intent;
    .end local v2    # "str":Ljava/lang/String;
    :goto_42
    return-void

    .line 281
    :cond_43
    :try_start_43
    const-string v4, "http://www.coolapk.com/apk/ce.hesh.wechatUI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 282
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lce/hesh/wechatUI/SettingsActivity$2;->this$0:Lce/hesh/wechatUI/SettingsActivity;

    invoke-virtual {v4, v0}, Lce/hesh/wechatUI/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_55} :catch_56

    goto :goto_42

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_56
    move-exception v4

    goto :goto_42

    .line 276
    :catch_58
    move-exception v4

    goto :goto_42
.end method
