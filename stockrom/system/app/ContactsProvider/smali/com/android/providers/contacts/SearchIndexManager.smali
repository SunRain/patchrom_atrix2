.class public Lcom/android/providers/contacts/SearchIndexManager;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/SearchIndexManager$1;,
        Lcom/android/providers/contacts/SearchIndexManager$ScopedNameNormalizingBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$UnscopedNormalizingBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;
    }
.end annotation


# static fields
.field private static final FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "ContactsFTS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/SearchIndexManager;->VERBOSE_LOGGING:Z

    .line 403
    const-string v0, "[^\u0080-\uffff\\p{Alnum}_]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/SearchIndexManager;->FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    .line 237
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-direct {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    .line 239
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSelectionArgs1:[Ljava/lang/String;

    .line 242
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 243
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 244
    return-void
.end method

.method private buildAndInsertIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 18
    .parameter "db"
    .parameter "selection"

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, "contact_id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, "(CASE WHEN mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " THEN -4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " WHEN mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " THEN -3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " WHEN mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " THEN -2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " WHEN mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " THEN -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " ELSE mimetype_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " END), is_super_primary, data._id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/4 v12, 0x0

    .line 348
    .local v12, count:I
    const-string v3, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id)"

    sget-object v4, Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 350
    .local v15, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v2, v15}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->setCursor(Landroid/database/Cursor;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    .line 353
    const-wide/16 v13, -0x1

    .line 354
    .local v13, currentContactId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 356
    .local v10, contactId:J
    cmp-long v2, v10, v13

    if-eqz v2, :cond_2

    .line 357
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_1

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/android/providers/contacts/SearchIndexManager;->insertIndexRow(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V

    .line 359
    add-int/lit8 v12, v12, 0x1

    .line 361
    :cond_1
    move-wide v13, v10

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    .line 364
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, mimetype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v16

    .line 366
    .local v16, dataRowHandler:Lcom/android/providers/contacts/DataRowHandler;
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/DataRowHandler;->hasSearchableData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/DataRowHandler;->appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    .end local v10           #contactId:J
    .end local v16           #dataRowHandler:Lcom/android/providers/contacts/DataRowHandler;
    .end local v17           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 371
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_4

    .line 372
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/android/providers/contacts/SearchIndexManager;->insertIndexRow(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    add-int/lit8 v12, v12, 0x1

    .line 376
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 378
    return v12
.end method

.method public static getFtsMatchQuery(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;
    .locals 4
    .parameter "query"
    .parameter "ftsQueryBuilder"

    .prologue
    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/android/providers/contacts/SearchIndexManager;->splitIntoFtsTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 430
    .local v2, token:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->addToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSearchIndexVersion()I
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "search_index"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private insertIndexRow(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 3
    .parameter "db"
    .parameter "contactId"
    .parameter "builder"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 383
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v1, "content"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v1, "tokens"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getTokens()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v0, "search_index"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 388
    return-void
.end method

.method private rebuildIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 264
    iget-object v5, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 266
    .local v3, start:J
    const/4 v0, 0x0

    .line 268
    .local v0, count:I
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 269
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/SearchIndexManager;->buildAndInsertIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 271
    iget-object v5, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 274
    .local v1, end:J
    const-string v5, "ContactsFTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebuild contact search index in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contacts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 271
    .end local v1           #end:J
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 274
    .restart local v1       #end:J
    const-string v6, "ContactsFTS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rebuild contact search index in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contacts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    throw v5
.end method

.method private setSearchIndexVersion(I)V
    .locals 3
    .parameter "version"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "search_index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method static splitIntoFtsTokens(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 412
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/providers/contacts/SearchIndexManager;->FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 413
    .local v4, token:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 414
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v4           #token:Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public updateIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->getSearchIndexVersion()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->getSearchIndexVersion()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 254
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/SearchIndexManager;->rebuildIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 255
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/SearchIndexManager;->setSearchIndexVersion(I)V

    .line 256
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public updateIndexForRawContacts(Ljava/util/Set;Ljava/util/Set;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, rawContactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v11, 0x29

    .line 280
    sget-boolean v8, Lcom/android/providers/contacts/SearchIndexManager;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_0

    .line 281
    const-string v8, "ContactsFTS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating search index for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " contacts / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " raw contacts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 287
    const-string v8, "contact_id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 289
    .local v0, contactId:Ljava/lang/Long;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    .end local v0           #contactId:Ljava/lang/Long;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 292
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 296
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 297
    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    const-string v8, "raw_contacts._id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 301
    .local v5, rawContactId:Ljava/lang/Long;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    .end local v5           #rawContactId:Ljava/lang/Long;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 304
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, rawContactsSelection:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 314
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "search_index"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact_id IN (SELECT contact_id FROM raw_contacts WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 323
    .local v3, deleted:I
    invoke-direct {p0, v2, v6}, Lcom/android/providers/contacts/SearchIndexManager;->buildAndInsertIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, count:I
    sget-boolean v8, Lcom/android/providers/contacts/SearchIndexManager;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_6

    .line 325
    const-string v8, "ContactsFTS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated search index for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " contacts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_6
    return-void
.end method
