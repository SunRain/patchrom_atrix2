.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DB_TMPFILE_PAT:Ljava/util/regex/Pattern;


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mEarlyUpgrade:Z

.field final mInternal:Z

.field final mName:Ljava/lang/String;

.field mNumDeletes:I

.field mNumInserts:I

.field mNumQueries:I

.field mNumUpdates:I

.field final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field mScanStartTime:J

.field mScanStopTime:J

.field mUpgradeAttempted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    const-string v0, "\\.db-\\w+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->DB_TMPFILE_PAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"
    .parameter "earlyUpgrade"
    .parameter "objectRemovedCallback"

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 357
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 358
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    .line 359
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 360
    iput-boolean p4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    .line 361
    iput-object p5, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 362
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 363
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 385
    monitor-enter p0

    const/4 v1, 0x0

    .line 386
    .local v1, result:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 399
    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 401
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 403
    :goto_0
    monitor-exit p0

    return-object v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-nez v2, :cond_0

    .line 391
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to open database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    const/4 v2, 0x0

    goto :goto_0

    .line 385
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v3

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->access$800(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 371
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "db"

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 491
    :cond_0
    return-void

    .line 418
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 421
    const-string v19, "_OBJECT_REMOVED"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 425
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 428
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v6, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 430
    .local v12, now:J
    invoke-virtual {v6, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, databases:[Ljava/lang/String;
    array-length v4, v5

    .line 435
    .local v4, count:I
    const/4 v8, 0x3

    .line 438
    .local v8, limit:I
    const-wide v19, 0x134fd9000L

    sub-long v17, v12, v19

    .line 439
    .local v17, twoMonthsAgo:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_8

    .line 441
    sget-object v19, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->DB_TMPFILE_PAT:Ljava/util/regex/Pattern;

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 442
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 443
    add-int/lit8 v4, v4, -0x1

    .line 439
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 447
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 448
    .local v14, other:Ljava/io/File;
    const-string v19, "internal.db"

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual {v6, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 449
    :cond_5
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 450
    add-int/lit8 v4, v4, -0x1

    .line 451
    invoke-virtual {v6, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 454
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 457
    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 458
    .local v15, time:J
    cmp-long v19, v15, v17

    if-gez v19, :cond_3

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 461
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 462
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 484
    .end local v14           #other:Ljava/io/File;
    .end local v15           #time:J
    .local v9, lruIndex:I
    .local v10, lruTime:J
    :cond_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_8

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v9

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 487
    const/16 v19, 0x0

    aput-object v19, v5, v9

    .line 488
    add-int/lit8 v4, v4, -0x1

    .line 469
    .end local v9           #lruIndex:I
    .end local v10           #lruTime:J
    :cond_8
    if-le v4, v8, :cond_0

    .line 470
    const/4 v9, -0x1

    .line 471
    .restart local v9       #lruIndex:I
    const-wide/16 v10, 0x0

    .line 473
    .restart local v10       #lruTime:J
    const/4 v7, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_7

    .line 474
    aget-object v19, v5, v7

    if-eqz v19, :cond_a

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 476
    .restart local v15       #time:J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-eqz v19, :cond_9

    cmp-long v19, v15, v10

    if-gez v19, :cond_a

    .line 477
    :cond_9
    move v9, v7

    .line 478
    move-wide v10, v15

    .line 473
    .end local v15           #time:J
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    .line 380
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v1, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$800(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 381
    return-void
.end method
