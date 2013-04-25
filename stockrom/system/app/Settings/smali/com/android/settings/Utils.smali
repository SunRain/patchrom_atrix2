.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/Utils;->mDeviceType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeStr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 363
    if-nez p0, :cond_0

    .line 364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    .line 365
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, brokenDownLocale:[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 368
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 370
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fname"

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 471
    .local v2, line:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 475
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 480
    .end local v0           #br:Ljava/io/BufferedReader;
    :goto_0
    return-object v2

    .line 475
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 477
    .end local v0           #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 478
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Utils"

    const-string v4, "IO Exception when reading /sys/ file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "fname"
    .parameter "value"

    .prologue
    .line 485
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 496
    const/4 v3, 0x1

    .end local v2           #fw:Ljava/io/FileWriter;
    :goto_0
    return v3

    .line 489
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 491
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 492
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, Error:Ljava/lang/String;
    const-string v3, "Utils"

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p0, :cond_1

    .line 353
    :cond_0
    return-object v0

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const-string v0, ""

    .line 349
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "batteryChangedIntent"

    .prologue
    .line 377
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 378
    .local v0, level:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 379
    .local v1, scale:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .parameter "res"
    .parameter "batteryChangedIntent"

    .prologue
    const/4 v6, 0x1

    .line 383
    move-object v0, p1

    .line 385
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, plugType:I
    const-string v4, "status"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 388
    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 389
    const v4, 0x7f0b0045

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, statusString:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v1, v6, :cond_1

    const v4, 0x7f0b0046

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    :cond_0
    :goto_1
    return-object v3

    .line 391
    :cond_1
    const v4, 0x7f0b0047

    goto :goto_0

    .line 397
    .end local v3           #statusString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 398
    const v4, 0x7f0b0048

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 399
    .end local v3           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 400
    const v4, 0x7f0b0049

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 401
    .end local v3           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 402
    const v4, 0x7f0b004a

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 404
    .end local v3           #statusString:Ljava/lang/String;
    :cond_5
    const v4, 0x7f0b0044

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 336
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 338
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 339
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getScreenType(Landroid/content/Context;)I
    .locals 6
    .parameter "con"

    .prologue
    .line 500
    sget v4, Lcom/android/settings/Utils;->mDeviceType:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 501
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 502
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 503
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 504
    .local v1, shortSize:I
    mul-int/lit16 v4, v1, 0xa0

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v4, v5

    .line 505
    .local v2, shortSizeDp:I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_1

    .line 507
    const/4 v4, 0x0

    sput v4, Lcom/android/settings/Utils;->mDeviceType:I

    .line 516
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_0
    sget v4, Lcom/android/settings/Utils;->mDeviceType:I

    return v4

    .line 508
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_1
    const/16 v4, 0x2d0

    if-ge v2, v4, :cond_2

    .line 510
    const/4 v4, 0x1

    sput v4, Lcom/android/settings/Utils;->mDeviceType:I

    goto :goto_0

    .line 513
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/settings/Utils;->mDeviceType:I

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .parameter "cm"

    .prologue
    const v8, 0x7f0b034a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 437
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 442
    .local v2, usbAvailable:Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 443
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 445
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 458
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_0
    move v2, v7

    .line 441
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_1
    move v4, v7

    .line 442
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_2
    move v0, v7

    .line 443
    goto :goto_2

    .line 447
    .restart local v0       #bluetoothAvailable:Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 448
    goto :goto_3

    .line 449
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 450
    goto :goto_3

    .line 451
    :cond_5
    if-eqz v4, :cond_6

    .line 452
    const v6, 0x7f0b0347

    goto :goto_3

    .line 453
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 454
    const v6, 0x7f0b0349

    goto :goto_3

    .line 455
    :cond_7
    if-eqz v2, :cond_8

    .line 456
    const v6, 0x7f0b0346

    goto :goto_3

    .line 458
    :cond_8
    const v6, 0x7f0b0348

    goto :goto_3
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 323
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 325
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 326
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .parameter "con"

    .prologue
    .line 520
    invoke-static {p0}, Lcom/android/settings/Utils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "con"

    .prologue
    .line 528
    invoke-static {p0}, Lcom/android/settings/Utils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 306
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 308
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 312
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 314
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 9
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 417
    invoke-virtual {p2}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 418
    .local v1, movePadding:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 421
    invoke-virtual {p2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 422
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1050027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 424
    .local v3, paddingSide:I
    const v5, 0x1050026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 427
    .local v2, paddingBottom:I
    if-eqz p3, :cond_2

    move v0, v6

    .line 428
    .local v0, effectivePaddingSide:I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 430
    .end local v0           #effectivePaddingSide:I
    .end local v2           #paddingBottom:I
    .end local v3           #paddingSide:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1           #movePadding:Z
    :cond_1
    move v1, v6

    .line 417
    goto :goto_0

    .restart local v1       #movePadding:Z
    .restart local v2       #paddingBottom:I
    .restart local v3       #paddingSide:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 427
    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 16
    .parameter "context"
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 239
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 242
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v12, 0x80

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 243
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 244
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 245
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 246
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 250
    .local v11, title:Ljava/lang/String;
    const/4 v10, 0x0

    .line 254
    .local v10, summary:Ljava/lang/String;
    :try_start_0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 256
    .local v8, res:Landroid/content/res/Resources;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 258
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 259
    const-string v12, "com.android.settings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 260
    const-string v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 261
    const-string v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 271
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 272
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 278
    :cond_1
    move-object/from16 v0, p2

    iput-object v11, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 279
    move-object/from16 v0, p2

    iput-object v10, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 281
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 284
    const/4 v12, 0x1

    .line 292
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :goto_2
    return v12

    .line 244
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 265
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 263
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 111
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 144
    :goto_0
    return v7

    .line 115
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 119
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 121
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 122
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 123
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 127
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 131
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 133
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    move v7, v8

    .line 136
    goto :goto_0

    .line 121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 144
    goto :goto_0
.end method
