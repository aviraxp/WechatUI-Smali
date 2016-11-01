.class public Lce/hesh/wechatUI/ObfuscationHelper;
.super Ljava/lang/Object;
.source "ObfuscationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;,
        Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;,
        Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;,
        Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;
    }
.end annotation


# static fields
.field public static version_code:I

.field public static versionint:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 15
    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->version_code:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static getRawXml(ILandroid/content/Context;)V
    .registers 9
    .param p0, "resid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 475
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    .local v3, "eventType":I
    :goto_c
    const/4 v5, 0x1

    if-eq v3, v5, :cond_97

    .line 476
    if-nez v3, :cond_30

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start document resid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 475
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_c

    .line 478
    :cond_30
    const/4 v5, 0x2

    if-ne v3, v5, :cond_53

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4d} :catch_95

    goto :goto_2b

    .line 488
    .end local v3    # "eventType":I
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_4e
    move-exception v1

    .line 489
    .local v1, "e2":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 495
    .end local v1    # "e2":Landroid/content/res/Resources$NotFoundException;
    :goto_52
    return-void

    .line 480
    .restart local v3    # "eventType":I
    .restart local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_53
    const/4 v5, 0x3

    if-ne v3, v5, :cond_77

    .line 481
    :try_start_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_56 .. :try_end_70} :catch_4e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_70} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_70} :catch_95

    goto :goto_2b

    .line 491
    .end local v3    # "eventType":I
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_71
    move-exception v2

    .line 492
    .local v2, "e3":Ljava/lang/Exception;
    :goto_72
    move-object v0, v2

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "e3":Ljava/lang/Exception;
    .restart local v3    # "eventType":I
    .restart local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_77
    const/4 v5, 0x4

    if-ne v3, v5, :cond_2b

    .line 483
    :try_start_7a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Text : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_2b

    .line 491
    .end local v3    # "eventType":I
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_95
    move-exception v2

    goto :goto_72

    .line 486
    .restart local v3    # "eventType":I
    .restart local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_97
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7a .. :try_end_9a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_9a} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_9a} :catch_95

    goto :goto_52
.end method

.method public static init(ILjava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z
    .registers 5
    .param p0, "versioncode"    # I
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    sput p0, Lce/hesh/wechatUI/ObfuscationHelper;->version_code:I

    .line 384
    invoke-static {p0, p1}, Lce/hesh/wechatUI/ObfuscationHelper;->isSupportedVersion(ILjava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "versionIndex":I
    if-gez v0, :cond_a

    .line 386
    const/4 v1, 0x0

    .line 392
    :goto_9
    return v1

    .line 388
    :cond_a
    # invokes: Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->init(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    invoke-static {v0, p2}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Classes;->access$000(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 389
    # invokes: Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->init(I)V
    invoke-static {v0}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Methods;->access$100(I)V

    .line 390
    # invokes: Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->init(I)V
    invoke-static {v0}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Fields;->access$200(I)V

    .line 391
    # invokes: Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->init(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    invoke-static {v0, p2}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->access$300(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 392
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static isSupportedVersion(ILjava/lang/String;)I
    .registers 8
    .param p0, "versioncode"    # I
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 396
    const-string v5, "6.2.0.50"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 397
    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 468
    :goto_11
    return v0

    .line 400
    :cond_12
    const-string v0, "6.2.2.54"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 401
    sput v1, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v1

    .line 402
    goto :goto_11

    .line 404
    :cond_1e
    const-string v0, "6.2.4.49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 405
    const/4 v0, 0x2

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 406
    const/4 v0, 0x2

    goto :goto_11

    .line 408
    :cond_2b
    const-string v0, "6.2.4.51"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 409
    const/4 v0, 0x3

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 410
    const/4 v0, 0x3

    goto :goto_11

    .line 412
    :cond_38
    const-string v0, "6.2.5.49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "6.2.5.51"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "6.2.5.52"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 413
    :cond_50
    const/4 v0, 0x4

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 414
    const/4 v0, 0x4

    goto :goto_11

    .line 416
    :cond_55
    const-string v0, "6.2.5.54"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 417
    const/4 v0, 0x5

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 418
    const/4 v0, 0x5

    goto :goto_11

    .line 420
    :cond_62
    const-string v0, "6.3.0.48"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 421
    const/4 v0, 0x6

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 422
    const/4 v0, 0x6

    goto :goto_11

    .line 424
    :cond_6f
    const-string v0, "6.3.5.49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 425
    sput v2, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v2

    .line 426
    goto :goto_11

    .line 428
    :cond_7b
    const-string v0, "6.3.5.50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 429
    sput v2, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v2

    .line 430
    goto :goto_11

    .line 432
    :cond_87
    const-string v0, "6.3.15.49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 433
    sput v3, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v3

    .line 434
    goto/16 :goto_11

    .line 436
    :cond_94
    const-string v0, "6.3.15.65"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 437
    sput v3, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v3

    .line 438
    goto/16 :goto_11

    .line 440
    :cond_a1
    const-string v0, "6.3.16.64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 441
    sput v4, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v4

    .line 442
    goto/16 :goto_11

    .line 444
    :cond_ae
    const-string v0, "6.3.16.49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 445
    sput v4, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    move v0, v4

    .line 446
    goto/16 :goto_11

    .line 448
    :cond_bb
    const-string v0, "6.3.18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 449
    const/16 v0, 0xa

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 450
    const/16 v0, 0xa

    goto/16 :goto_11

    .line 452
    :cond_cb
    const-string v0, "6.3.22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 453
    const/16 v0, 0xb

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 454
    const/16 v0, 0xb

    goto/16 :goto_11

    .line 456
    :cond_db
    const-string v0, "6.3.23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 457
    const/16 v0, 0xc

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 458
    const/16 v0, 0xc

    goto/16 :goto_11

    .line 460
    :cond_eb
    const-string v0, "6.3.25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 461
    const/16 v0, 0xd

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 462
    const/16 v0, 0xd

    goto/16 :goto_11

    .line 464
    :cond_fb
    const-string v0, "6.3.27"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 465
    const/16 v0, 0xe

    sput v0, Lce/hesh/wechatUI/ObfuscationHelper;->versionint:I

    .line 466
    const/16 v0, 0xe

    goto/16 :goto_11

    .line 468
    :cond_10b
    const/4 v0, -0x1

    goto/16 :goto_11
.end method
