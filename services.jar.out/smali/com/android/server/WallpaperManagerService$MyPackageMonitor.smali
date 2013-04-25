.class Lcom/android/server/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .locals 10
    .parameter "doit"
    .parameter "wallpaper"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, changed:Z
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, change:I
    if-eq v0, v8, :cond_0

    if-ne v0, v7, :cond_1

    .line 347
    :cond_0
    const/4 v1, 0x1

    .line 348
    if-eqz p1, :cond_1

    .line 349
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper uninstalled, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 355
    .end local v0           #change:I
    :cond_1
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 356
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 358
    .restart local v0       #change:I
    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_3

    .line 360
    :cond_2
    iput-object v9, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 363
    .end local v0           #change:I
    :cond_3
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_4
    :goto_0
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 377
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :cond_5
    :goto_1
    return v1

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper component gone, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    goto :goto_0

    .line 379
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 380
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 6
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 319
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 323
    .local v3, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0, p4, v3}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v2

    .line 324
    .local v2, res:Z
    or-int/2addr v0, v2

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v2           #res:Z
    .end local v3           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    monitor-exit v5

    return v0

    .line 327
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 295
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    goto :goto_1

    .line 301
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 271
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 272
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 274
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 277
    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 278
    .local v0, comp:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 280
    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6, v2}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    const-string v3, "WallpaperService"

    const-string v5, "Wallpaper no longer available; reverting to default"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 272
    .end local v0           #comp:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v2           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    monitor-exit v4

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 309
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_1
    monitor-exit v3

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onSomePackagesChanged()V
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 335
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_0
    monitor-exit v3

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
