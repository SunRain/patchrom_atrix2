.class public Lcom/androidquery/util/AQUtility;
.super Ljava/lang/Object;
.source "AQUtility.java"


# static fields
.field private static cacheDir:Ljava/io/File;

.field private static context:Landroid/content/Context;

.field private static debug:Z

.field private static eh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static handler:Landroid/os/Handler;

.field private static storeExe:Ljava/util/concurrent/ScheduledExecutorService;

.field private static times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanCache(Ljava/io/File;JJ)V
    .locals 6
    .parameter "cacheDir"
    .parameter "triggerSize"
    .parameter "targetSize"

    .prologue
    .line 485
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 486
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 501
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    new-instance v3, Lcom/androidquery/util/Common;

    invoke-direct {v3}, Lcom/androidquery/util/Common;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 490
    invoke-static {v1, p1, p2}, Lcom/androidquery/util/AQUtility;->testCleanNeeded([Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    invoke-static {v1, p3, p4}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V

    .line 494
    :cond_2
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v2

    .line 495
    .local v2, temp:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #temp:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static cleanCache([Ljava/io/File;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 527
    const-wide/16 v1, 0x0

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    .line 530
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 547
    const-string v0, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    return-void

    .line 532
    :cond_0
    aget-object v4, p0, v0

    .line 534
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 536
    cmp-long v5, v2, p1

    if-ltz v5, :cond_1

    .line 539
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 540
    add-int/lit8 v1, v1, 0x1

    .line 530
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static cleanCacheAsync(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 458
    const-wide/32 v2, 0x2dc6c0

    .line 459
    .local v2, triggerSize:J
    const-wide/32 v0, 0x1e8480

    .line 460
    .local v0, targetSize:J
    invoke-static {p0, v2, v3, v0, v1}, Lcom/androidquery/util/AQUtility;->cleanCacheAsync(Landroid/content/Context;JJ)V

    .line 461
    return-void
.end method

.method public static cleanCacheAsync(Landroid/content/Context;JJ)V
    .locals 9
    .parameter "context"
    .parameter "triggerSize"
    .parameter "targetSize"

    .prologue
    .line 468
    :try_start_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 470
    .local v0, cacheDir:Ljava/io/File;
    new-instance v4, Lcom/androidquery/util/Common;

    invoke-direct {v4}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v3

    .line 472
    .local v3, task:Lcom/androidquery/util/Common;
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 474
    .local v2, exe:Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v2           #exe:Ljava/util/concurrent/ScheduledExecutorService;
    .end local v3           #task:Lcom/androidquery/util/Common;
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 350
    if-eqz p0, :cond_0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 304
    .local v0, b:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 307
    return-void

    .line 305
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "msg"
    .parameter "msg2"

    .prologue
    .line 98
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 104
    sget-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, trace:Ljava/lang/String;
    const-string v1, "AQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0           #trace:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static debugNotify()V
    .locals 2

    .prologue
    .line 82
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static debugWait(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 63
    sget-boolean v1, Lcom/androidquery/util/AQUtility;->debug:Z

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    .line 67
    :cond_1
    sget-object v2, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static dip2pixel(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "n"

    .prologue
    .line 551
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 552
    .local v0, value:I
    return v0
.end method

.method public static ensureUIThread()V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 382
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 384
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 386
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dir"
    .parameter "url"

    .prologue
    .line 414
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    .line 415
    :cond_0
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, name:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/androidquery/util/AQUtility;->makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 417
    .local v0, file:Ljava/io/File;
    goto :goto_0
.end method

.method private static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 405
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, hash:Ljava/lang/String;
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getExistedCacheByUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "context"
    .parameter "url"

    .prologue
    .line 410
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dir"
    .parameter "url"

    .prologue
    .line 422
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 423
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 426
    .end local v0           #file:Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static getExistedCacheByUrlSetAccess(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "dir"
    .parameter "url"

    .prologue
    .line 430
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 431
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 432
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->lastAccess(Ljava/io/File;)V

    .line 434
    :cond_0
    return-object v0
.end method

.method private static getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    .line 366
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    .line 262
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMD5([B)[B
    .locals 1
    .parameter

    .prologue
    .line 287
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 289
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->getMD5([B)[B

    move-result-object v1

    .line 276
    .local v1, data:[B
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 278
    .local v0, bi:Ljava/math/BigInteger;
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method

.method public static getTempDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 505
    new-instance v0, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 508
    :cond_0
    return-object v0
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "handler"
    .parameter "callback"
    .parameter "fallback"
    .parameter "report"
    .parameter "cls"
    .parameter "cls2"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v6

    .line 169
    .local v6, e:Ljava/lang/Exception;
    if-eqz p3, :cond_0

    .line 170
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 174
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v6}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "handler"
    .parameter "callback"
    .parameter "fallback"
    .parameter "report"
    .parameter "cls"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 161
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "handler"
    .parameter "callback"
    .parameter "fallback"
    .parameter "cls"
    .parameter "cls2"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 183
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v1

    .line 185
    :cond_1
    const/4 v0, 0x0

    .line 188
    .local v0, method:Ljava/lang/reflect/Method;
    if-nez p3, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-array p3, v2, [Ljava/lang/Class;

    .line 189
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 197
    if-eqz p2, :cond_0

    .line 199
    if-nez p4, :cond_3

    .line 200
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 201
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static isUIThread()Z
    .locals 5

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 249
    .local v2, uiId:J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 251
    .local v0, cId:J
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static lastAccess(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 439
    .local v0, now:J
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 440
    return-void
.end method

.method private static makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    .local v0, result:Ljava/io/File;
    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "run"

    .prologue
    .line 266
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "run"
    .parameter "delay"

    .prologue
    .line 270
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 118
    sget-object v1, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "alphaValue"

    .prologue
    .line 227
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 231
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 233
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 390
    sput-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 391
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 394
    :cond_0
    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    .line 558
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 58
    sput-boolean p0, Lcom/androidquery/util/AQUtility;->debug:Z

    .line 59
    return-void
.end method

.method public static setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 130
    sput-object p0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 131
    return-void
.end method

.method public static store(Ljava/io/File;[B)V
    .locals 1
    .parameter "file"
    .parameter "data"

    .prologue
    .line 446
    if-eqz p0, :cond_0

    .line 447
    :try_start_0
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->write(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeAsync(Ljava/io/File;[BJ)V
    .locals 6
    .parameter "file"
    .parameter "data"
    .parameter "delay"

    .prologue
    const/4 v5, 0x1

    .line 372
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 374
    .local v0, exe:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object v1

    .line 375
    .local v1, task:Lcom/androidquery/util/Common;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 377
    return-void
.end method

.method private static testCleanNeeded([Ljava/io/File;J)Z
    .locals 8
    .parameter "files"
    .parameter "triggerSize"

    .prologue
    const/4 v3, 0x0

    .line 513
    const-wide/16 v1, 0x0

    .line 515
    .local v1, total:J
    array-length v5, p0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 522
    :goto_1
    return v3

    .line 515
    :cond_0
    aget-object v0, p0, v4

    .line 516
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 517
    cmp-long v6, v1, p1

    if-lez v6, :cond_1

    .line 518
    const/4 v3, 0x1

    goto :goto_1

    .line 515
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static time(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 136
    sget-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public static timeEnd(Ljava/lang/String;J)J
    .locals 9
    .parameter "tag"
    .parameter "threshold"

    .prologue
    const-wide/16 v5, 0x0

    .line 143
    sget-object v7, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 144
    .local v4, old:Ljava/lang/Long;
    if-nez v4, :cond_1

    move-wide v0, v5

    .line 154
    :cond_0
    :goto_0
    return-wide v0

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    .local v2, now:J
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v0, v2, v7

    .line 150
    .local v0, diff:J
    cmp-long v5, p1, v5

    if-eqz v5, :cond_2

    cmp-long v5, v0, p1

    if-lez v5, :cond_0

    .line 151
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .locals 3
    .parameter "is"

    .prologue
    .line 311
    const/4 v2, 0x0

    check-cast v2, [B

    .line 313
    .local v2, result:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 317
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/InputStream;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 324
    :goto_0
    return-object v2

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static transparent(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "transparent"

    .prologue
    .line 217
    const/high16 v0, 0x3f80

    .line 218
    .local v0, alpha:F
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f00

    .line 220
    :cond_0
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->setAlpha(Landroid/view/View;F)V

    .line 222
    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .locals 3
    .parameter "file"
    .parameter "data"

    .prologue
    .line 331
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 333
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    :cond_0
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 340
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 341
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 346
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 343
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
