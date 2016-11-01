.class public Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;
.super Ljava/lang/Object;
.source "ObfuscationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/hesh/wechatUI/ObfuscationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MM_Res"
.end annotation


# static fields
.field public static app_name:I

.field public static bottle_beach_title:I

.field public static custom_action_bar:I

.field public static divider:I

.field public static find_friends_by_qrcode:I

.field public static game_recommand:I

.field public static id:Ljava/lang/String;

.field public static layout:Ljava/lang/String;

.field public static main_addcontact:I

.field public static main_chat:I

.field public static main_contact:I

.field public static main_more:I

.field public static main_tab:I

.field public static nearby_friend_title:I

.field public static settings_emoji_store:I

.field public static settings_mm_card_package_new:I

.field public static settings_mm_favorite_new:I

.field public static settings_mm_wallet_new:I

.field public static settings_my_album_new:I

.field public static settings_title:I

.field public static settings_username:I

.field public static shake_report_title:I

.field public static sns_dyna_photo_ui_title:I

.field public static strings:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p0, p1}, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->init(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    return-void
.end method

.method private static init(ILde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 14
    .param p0, "idx"    # I
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const v11, 0x7f080580

    const v10, 0x7f08034a

    const/16 v9, 0xd

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 186
    const-string v2, "com.tencent.mm.a"

    .line 187
    .local v2, "R":Ljava/lang/String;
    const/4 v4, 0x0

    .line 188
    .local v4, "intd":I
    const/4 v5, 0x7

    if-gt p0, v5, :cond_11

    .line 189
    const/4 v4, 0x0

    .line 191
    :cond_11
    const/4 v5, 0x7

    if-le p0, v5, :cond_17

    .line 192
    const/4 v4, 0x1

    .line 193
    const-string v2, "com.google.android.gms.a"

    .line 196
    :cond_17
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "$n"

    aput-object v6, v5, v8

    const-string v6, "$c"

    aput-object v6, v5, v7

    aget-object v5, v5, v4

    sput-object v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->strings:Ljava/lang/String;

    .line 199
    const/16 v5, 0x8

    if-ne p0, v5, :cond_93

    .line 200
    const v5, 0x7f0a004b

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 201
    const v5, 0x7f0710cc

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 202
    const v5, 0x7f0707d1

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    .line 244
    :goto_39
    const/16 v5, 0xa

    if-ne p0, v5, :cond_16e

    .line 245
    const v5, 0x7f080b98

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 246
    const v5, 0x7f0809a0

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 247
    const v5, 0x7f080b97

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 248
    const v5, 0x7f080bb2

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 249
    const v5, 0x7f080feb

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 250
    const v5, 0x7f080552

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 251
    const v5, 0x7f0811c0

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 252
    const v5, 0x7f08054f

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 253
    const v5, 0x7f0809ad

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 254
    const v5, 0x7f080957

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 255
    const v5, 0x7f0810e2

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 256
    const v5, 0x7f080fe1

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 257
    const v5, 0x7f0810d1

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 258
    const v5, 0x7f08031f

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 259
    const v5, 0x7f081147

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 260
    const v5, 0x7f080366

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 261
    const v5, 0x7f081160

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    .line 379
    :goto_92
    return-void

    .line 203
    :cond_93
    const/16 v5, 0x9

    if-ne p0, v5, :cond_a7

    .line 204
    const v5, 0x7f0a004b

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 205
    const v5, 0x7f071115

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 206
    const v5, 0x7f070804

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto :goto_39

    .line 207
    :cond_a7
    const/16 v5, 0xa

    if-ne p0, v5, :cond_bc

    .line 208
    const v5, 0x7f030364

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 209
    const v5, 0x7f1000c7

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 210
    const v5, 0x7f1000bb

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto/16 :goto_39

    .line 211
    :cond_bc
    const/16 v5, 0xb

    if-ne p0, v5, :cond_d1

    .line 212
    const v5, 0x7f03035f

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 213
    const v5, 0x7f1000c9

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 214
    const v5, 0x7f1000bd

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto/16 :goto_39

    .line 216
    :cond_d1
    const/16 v5, 0xc

    if-ne p0, v5, :cond_e6

    .line 217
    const v5, 0x7f030370

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 218
    const v5, 0x7f1000bc

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 219
    const v5, 0x7f1000cb

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto/16 :goto_39

    .line 221
    :cond_e6
    if-ne p0, v9, :cond_f9

    .line 223
    const v5, 0x7f030371

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 225
    const v5, 0x7f1000bc

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 227
    const v5, 0x7f1000cb

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto/16 :goto_39

    .line 228
    :cond_f9
    const/16 v5, 0xe

    if-ne p0, v5, :cond_10e

    .line 230
    const v5, 0x7f030399

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 232
    const v5, 0x7f1000ce

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 234
    const v5, 0x7f1000dd

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto/16 :goto_39

    .line 236
    :cond_10e
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "$k"

    aput-object v6, v5, v8

    aget-object v5, v5, v4

    sput-object v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->layout:Ljava/lang/String;

    .line 237
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "$i"

    aput-object v6, v5, v8

    aget-object v5, v5, v4

    sput-object v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->id:Ljava/lang/String;

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 239
    .local v0, "Id":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->layout:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 240
    .local v1, "Layout":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "main_tab"

    invoke-static {v1, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_tab:I

    .line 241
    const-string v5, "custom_action_bar"

    invoke-static {v0, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->custom_action_bar:I

    .line 242
    const-string v5, "divider"

    invoke-static {v0, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->divider:I

    goto/16 :goto_39

    .line 264
    .end local v0    # "Id":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "Layout":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16e
    const/16 v5, 0xb

    if-ne p0, v5, :cond_1c9

    .line 265
    const v5, 0x7f080b98

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 266
    const v5, 0x7f0809a0

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 267
    const v5, 0x7f080b97

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 268
    const v5, 0x7f080bb2

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 269
    const v5, 0x7f080ff7

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 270
    const v5, 0x7f080559

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 271
    const v5, 0x7f0811c9

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 272
    const v5, 0x7f0809c2

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 273
    const v5, 0x7f0809ad

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 274
    const v5, 0x7f080957

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 275
    const v5, 0x7f0810ef

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 276
    const v5, 0x7f080fed

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 277
    const v5, 0x7f0810de

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 278
    const v5, 0x7f080323

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 279
    const v5, 0x7f081154

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 280
    const v5, 0x7f08036a

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 281
    const v5, 0x7f08116d

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    goto/16 :goto_92

    .line 284
    :cond_1c9
    const/16 v5, 0xc

    if-ne p0, v5, :cond_21e

    .line 285
    const v5, 0x7f080bcf

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 286
    const v5, 0x7f080bd0

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 287
    const v5, 0x7f080bce

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 288
    const v5, 0x7f080be9

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 289
    const v5, 0x7f081034

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 290
    sput v11, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 291
    const v5, 0x7f081206

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 292
    const v5, 0x7f0809fa

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 293
    const v5, 0x7f0809e5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 294
    const v5, 0x7f08098f

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 295
    const v5, 0x7f08112c

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 296
    const v5, 0x7f08102a

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 297
    const v5, 0x7f08111b

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 298
    sput v10, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 299
    const v5, 0x7f081191

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 300
    const v5, 0x7f080397

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 301
    const v5, 0x7f0811aa

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    goto/16 :goto_92

    .line 302
    :cond_21e
    if-ne p0, v9, :cond_277

    sget v5, Lce/hesh/wechatUI/ObfuscationHelper;->version_code:I

    const/16 v6, 0x35d

    if-eq v5, v6, :cond_277

    .line 303
    const v5, 0x7f080bd5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 304
    const v5, 0x7f080bd6

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 305
    const v5, 0x7f080bd4

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 306
    const v5, 0x7f080bef

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 307
    const v5, 0x7f08103a

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 308
    sput v11, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 309
    const v5, 0x7f080585

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 310
    const v5, 0x7f080a00

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 311
    const v5, 0x7f0802ac

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 312
    const v5, 0x7f080995

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 313
    const v5, 0x7f080b65

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 314
    const v5, 0x7f080daf

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 315
    const v5, 0x7f081121

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 316
    sput v10, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 317
    const v5, 0x7f081197

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 318
    const v5, 0x7f10038e

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 319
    const v5, 0x7f080ed3

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    goto/16 :goto_92

    .line 320
    :cond_277
    if-ne p0, v9, :cond_2d0

    sget v5, Lce/hesh/wechatUI/ObfuscationHelper;->version_code:I

    const/16 v6, 0x35d

    if-ne v5, v6, :cond_2d0

    .line 321
    const v5, 0x7f080bd8

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 322
    const v5, 0x7f080bd9

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 323
    const v5, 0x7f080bd7

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 324
    const v5, 0x7f080bf2

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 325
    const v5, 0x7f08103d

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 326
    sput v11, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 327
    const v5, 0x7f08120f

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 328
    const v5, 0x7f080a03

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 329
    const v5, 0x7f0809ee

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 330
    const v5, 0x7f080998

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 331
    const v5, 0x7f081135

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 332
    const v5, 0x7f081033

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 333
    const v5, 0x7f081124

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 334
    sput v10, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 335
    const v5, 0x7f08119a    # 1.808664E38f

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 336
    const v5, 0x7f080397

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 337
    const v5, 0x7f0811b3

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    goto/16 :goto_92

    .line 338
    :cond_2d0
    const/16 v5, 0xe

    if-ne p0, v5, :cond_32b

    .line 339
    const v5, 0x7f080c21

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 340
    const v5, 0x7f080c22

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 341
    const v5, 0x7f080c20

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 342
    const v5, 0x7f080c3b

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 343
    const v5, 0x7f081095

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 344
    const v5, 0x7f0805c6

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 345
    const v5, 0x7f081267

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 346
    const v5, 0x7f080a4a

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 347
    const v5, 0x7f080a35

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 348
    const v5, 0x7f08108e

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 349
    const v5, 0x7f08118d

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 350
    const v5, 0x7f08108b

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 351
    const v5, 0x7f08117c

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 352
    const v5, 0x7f080390

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 353
    const v5, 0x7f0811f2

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 354
    const v5, 0x7f0803dd

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 355
    const v5, 0x7f08120b

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    goto/16 :goto_92

    .line 357
    :cond_32b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->strings:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 358
    .local v3, "Strings":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "app_name"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->app_name:I

    .line 359
    const-string v5, "main_chat"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_chat:I

    .line 360
    const-string v5, "main_contact"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_contact:I

    .line 361
    const-string v5, "main_addcontact"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_addcontact:I

    .line 362
    const-string v5, "main_more"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->main_more:I

    .line 363
    const-string v5, "sns_dyna_photo_ui_title"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->sns_dyna_photo_ui_title:I

    .line 364
    const-string v5, "find_friends_by_qrcode"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->find_friends_by_qrcode:I

    .line 365
    const-string v5, "shake_report_title"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->shake_report_title:I

    .line 366
    const-string v5, "nearby_friend_title"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->nearby_friend_title:I

    .line 367
    const-string v5, "bottle_beach_title"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->bottle_beach_title:I

    .line 368
    const-string v5, "game_recommand"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->game_recommand:I

    .line 369
    const-string v5, "settings_my_album_new"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_my_album_new:I

    .line 370
    const-string v5, "settings_mm_favorite_new"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_favorite_new:I

    .line 371
    const-string v5, "settings_mm_wallet_new"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_wallet_new:I

    .line 372
    const-string v5, "settings_mm_card_package_new"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_mm_card_package_new:I

    .line 373
    if-le p0, v7, :cond_3c6

    .line 374
    const-string v5, "settings_emoji_store"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_emoji_store:I

    .line 376
    :cond_3c6
    const-string v5, "settings_title"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_title:I

    .line 377
    const-string v5, "settings_username"

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    sput v5, Lce/hesh/wechatUI/ObfuscationHelper$MM_Res;->settings_username:I

    goto/16 :goto_92
.end method
