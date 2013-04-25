.class public Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field static final DEBUG_DISPLAY_SIZE:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field static final TAG:Ljava/lang/String; = "Display"

.field private static sInitialized:Z

.field private static final sStaticInit:Ljava/lang/Object;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mDensity:F

.field private final mDisplay:I

.field mDpiX:F

.field mDpiY:F

.field private mLastGetTime:F

.field private mMaximumTextureSize:I

.field private mMirroringRegion:Landroid/graphics/Rect;

.field private mPixelFormat:I

.field private mRefreshRate:F

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 524
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    .line 525
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    return-void
.end method

.method constructor <init>(ILandroid/view/CompatibilityInfoHolder;)V
    .locals 2
    .parameter "display"
    .parameter "compatInfo"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mMirroringRegion:Landroid/graphics/Rect;

    .line 520
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    .line 521
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 50
    sget-object v1, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-boolean v0, Landroid/view/Display;->sInitialized:Z

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Landroid/view/Display;->nativeClassInit()V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/Display;->sInitialized:Z

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    iput-object p2, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 57
    iput p1, p0, Landroid/view/Display;->mDisplay:I

    .line 58
    invoke-direct {p0, p1}, Landroid/view/Display;->init(I)V

    .line 59
    return-void

    .line 55
    .restart local p2
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :cond_1
    new-instance p2, Landroid/view/CompatibilityInfoHolder;

    .end local p2
    invoke-direct {p2}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    goto :goto_0
.end method

.method public static createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;
    .locals 1
    .parameter "displayId"
    .parameter "compat"

    .prologue
    .line 533
    new-instance v0, Landroid/view/Display;

    invoke-direct {v0, p0, p1}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method static native getDisplayCount()I
.end method

.method private getMirroringRegion()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 481
    sget-boolean v5, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v5, :cond_2

    .line 482
    iget-object v5, p0, Landroid/view/Display;->mMirroringRegion:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-nez v5, :cond_2

    .line 483
    iget-object v5, p0, Landroid/view/Display;->mMirroringRegion:Landroid/graphics/Rect;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    const-string/jumbo v5, "persist.hwc.mirroring.region"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, values:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 489
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 490
    .local v1, left:I
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 491
    .local v3, top:I
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, right:I
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 494
    .local v0, bottom:I
    if-ge v1, v2, :cond_0

    if-lt v3, v0, :cond_3

    .line 495
    :cond_0
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5}, Ljava/lang/NumberFormatException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :catch_0
    move-exception v5

    .line 503
    :cond_1
    :goto_0
    const-string v5, "Display"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mirroring region is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/Display;->mMirroringRegion:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v4           #values:[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/view/Display;->mMirroringRegion:Landroid/graphics/Rect;

    return-object v5

    .line 498
    .restart local v0       #bottom:I
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #top:I
    .restart local v4       #values:[Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v5, p0, Landroid/view/Display;->mMirroringRegion:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private native getRawHeightNative()I
.end method

.method private native getRawWidthNative()I
.end method

.method private getSizeInternal(Landroid/graphics/Point;Z)V
    .locals 6
    .parameter "outSize"
    .parameter "doCompat"

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    .line 102
    .local v2, wm:Landroid/view/IWindowManager;
    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getDisplaySize(Landroid/graphics/Point;)V

    .line 105
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 106
    iget-object v4, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 108
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 109
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v5, p0, Landroid/view/Display;->mDensity:F

    iput v5, v3, Landroid/util/DisplayMetrics;->density:F

    .line 110
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 112
    iget-object v3, p0, Landroid/view/Display;->mTmpMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 113
    monitor-exit v4

    .line 131
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0       #ci:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Display"

    const-string v4, "Unable to get display size"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 119
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method static getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 458
    sget-object v1, Landroid/view/Display;->sStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 459
    :try_start_0
    sget-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 460
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    .line 463
    :cond_0
    sget-object v0, Landroid/view/Display;->sWindowManager:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .parameter "outSmallestSize"
    .parameter "outLargestSize"

    .prologue
    const/4 v4, 0x0

    .line 178
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 179
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get display size range"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 183
    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 184
    iput v4, p2, Landroid/graphics/Point;->x:I

    .line 185
    iput v4, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/view/Display;->mDisplay:I

    return v0
.end method

.method public getExternalRotation()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v3

    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 226
    .local v0, now:J
    long-to-float v2, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a0

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 227
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 228
    long-to-float v2, v0

    iput v2, p0, Landroid/view/Display;->mLastGetTime:F

    .line 230
    :cond_0
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    monitor-exit v3

    return v2

    .line 231
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 197
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->getMaximumSizeDimension()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 200
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get display maximum size dimension"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaximumTextureSize()I
    .locals 1

    .prologue
    .line 425
    sget-boolean v0, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v0, :cond_0

    .line 426
    iget v0, p0, Landroid/view/Display;->mMaximumTextureSize:I

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "outMetrics"

    .prologue
    .line 350
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 352
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v1, v3}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 353
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v1, p0, Landroid/view/Display;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 356
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 363
    :cond_0
    return-void

    .line 353
    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMetricsWithSize(Landroid/util/DisplayMetrics;II)V
    .locals 2
    .parameter "outMetrics"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 446
    iget v0, p0, Landroid/view/Display;->mDensity:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 448
    iput p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 449
    iput p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 451
    iget v0, p0, Landroid/view/Display;->mDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 452
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 453
    iget v0, p0, Landroid/view/Display;->mDpiX:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 454
    iget v0, p0, Landroid/view/Display;->mDpiY:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 455
    return-void
.end method

.method public native getOrientation()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/view/Display;->mPixelFormat:I

    return v0
.end method

.method public getRawExternalHeight()I
    .locals 3

    .prologue
    const/16 v2, 0x780

    .line 405
    sget-boolean v1, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v1, :cond_1

    .line 406
    const-string/jumbo v1, "persist.hwc.primary.tv"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 407
    .local v0, primaryTv:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v1

    .line 416
    .end local v0           #primaryTv:I
    :goto_0
    return v1

    .line 410
    .restart local v0       #primaryTv:I
    :cond_0
    invoke-direct {p0}, Landroid/view/Display;->getMirroringRegion()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 413
    .end local v0           #primaryTv:I
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v1

    if-lt v1, v2, :cond_3

    .line 414
    :cond_2
    const/16 v1, 0x438

    goto :goto_0

    .line 416
    :cond_3
    const/16 v1, 0x2d0

    goto :goto_0
.end method

.method public getRawExternalWidth()I
    .locals 3

    .prologue
    const/16 v1, 0x780

    .line 382
    sget-boolean v2, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v2, :cond_2

    .line 383
    const-string/jumbo v1, "persist.hwc.primary.tv"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, primaryTv:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 385
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v1

    .line 395
    .end local v0           #primaryTv:I
    :cond_0
    :goto_0
    return v1

    .line 387
    .restart local v0       #primaryTv:I
    :cond_1
    invoke-direct {p0}, Landroid/view/Display;->getMirroringRegion()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    .line 392
    .end local v0           #primaryTv:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 395
    const/16 v1, 0x500

    goto :goto_0
.end method

.method public getRawHeight()I
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/view/Display;->getRawHeightNative()I

    move-result v0

    .line 289
    .local v0, h:I
    return v0
.end method

.method public getRawWidth()I
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/view/Display;->getRawWidthNative()I

    move-result v0

    .line 274
    .local v0, w:I
    return v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .parameter "outMetrics"

    .prologue
    .line 370
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 372
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 373
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .locals 4
    .parameter "outSize"

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 248
    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 261
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 253
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 254
    invoke-virtual {p0}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Display"

    const-string v3, "Unable to get real display size"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outSize"

    .prologue
    .line 140
    iget-object v1, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 142
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/view/Display;->mRefreshRate:F

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 1
    .parameter "outSize"

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 97
    return-void
.end method

.method public getWidth()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    iget-object v3, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    monitor-enter v3

    .line 210
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 211
    .local v0, now:J
    long-to-float v2, v0

    iget v4, p0, Landroid/view/Display;->mLastGetTime:F

    const/high16 v5, 0x41a0

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 212
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Landroid/view/Display;->getSizeInternal(Landroid/graphics/Point;Z)V

    .line 213
    long-to-float v2, v0

    iput v2, p0, Landroid/view/Display;->mLastGetTime:F

    .line 215
    :cond_0
    iget-object v2, p0, Landroid/view/Display;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    monitor-exit v3

    return v2

    .line 216
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
