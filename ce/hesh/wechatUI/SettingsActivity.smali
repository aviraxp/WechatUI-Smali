.class public Lce/hesh/wechatUI/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcolorpickerdialog/ColorPickerDialog$ColorPickerListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation


# instance fields
.field private PICK_BG:I

.field private WechatBubble:Landroid/preference/CheckBoxPreference;

.field colorPickerDialog:Lcolorpickerdialog/ColorPickerDialog;

.field private mActionBarColor:Landroid/preference/ListPreference;

.field private mDPhotos:Landroid/preference/EditTextPreference;

.field private mDTCardPackage:Landroid/preference/EditTextPreference;

.field private mDTCollect:Landroid/preference/EditTextPreference;

.field private mDTContact:Landroid/preference/EditTextPreference;

.field private mDTDiscovery:Landroid/preference/EditTextPreference;

.field private mDTDriftBottle:Landroid/preference/EditTextPreference;

.field private mDTEmoj:Landroid/preference/EditTextPreference;

.field private mDTGames:Landroid/preference/EditTextPreference;

.field private mDTMainChat:Landroid/preference/EditTextPreference;

.field private mDTMe:Landroid/preference/EditTextPreference;

.field private mDTMoments:Landroid/preference/EditTextPreference;

.field private mDTNearbyPeople:Landroid/preference/EditTextPreference;

.field private mDTScan:Landroid/preference/EditTextPreference;

.field private mDTSetting:Landroid/preference/EditTextPreference;

.field private mDTShake:Landroid/preference/EditTextPreference;

.field private mDTShopping:Landroid/preference/EditTextPreference;

.field private mDTWallet:Landroid/preference/EditTextPreference;

.field private mDisabledItems:Landroid/preference/MultiSelectListPreference;

.field private mDonate:Landroid/preference/Preference;

.field private mDrawerGravity:Landroid/preference/ListPreference;

.field private mEnableActionBarColor:Landroid/preference/CheckBoxPreference;

.field private mEnableDiyColor:Landroid/preference/CheckBoxPreference;

.field private mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

.field private mHideLauncherIcon:Landroid/preference/CheckBoxPreference;

.field private mKillWechat:Landroid/preference/Preference;

.field private mLicense:Landroid/preference/Preference;

.field private mNoNavigationBar:Landroid/preference/CheckBoxPreference;

.field private mPickBg:Landroid/preference/Preference;

.field private mPickColor:Landroid/preference/Preference;

.field private mSetNav:Landroid/preference/ListPreference;

.field private mnoAvatar:Landroid/preference/CheckBoxPreference;

.field private mnowecahtid:Landroid/preference/CheckBoxPreference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lce/hesh/wechatUI/SettingsActivity;->PICK_BG:I

    return-void
.end method

.method private compressBitmapFileAndcopyToFilesDir(Ljava/io/File;)V
    .registers 13
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 786
    if-eqz p1, :cond_2d

    .line 789
    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_46
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_5c

    .line 791
    .local v7, "fileInputStream2":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lce/hesh/wechatUI/SettingsActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 792
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v7, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 793
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    invoke-virtual {v0, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 794
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 795
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 796
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 797
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2d} :catch_4f

    .line 829
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "fileInputStream2":Ljava/io/FileInputStream;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_2d
    :goto_2d
    return-void

    .line 798
    .restart local v7    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_2e
    move-exception v1

    .line 799
    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .line 800
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_30
    const-string v9, "WeChange"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_37} :catch_46
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_5c

    .line 801
    if-eqz v6, :cond_2d

    .line 803
    :try_start_39
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_46

    goto :goto_2d

    .line 804
    :catch_3d
    move-exception v2

    .line 805
    .local v2, "e2":Ljava/io/IOException;
    :try_start_3e
    const-string v9, "WeChange"

    const-string v10, "IOException:fileInputStream.close()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_5c

    goto :goto_2d

    .line 814
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_46
    move-exception v4

    .line 815
    .local v4, "e4":Ljava/io/FileNotFoundException;
    const-string v9, "WeChange"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 809
    .end local v4    # "e4":Ljava/io/FileNotFoundException;
    .restart local v7    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_4f
    move-exception v3

    .line 810
    .local v3, "e3":Ljava/io/IOException;
    move-object v6, v7

    .line 811
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_51
    const-string v9, "WeChange"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_5b} :catch_46
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_2d

    .line 819
    .end local v3    # "e3":Ljava/io/IOException;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_5c
    move-exception v5

    .line 820
    .local v5, "e5":Ljava/io/IOException;
    const-string v9, "WeChange"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 772
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 773
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v1}, Lce/hesh/wechatUI/SettingsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 775
    :goto_29
    return-object v0

    :cond_2a
    move-object v0, v1

    goto :goto_29
.end method

.method private getUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 779
    if-eqz p1, :cond_7

    .line 780
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 782
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isCoolApkAvilible(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 309
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 310
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_27

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_27

    .line 312
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 313
    .local v3, "pn":Ljava/lang/String;
    const-string v4, "com.coolapk.market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 314
    const/4 v4, 0x1

    .line 318
    .end local v0    # "i":I
    .end local v3    # "pn":Ljava/lang/String;
    :goto_23
    return v4

    .line 311
    .restart local v0    # "i":I
    .restart local v3    # "pn":Ljava/lang/String;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .end local v0    # "i":I
    .end local v3    # "pn":Ljava/lang/String;
    :cond_27
    move v4, v5

    .line 318
    goto :goto_23
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 765
    iget v0, p0, Lce/hesh/wechatUI/SettingsActivity;->PICK_BG:I

    if-ne p1, v0, :cond_17

    .line 766
    const-string v0, "drawer_bg.jpg"

    invoke-direct {p0, v0}, Lce/hesh/wechatUI/SettingsActivity;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lce/hesh/wechatUI/SettingsActivity;->compressBitmapFileAndcopyToFilesDir(Ljava/io/File;)V

    .line 767
    const-string v0, "\u5b8c\u6210!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 769
    :cond_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v17, "mod_settings"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lce/hesh/wechatUI/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 95
    const/high16 v17, 0x7f050000

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lce/hesh/wechatUI/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 97
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v17, "MOD Version: "

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v13, "ver":Ljava/lang/StringBuilder;
    const-string v17, "1.7.7.1"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v17, "Wechat Version: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :try_start_41
    const-string v17, "com.tencent.mm"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 102
    .local v14, "versionCode":I
    const-string v17, "com.tencent.mm"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 103
    .local v15, "versionName":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v14, v15}, Lce/hesh/wechatUI/ObfuscationHelper;->isSupportedVersion(ILjava/lang/String;)I

    move-result v17

    if-gez v17, :cond_751

    .line 105
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_92} :catch_769

    .line 112
    .end local v14    # "versionCode":I
    .end local v15    # "versionName":Ljava/lang/String;
    :goto_92
    const-string v17, "version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    const-string v17, "license"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mLicense:Landroid/preference/Preference;

    .line 115
    const-string v17, "setnav"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    .line 116
    const-string v17, "disabled_items"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    .line 117
    const-string v17, "drawer_gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    .line 118
    const-string v17, "actionbar_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    .line 119
    const-string v17, "pickup_bg"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    .line 120
    const-string v17, "diy_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    .line 121
    const-string v17, "hide_launcher_icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mHideLauncherIcon:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v17, "enable_actionbar_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mEnableActionBarColor:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v17, "no_avatar"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mnoAvatar:Landroid/preference/CheckBoxPreference;

    .line 125
    const-string v17, "force_statusbar_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v17, "no_wechatid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mnowecahtid:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v17, "DT_main_chat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    .line 129
    const-string v17, "DT_contact"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    .line 130
    const-string v17, "DT_discovery"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    .line 131
    const-string v17, "DT_moments"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    .line 132
    const-string v17, "DT_sns_scan"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    .line 133
    const-string v17, "DT_sns_shake"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    .line 134
    const-string v17, "DT_nearby_people"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    .line 135
    const-string v17, "DT_drift_bottle"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    .line 136
    const-string v17, "DT_shopping"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    .line 137
    const-string v17, "DT_games"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    .line 138
    const-string v17, "DT_me"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    .line 139
    const-string v17, "DT_photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    .line 140
    const-string v17, "DT_collect"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    .line 141
    const-string v17, "DT_wallet"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    .line 142
    const-string v17, "DT_card_package"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    .line 143
    const-string v17, "DT_emoj"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    .line 144
    const-string v17, "DT_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    .line 145
    const-string v17, "kill_wechat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mKillWechat:Landroid/preference/Preference;

    .line 146
    const-string v17, "donate"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mDonate:Landroid/preference/Preference;

    .line 148
    const-string v17, "enable_bubble"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->WechatBubble:Landroid/preference/CheckBoxPreference;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->WechatBubble:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mnoAvatar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    const-string v17, "enable_diy_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mEnableDiyColor:Landroid/preference/CheckBoxPreference;

    .line 194
    const-string v17, "no_navigationbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mLicense:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mEnableActionBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mEnableDiyColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mnowecahtid:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mHideLauncherIcon:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mKillWechat:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDonate:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "setnav"

    const-string v19, "default"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "navidrawer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5c9

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 215
    :cond_5c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "enable_actionbar_color"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 216
    .local v7, "enableActionBarColor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mEnableActionBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "enable_diy_color"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 218
    .local v8, "enableDiyColor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mEnableDiyColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "no_navigationbar"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "force_statusbar_color"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mnowecahtid:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "no_wechatid"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "no_avatar"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 226
    .local v10, "noAvatar":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mnoAvatar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    if-eqz v7, :cond_78b

    .line 228
    if-eqz v8, :cond_773

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 235
    :goto_673
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 243
    :goto_689
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6cf

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 247
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v17, "force_statusbar_color"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    const-string v17, "no_navigationbar"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6cf
    const-string v17, "179"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lce/hesh/wechatUI/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 256
    .local v12, "preferences":Landroid/content/SharedPreferences;
    const-string v17, "179"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 258
    .local v4, "count":I
    if-nez v4, :cond_740

    .line 259
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 260
    .local v9, "layoutInflater":Landroid/view/LayoutInflater;
    const v17, 0x7f040007

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 261
    .local v16, "view":Landroid/view/View;
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v18, "\u66f4\u65b0\u65e5\u5fd7"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "\u8bc4\u8bba"

    new-instance v19, Lce/hesh/wechatUI/SettingsActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lce/hesh/wechatUI/SettingsActivity$2;-><init>(Lce/hesh/wechatUI/SettingsActivity;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "\u5173\u95ed"

    new-instance v19, Lce/hesh/wechatUI/SettingsActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lce/hesh/wechatUI/SettingsActivity$1;-><init>(Lce/hesh/wechatUI/SettingsActivity;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 299
    .local v3, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 301
    .end local v3    # "alertDialog":Landroid/app/AlertDialog;
    .end local v9    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v16    # "view":Landroid/view/View;
    :cond_740
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 302
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v17, "179"

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    return-void

    .line 107
    .end local v4    # "count":I
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "enableActionBarColor":Z
    .end local v8    # "enableDiyColor":Z
    .end local v10    # "noAvatar":Z
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .restart local v14    # "versionCode":I
    .restart local v15    # "versionName":Ljava/lang/String;
    :cond_751
    :try_start_751
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080039

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lce/hesh/wechatUI/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_767
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_751 .. :try_end_767} :catch_769

    goto/16 :goto_92

    .line 109
    .end local v14    # "versionCode":I
    .end local v15    # "versionName":Ljava/lang/String;
    :catch_769
    move-exception v5

    .line 110
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "not installed."

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_92

    .line 232
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "enableActionBarColor":Z
    .restart local v8    # "enableDiyColor":Z
    .restart local v10    # "noAvatar":Z
    :cond_773
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_673

    .line 238
    :cond_78b
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_689
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 337
    iput-object v1, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 338
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mLicense:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 339
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 344
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mHideLauncherIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mEnableActionBarColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mEnableDiyColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 347
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mKillWechat:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 350
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDonate:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 352
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mnoAvatar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 355
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 360
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 361
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 365
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 369
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 370
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 372
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 373
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 374
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 375
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 377
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 378
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 379
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 380
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 381
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 382
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 383
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 384
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 385
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 386
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 387
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 388
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 390
    iget-object v0, p0, Lce/hesh/wechatUI/SettingsActivity;->WechatBubble:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 391
    return-void
.end method

.method public onDoneClick(Landroid/app/DialogFragment;)V
    .registers 7
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 834
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->colorPickerDialog:Lcolorpickerdialog/ColorPickerDialog;

    if-eqz v2, :cond_46

    .line 835
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 836
    .local v1, "hsv":[F
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->colorPickerDialog:Lcolorpickerdialog/ColorPickerDialog;

    invoke-virtual {v2}, Lcolorpickerdialog/ColorPickerDialog;->getColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 838
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "actionbar_color"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lce/hesh/wechatUI/SettingsActivity;->colorPickerDialog:Lcolorpickerdialog/ColorPickerDialog;

    invoke-virtual {v4}, Lcolorpickerdialog/ColorPickerDialog;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 841
    const v2, 0x7f08002c

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 844
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "hsv":[F
    :cond_46
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v10, 0x7f08002c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 397
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_22

    move-object v2, p2

    .line 398
    check-cast v2, Ljava/lang/String;

    .line 399
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 400
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_main_chat"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 402
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 638
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_21
    return v6

    .line 405
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_22
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_3f

    move-object v2, p2

    .line 406
    check-cast v2, Ljava/lang/String;

    .line 407
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 408
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_contact"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 413
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_3f
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_5c

    move-object v2, p2

    .line 414
    check-cast v2, Ljava/lang/String;

    .line 415
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 416
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_discovery"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 421
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_5c
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_79

    move-object v2, p2

    .line 422
    check-cast v2, Ljava/lang/String;

    .line 423
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 424
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_moments"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 429
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_79
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_96

    move-object v2, p2

    .line 430
    check-cast v2, Ljava/lang/String;

    .line 431
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 432
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_sns_scan"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 437
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_96
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_b4

    move-object v2, p2

    .line 438
    check-cast v2, Ljava/lang/String;

    .line 439
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 440
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_sns_shake"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 445
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_b4
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_d2

    move-object v2, p2

    .line 446
    check-cast v2, Ljava/lang/String;

    .line 447
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 448
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_nearby_people"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 453
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_d2
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_f0

    move-object v2, p2

    .line 454
    check-cast v2, Ljava/lang/String;

    .line 455
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 456
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_drift_bottle"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 458
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 461
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_f0
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_10e

    move-object v2, p2

    .line 462
    check-cast v2, Ljava/lang/String;

    .line 463
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 464
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_shopping"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 469
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_10e
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_12c

    move-object v2, p2

    .line 470
    check-cast v2, Ljava/lang/String;

    .line 471
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_games"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 477
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_12c
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_14a

    move-object v2, p2

    .line 478
    check-cast v2, Ljava/lang/String;

    .line 479
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 480
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_me"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 482
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 485
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_14a
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_168

    move-object v2, p2

    .line 486
    check-cast v2, Ljava/lang/String;

    .line 487
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 488
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_photo"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 493
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_168
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_186

    move-object v2, p2

    .line 494
    check-cast v2, Ljava/lang/String;

    .line 495
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 496
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_collect"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 501
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_186
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_1a4

    move-object v2, p2

    .line 502
    check-cast v2, Ljava/lang/String;

    .line 503
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 504
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_wallet"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 509
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1a4
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_1c2

    move-object v2, p2

    .line 510
    check-cast v2, Ljava/lang/String;

    .line 511
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 512
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_card_package"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 517
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1c2
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_1e0

    move-object v2, p2

    .line 518
    check-cast v2, Ljava/lang/String;

    .line 519
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 520
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_emoj"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 525
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1e0
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_1fe

    move-object v2, p2

    .line 526
    check-cast v2, Ljava/lang/String;

    .line 527
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 528
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DT_setting"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 535
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1fe
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->WechatBubble:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_221

    .line 536
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 537
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "enable_bubble"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 538
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 539
    const-string v5, "\u91cd\u542f\u624b\u673a\u751f\u6548"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 544
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_221
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_279

    .line 545
    const-string v5, "navidrawer"

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_269

    .line 546
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 547
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 548
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_23c
    move-object v2, p2

    .line 554
    check-cast v2, Ljava/lang/String;

    .line 555
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 557
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "setnav"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 550
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_269
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 551
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 552
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_23c

    .line 561
    :cond_279
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDisabledItems:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v5, :cond_297

    move-object v4, p2

    .line 562
    check-cast v4, Ljava/util/Set;

    .line 563
    .local v4, "strs":Ljava/util/Set;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 564
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "disabled_items"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 566
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 570
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "strs":Ljava/util/Set;
    :cond_297
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mnoAvatar:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2b8

    .line 571
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 572
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "no_avatar"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 574
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 577
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2b8
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2e9

    move-object v2, p2

    .line 578
    check-cast v2, Ljava/lang/String;

    .line 579
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 581
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "actionbar_color"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 583
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 585
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2e9
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mEnableActionBarColor:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_32e

    .line 586
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 587
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "enable_actionbar_color"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 589
    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v8, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 590
    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 591
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 592
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 594
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_32e
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mEnableDiyColor:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_36c

    .line 595
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 596
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "enable_diy_color"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 597
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 599
    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_36a

    move v5, v6

    :goto_35e
    invoke-virtual {v8, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 600
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    :cond_36a
    move v5, v7

    .line 599
    goto :goto_35e

    .line 602
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_36c
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_39d

    move-object v2, p2

    .line 603
    check-cast v2, Ljava/lang/String;

    .line 604
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    iget-object v8, p0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lce/hesh/wechatUI/SettingsActivity;->mDrawerGravity:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 606
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "drawer_gravity"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 607
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 608
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 610
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_39d
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mForceStatusBarColor:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_3be

    .line 611
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 612
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "force_statusbar_color"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 614
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 616
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3be
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mNoNavigationBar:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_3df

    .line 617
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 618
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "no_navigationbar"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 619
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 620
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 622
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3df
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mnowecahtid:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_400

    .line 623
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 624
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "no_wechatid"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 626
    invoke-static {p0, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_21

    .line 628
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_400
    iget-object v5, p0, Lce/hesh/wechatUI/SettingsActivity;->mHideLauncherIcon:Landroid/preference/CheckBoxPreference;

    if-eq p1, v5, :cond_407

    move v6, v7

    .line 629
    goto/16 :goto_21

    .line 631
    :cond_407
    invoke-virtual {p0}, Lce/hesh/wechatUI/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 632
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "ce.hesh.wechatUI.SettingsActivityLauncher"

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 633
    .local v0, "aliasName":Landroid/content/ComponentName;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_420

    .line 634
    const/4 v5, 0x2

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_21

    .line 636
    :cond_420
    invoke-virtual {v3, v0, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_21
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 14
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 644
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_13

    .line 645
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_main_chat"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMainChat:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 648
    .end local v3    # "s":Ljava/lang/String;
    :cond_13
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_24

    .line 649
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_contact"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTContact:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 652
    .end local v3    # "s":Ljava/lang/String;
    :cond_24
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_35

    .line 653
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_discovery"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 654
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDiscovery:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 656
    .end local v3    # "s":Ljava/lang/String;
    :cond_35
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_46

    .line 657
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_moments"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMoments:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 660
    .end local v3    # "s":Ljava/lang/String;
    :cond_46
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_57

    .line 661
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_sns_scan"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTScan:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 664
    .end local v3    # "s":Ljava/lang/String;
    :cond_57
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_68

    .line 665
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_sns_shake"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShake:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 668
    .end local v3    # "s":Ljava/lang/String;
    :cond_68
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_79

    .line 669
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_nearby_people"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTNearbyPeople:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 672
    .end local v3    # "s":Ljava/lang/String;
    :cond_79
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_8a

    .line 673
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_drift_bottle"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTDriftBottle:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 676
    .end local v3    # "s":Ljava/lang/String;
    :cond_8a
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_9b

    .line 677
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_shopping"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTShopping:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 680
    .end local v3    # "s":Ljava/lang/String;
    :cond_9b
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_ac

    .line 681
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_games"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTGames:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 684
    .end local v3    # "s":Ljava/lang/String;
    :cond_ac
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_bd

    .line 685
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_me"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTMe:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 688
    .end local v3    # "s":Ljava/lang/String;
    :cond_bd
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_ce

    .line 689
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_photo"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDPhotos:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 692
    .end local v3    # "s":Ljava/lang/String;
    :cond_ce
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_df

    .line 693
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_collect"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 694
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCollect:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 696
    .end local v3    # "s":Ljava/lang/String;
    :cond_df
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_f0

    .line 697
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_wallet"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTWallet:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 700
    .end local v3    # "s":Ljava/lang/String;
    :cond_f0
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_101

    .line 701
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_card_package"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 702
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTCardPackage:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 704
    .end local v3    # "s":Ljava/lang/String;
    :cond_101
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_112

    .line 705
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_emoj"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTEmoj:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 708
    .end local v3    # "s":Ljava/lang/String;
    :cond_112
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_123

    .line 709
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "DT_setting"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 710
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mDTSetting:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 712
    .end local v3    # "s":Ljava/lang/String;
    :cond_123
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mLicense:Landroid/preference/Preference;

    if-ne p1, v7, :cond_13a

    .line 713
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-class v7, Lce/hesh/wechatUI/LicenseActivity;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v1}, Lce/hesh/wechatUI/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 761
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_139
    return v6

    .line 719
    :cond_13a
    iget-object v7, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickBg:Landroid/preference/Preference;

    if-ne p1, v7, :cond_1a2

    .line 720
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 721
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "crop"

    const-string v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputFormat"

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputX"

    invoke-static {p0}, Lce/hesh/wechatUI/Common;->getDrawerWidthdip(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {p0, v10, v11}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputY"

    const-wide/16 v10, 0xa0

    invoke-static {p0, v10, v11}, Lce/hesh/wechatUI/Common;->dipTopx(Landroid/content/Context;J)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scale"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "output"

    const-string v8, "drawer_bg.jpg"

    invoke-direct {p0, v8}, Lce/hesh/wechatUI/SettingsActivity;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {p0, v8}, Lce/hesh/wechatUI/SettingsActivity;->getUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 723
    :try_start_19d
    iget v6, p0, Lce/hesh/wechatUI/SettingsActivity;->PICK_BG:I

    invoke-virtual {p0, v1, v6}, Lce/hesh/wechatUI/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1a2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19d .. :try_end_1a2} :catch_20f

    .line 728
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1a2
    :goto_1a2
    iget-object v6, p0, Lce/hesh/wechatUI/SettingsActivity;->mPickColor:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1b8

    .line 729
    new-instance v6, Lcolorpickerdialog/ColorPickerDialog;

    invoke-direct {v6}, Lcolorpickerdialog/ColorPickerDialog;-><init>()V

    iput-object v6, p0, Lce/hesh/wechatUI/SettingsActivity;->colorPickerDialog:Lcolorpickerdialog/ColorPickerDialog;

    .line 730
    iget-object v6, p0, Lce/hesh/wechatUI/SettingsActivity;->colorPickerDialog:Lcolorpickerdialog/ColorPickerDialog;

    invoke-virtual {p0}, Lce/hesh/wechatUI/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "ColorPicker"

    invoke-virtual {v6, v7, v8}, Lcolorpickerdialog/ColorPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 732
    :cond_1b8
    iget-object v6, p0, Lce/hesh/wechatUI/SettingsActivity;->mKillWechat:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1f8

    .line 733
    invoke-virtual {p0}, Lce/hesh/wechatUI/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lce/hesh/wechatUI/SettingsActivity;->isCoolApkAvilible(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_218

    .line 735
    :try_start_1c6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lce/hesh/wechatUI/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, "str":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v2, "localIntent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 738
    const-string v6, "com.coolapk.market"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0, v2}, Lce/hesh/wechatUI/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1f8} :catch_22d

    .line 753
    .end local v2    # "localIntent":Landroid/content/Intent;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1f8
    :goto_1f8
    iget-object v6, p0, Lce/hesh/wechatUI/SettingsActivity;->mDonate:Landroid/preference/Preference;

    if-ne p1, v6, :cond_20c

    .line 755
    :try_start_1fc
    const-string v6, "https://qr.alipay.com/ap045sqiaa49agw1f5"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 756
    .local v5, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 757
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lce/hesh/wechatUI/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_20c} :catch_22b

    .line 761
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_20c
    :goto_20c
    const/4 v6, 0x0

    goto/16 :goto_139

    .line 724
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_20f
    move-exception v0

    .line 725
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "WeChange"

    const-string v7, "can not pick pic"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    .line 746
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_218
    :try_start_218
    const-string v6, "http://www.coolapk.com/apk/ce.hesh.wechatUI"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 747
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 748
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lce/hesh/wechatUI/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_228} :catch_229

    goto :goto_1f8

    .line 749
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_229
    move-exception v6

    goto :goto_1f8

    .line 758
    :catch_22b
    move-exception v6

    goto :goto_20c

    .line 741
    :catch_22d
    move-exception v6

    goto :goto_1f8
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 322
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 323
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    iget-object v3, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "setnav"

    const-string v5, "default"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, "index":I
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 326
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mSetNav:Landroid/preference/ListPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    iget-object v3, p0, Lce/hesh/wechatUI/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "actionbar_color"

    const-string v5, "#22292C"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 328
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 329
    if-ltz v1, :cond_49

    .line 330
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 331
    iget-object v2, p0, Lce/hesh/wechatUI/SettingsActivity;->mActionBarColor:Landroid/preference/ListPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    :cond_49
    return-void
.end method
