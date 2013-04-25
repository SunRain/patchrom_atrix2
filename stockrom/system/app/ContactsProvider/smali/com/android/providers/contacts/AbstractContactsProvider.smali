.class public abstract Lcom/android/providers/contacts/AbstractContactsProvider;
.super Landroid/content/ContentProvider;
.source "AbstractContactsProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field protected static final VERBOSE_LOGGING:Z


# instance fields
.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSerializeDbTag:Ljava/lang/String;

.field private mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mTransactionHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "ContactsProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private endTransaction(Z)V
    .locals 4
    .parameter "callerIsBatch"

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 249
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isBatch()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 251
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->notifyChange()V

    .line 254
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;->finish(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 260
    :cond_2
    return-void

    .line 257
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method private startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    .locals 3
    .parameter "callerIsBatch"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 231
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    if-nez v0, :cond_1

    .line 232
    new-instance v0, Lcom/android/providers/contacts/ContactsTransaction;

    .end local v0           #transaction:Lcom/android/providers/contacts/ContactsTransaction;
    invoke-direct {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;-><init>(Z)V

    .line 233
    .restart local v0       #transaction:Lcom/android/providers/contacts/ContactsTransaction;
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 239
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x1

    .line 182
    sget-boolean v8, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_0

    .line 183
    const-string v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyBatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ops"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const/4 v7, 0x0

    .line 186
    .local v7, ypCount:I
    const/4 v2, 0x0

    .line 187
    .local v2, opCount:I
    invoke-direct {p0, v11}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v6

    .line 189
    .local v6, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, numOperations:I
    new-array v5, v1, [Landroid/content/ContentProviderResult;

    .line 191
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 192
    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x1f4

    if-lt v2, v8, :cond_1

    .line 193
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    invoke-direct {p0, v11}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v8

    .line 198
    .restart local v0       #i:I
    .restart local v1       #numOperations:I
    .restart local v5       #results:[Landroid/content/ContentProviderResult;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 199
    .local v3, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    sget-boolean v8, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_2

    .line 201
    const-string v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyBatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ops finished; about to yield..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :cond_2
    const/4 v2, 0x0

    .line 205
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    .line 206
    add-int/lit8 v7, v7, 0x1

    .line 214
    :cond_3
    :try_start_3
    invoke-virtual {v3, p0, v5, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v5, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v4

    .line 209
    .local v4, re:Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 210
    throw v4

    .line 216
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #re:Ljava/lang/RuntimeException;
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    invoke-direct {p0, v11}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return-object v5
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    .line 156
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v4

    .line 157
    .local v4, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    array-length v1, p2

    .line 158
    .local v1, numValues:I
    const/4 v2, 0x0

    .line 160
    .local v2, opCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 161
    :try_start_0
    aget-object v5, p2, v0

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x32

    if-lt v2, v5, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 165
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, re:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 168
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .end local v3           #re:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v5

    .line 172
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 176
    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 128
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, deleted:I
    if-lez v0, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 132
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return v0

    .end local v0           #deleted:I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    return-object v0
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected abstract getTransactionHolder()Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 113
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    .local v0, result:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 117
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return-object v0

    .end local v0           #result:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 87
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    .line 88
    const/4 v1, 0x1

    return v1
.end method

.method public setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "serializeOnDbHelper"
    .parameter "tag"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 102
    iput-object p2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 143
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, updated:I
    if-lez v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 147
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return v1

    .end local v1           #updated:I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
.end method
