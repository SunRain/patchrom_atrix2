.class public Lcom/androidquery/service/MarketService;
.super Ljava/lang/Object;
.source "MarketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/service/MarketService$Handler;
    }
.end annotation


# static fields
.field public static final MAJOR:I = 0x2

.field public static final MINOR:I = 0x1

.field public static final REVISION:I

.field private static ai:Landroid/content/pm/ApplicationInfo;

.field private static pi:Landroid/content/pm/PackageInfo;


# instance fields
.field private act:Landroid/app/Activity;

.field private aq:Lcom/androidquery/AQuery;

.field private expire:J

.field private force:Z

.field private handler:Lcom/androidquery/service/MarketService$Handler;

.field private level:I

.field private locale:Ljava/lang/String;

.field private progress:I

.field private rateUrl:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/32 v0, 0xafc80

    iput-wide v0, p0, Lcom/androidquery/service/MarketService;->expire:J

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/service/MarketService;->level:I

    .line 77
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    .line 78
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    .line 79
    new-instance v0, Lcom/androidquery/service/MarketService$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androidquery/service/MarketService$Handler;-><init>(Lcom/androidquery/service/MarketService;Lcom/androidquery/service/MarketService$Handler;)V

    iput-object v0, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/service/MarketService;->locale:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getMarketUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$10(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/androidquery/service/MarketService;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-static {p0, p1}, Lcom/androidquery/service/MarketService;->setSkipVersion(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/androidquery/service/MarketService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 235
    .local v0, d:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/androidquery/service/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/androidquery/service/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    .line 195
    :cond_0
    sget-object v0, Lcom/androidquery/service/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "https://androidquery.appspot.com"

    return-object v0
.end method

.method private getMarketUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 201
    sget-object v1, Lcom/androidquery/service/MarketService;->pi:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sput-object v1, Lcom/androidquery/service/MarketService;->pi:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    sget-object v1, Lcom/androidquery/service/MarketService;->pi:Landroid/content/pm/PackageInfo;

    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getQueryUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, appId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/api/market?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/service/MarketService;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&aq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0.22.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, url:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/androidquery/service/MarketService;->force:Z

    if-eqz v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&force=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    :cond_0
    return-object v1
.end method

.method private static getSkipVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 419
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aqs.skip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private getVersionCode()I
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static openUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .parameter "act"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 270
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return v3

    .line 272
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 273
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const/4 v3, 0x1

    goto :goto_0

    .line 277
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private outdated(Ljava/lang/String;I)Z
    .locals 5
    .parameter "latestVer"
    .parameter "latestCode"

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v4, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    invoke-static {v4}, Lcom/androidquery/service/MarketService;->getSkipVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, skip:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v3

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, version:Ljava/lang/String;
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersionCode()I

    move-result v0

    .line 318
    .local v0, code:I
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    if-gt v0, p2, :cond_0

    .line 321
    iget v3, p0, Lcom/androidquery/service/MarketService;->level:I

    invoke-direct {p0, v2, p1, v3}, Lcom/androidquery/service/MarketService;->requireUpdate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0
.end method

.method private static patchBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<small>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</small>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requireUpdate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    :try_start_0
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 335
    const-string v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 337
    array-length v4, v2

    if-lt v4, v5, :cond_2

    array-length v4, v3

    if-ge v4, v5, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 339
    :cond_3
    packed-switch p3, :pswitch_data_0

    move v0, v1

    .line 354
    goto :goto_0

    .line 341
    :pswitch_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 342
    goto :goto_0

    .line 345
    :cond_4
    :pswitch_1
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v2, v4

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v1

    .line 346
    goto :goto_0

    .line 349
    :cond_5
    :pswitch_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x3

    aget-object v2, v2, v4

    array-length v4, v3

    add-int/lit8 v4, v4, -0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 350
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    move v0, v1

    .line 359
    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setSkipVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "version"

    .prologue
    .line 415
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aqs.skip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method


# virtual methods
.method protected callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    if-nez p2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v0, "version"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "code"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 295
    const-string v2, "version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    const-string v2, "outdated"

    invoke-direct {p0, v0, v1}, Lcom/androidquery/service/MarketService;->outdated(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    iget-boolean v2, p0, Lcom/androidquery/service/MarketService;->force:Z

    if-nez v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/androidquery/service/MarketService;->outdated(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :cond_2
    invoke-virtual {p0, p2}, Lcom/androidquery/service/MarketService;->showUpdateDialog(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public checkVersion()V
    .locals 5

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getQueryUrl()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 257
    .local v0, cb:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<Lorg/json/JSONObject;>;"
    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/AjaxCallback;

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/AjaxCallback;

    iget-object v3, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    const-string v4, "marketCb"

    invoke-virtual {v2, v3, v4}, Lcom/androidquery/callback/AjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/AjaxCallback;

    iget-boolean v3, p0, Lcom/androidquery/service/MarketService;->force:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/AjaxCallback;

    iget-wide v3, p0, Lcom/androidquery/service/MarketService;->expire:J

    invoke-virtual {v2, v3, v4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    iget v3, p0, Lcom/androidquery/service/MarketService;->progress:I

    invoke-virtual {v2, v3}, Lcom/androidquery/AQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 261
    return-void

    .line 257
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public expire(J)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "expire"

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/androidquery/service/MarketService;->expire:J

    .line 185
    return-object p0
.end method

.method public force(Z)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "force"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/androidquery/service/MarketService;->force:Z

    .line 173
    return-object p0
.end method

.method public level(I)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "level"

    .prologue
    .line 125
    iput p1, p0, Lcom/androidquery/service/MarketService;->level:I

    .line 126
    return-object p0
.end method

.method public locale(Ljava/lang/String;)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "locale"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->locale:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public progress(I)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "id"

    .prologue
    .line 161
    iput p1, p0, Lcom/androidquery/service/MarketService;->progress:I

    .line 162
    return-object p0
.end method

.method public rateUrl(Ljava/lang/String;)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "url"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method protected showUpdateDialog(Lorg/json/JSONObject;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 367
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 373
    const-string v1, "update"

    const-string v2, "Update"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "skip"

    const-string v3, "Skip"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    const-string v3, "rate"

    const-string v4, "Rate"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    const-string v4, "wbody"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    const-string v5, "title"

    const-string v6, "Update Available"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v5, "wbody"

    invoke-static {v5, v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    const-string v5, "version"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Lcom/androidquery/service/MarketService;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 386
    iget-object v6, p0, Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;

    .line 388
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 390
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 391
    iget-object v5, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 392
    iget-object v3, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    iget-object v2, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 396
    invoke-static {v4}, Lcom/androidquery/service/MarketService;->patchBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/service/MarketService;->handler:Lcom/androidquery/service/MarketService$Handler;

    invoke-static {v1, v8, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v1, p0, Lcom/androidquery/service/MarketService;->aq:Lcom/androidquery/AQuery;

    invoke-virtual {v1, v0}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method

.method public updateUrl(Ljava/lang/String;)Lcom/androidquery/service/MarketService;
    .locals 0
    .parameter "url"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;

    .line 138
    return-object p0
.end method
