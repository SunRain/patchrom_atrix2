.class public Lcom/android/providers/contacts/ContactDirectoryManager;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;,
        Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    }
.end annotation


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 106
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    return-void
.end method

.method private areTypeResourceIdsValid()Z
    .locals 15

    .prologue
    const/4 v5, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "directories"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "typeResourceId"

    aput-object v4, v2, v13

    const-string v4, "packageName"

    aput-object v4, v2, v14

    const-string v4, "typeResourceName"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 140
    .local v8, cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 142
    .local v10, resourceId:I
    if-eqz v10, :cond_0

    .line 143
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, packageName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, storedResourceName:Ljava/lang/String;
    invoke-direct {p0, v9, v10}, Lcom/android/providers/contacts/ContactDirectoryManager;->getResourceNameById(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, resourceName:Ljava/lang/String;
    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v13

    .line 155
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #resourceId:I
    .end local v11           #resourceName:Ljava/lang/String;
    .end local v12           #storedResourceName:Ljava/lang/String;
    :goto_0
    return v1

    .line 152
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v14

    .line 155
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static getDirectoryProviderPackages(Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .locals 7
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 219
    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x80

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-nez v2, :cond_1

    .line 233
    :cond_0
    return-object v3

    .line 224
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 225
    .local v1, provider:Landroid/content/pm/ProviderInfo;
    invoke-static {v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->isDirectoryProvider(Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getResourceNameById(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "resourceId"

    .prologue
    const/4 v2, 0x0

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 169
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 168
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 169
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private insertDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const v4, 0x7f030007

    .line 302
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "authority"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "typeResourceId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v1, "typeResourceName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "exportSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v1, "shortcutSupport"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v1, "photoSupport"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v1, "directories"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 313
    return-void
.end method

.method private insertLocalInvisibleDirectory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const v4, 0x7f030008

    .line 316
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "authority"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "typeResourceId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v1, "typeResourceName"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "exportSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v1, "shortcutSupport"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v1, "photoSupport"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v1, "directories"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 327
    return-void
.end method

.method static isDirectoryProvider(Landroid/content/pm/ProviderInfo;)Z
    .locals 4
    .parameter "provider"

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 203
    .local v0, metaData:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    const-string v3, "android.content.ContactDirectory"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, trueFalse:Ljava/lang/Object;
    if-eqz v1, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private scanAllPackagesIfNeeded()V
    .locals 10

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v6

    const-string v7, "directoryScanComplete"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, scanComplete:Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 191
    .local v4, start:J
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackages()I

    move-result v0

    .line 192
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v6

    const-string v7, "directoryScanComplete"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 194
    .local v1, end:J
    const-string v6, "ContactDirectoryManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discovered "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contact directories in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v6, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    goto :goto_0
.end method

.method private updateDirectories(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, directoryInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 493
    .local v13, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v15, values:Landroid/content/ContentValues;
    const-string v1, "packageName"

    iget-object v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "authority"

    iget-object v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "accountName"

    iget-object v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "accountType"

    iget-object v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v1, "typeResourceId"

    iget v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v1, "displayName"

    iget-object v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "exportSupport"

    iget v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v1, "shortcutSupport"

    iget v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v1, "photoSupport"

    iget v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    iget v1, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    iget v2, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->getResourceNameById(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 506
    .local v14, resourceName:Ljava/lang/String;
    const-string v1, "typeResourceName"

    invoke-virtual {v15, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .end local v14           #resourceName:Ljava/lang/String;
    :cond_0
    const-string v2, "directories"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "packageName=? AND authority=? AND accountName=? AND accountType=?"

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    iget-object v6, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget-object v6, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 517
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 519
    .local v11, id:J
    const-string v1, "directories"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    :goto_1
    iput-wide v11, v13, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 522
    .end local v11           #id:J
    :cond_1
    :try_start_1
    const-string v1, "directories"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v11

    .restart local v11       #id:J
    goto :goto_1

    .line 526
    .end local v11           #id:J
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 529
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v13           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;
    .locals 16
    .parameter "packageInfo"
    .parameter "initialScan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 367
    .local v3, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 368
    .local v9, providers:[Landroid/content/pm/ProviderInfo;
    if-eqz v9, :cond_1

    .line 369
    move-object v1, v9

    .local v1, arr$:[Landroid/content/pm/ProviderInfo;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v8, v1, v4

    .line 370
    .local v8, provider:Landroid/content/pm/ProviderInfo;
    invoke-static {v8}, Lcom/android/providers/contacts/ContactDirectoryManager;->isDirectoryProvider(Landroid/content/pm/ProviderInfo;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/providers/contacts/ContactDirectoryManager;->queryDirectoriesForAuthority(Ljava/util/ArrayList;Landroid/content/pm/ProviderInfo;)V

    .line 369
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v1           #arr$:[Landroid/content/pm/ProviderInfo;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v8           #provider:Landroid/content/pm/ProviderInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    if-eqz p2, :cond_2

    .line 377
    const/4 v3, 0x0

    .line 405
    .end local v3           #directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    :goto_1
    return-object v3

    .line 380
    .restart local v3       #directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 381
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 383
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectories(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 385
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageName=?"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .local v10, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 387
    const-string v11, " AND _id NOT IN("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 389
    .local v5, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    iget-wide v11, v5, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 401
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11

    .line 391
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v11, "directories"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v2, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 399
    .local v7, numDeleted:I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 404
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v11}, Lcom/android/providers/contacts/ContactsProvider2;->resetDirectoryCache()V

    goto :goto_1
.end method


# virtual methods
.method public getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-object v0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 338
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x88

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 346
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    :goto_1
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/content/pm/PackageInfo;

    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 343
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    iput-object p1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 350
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;

    goto :goto_1
.end method

.method protected providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 2
    .parameter "provider"

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected queryDirectoriesForAuthority(Ljava/util/ArrayList;Landroid/content/pm/ProviderInfo;)V
    .locals 12
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;",
            ">;",
            "Landroid/content/pm/ProviderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, directoryInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directories"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 416
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 418
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    if-nez v6, :cond_3

    .line 421
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned a NULL cursor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    if-eqz v6, :cond_1

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_1
    :goto_0
    return-void

    .line 466
    .local v8, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .local v9, photoSupport:I
    :pswitch_0
    :try_start_1
    iput v9, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    .line 473
    .end local v9           #photoSupport:I
    :cond_2
    :goto_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    invoke-direct {v8}, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;-><init>()V

    .line 425
    .restart local v8       #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    .line 426
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    .line 428
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 429
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->displayName:Ljava/lang/String;

    .line 430
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->typeResourceId:I

    .line 433
    :cond_4
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 434
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 435
    .local v7, exportSupport:I
    packed-switch v7, :pswitch_data_0

    .line 442
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - invalid export support flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v7           #exportSupport:I
    :cond_5
    :goto_2
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 447
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 448
    .local v10, shortcutSupport:I
    packed-switch v10, :pswitch_data_1

    .line 455
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - invalid shortcut support flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v10           #shortcutSupport:I
    :cond_6
    :goto_3
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 461
    .restart local v9       #photoSupport:I
    packed-switch v9, :pswitch_data_2

    .line 469
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - invalid photo support flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 476
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v9           #photoSupport:I
    :catch_0
    move-exception v11

    .line 477
    .local v11, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "ContactDirectoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->providerDescription(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    if-eqz v6, :cond_1

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 439
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v7       #exportSupport:I
    .restart local v8       #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    :pswitch_1
    :try_start_3
    iput v7, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 479
    .end local v7           #exportSupport:I
    .end local v8           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 452
    .restart local v8       #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .restart local v10       #shortcutSupport:I
    :pswitch_2
    :try_start_4
    iput v10, v8, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 448
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 461
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method scanAllPackages()I
    .locals 17

    .prologue
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 239
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->insertDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 240
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->insertLocalInvisibleDirectory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 242
    const/4 v1, 0x0

    .line 246
    .local v1, count:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v4, deleteWhereBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v3, deleteWhereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "NOT (_id=? OR _id=?"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v13, "(packageName=? AND authority=? AND accountName=? AND accountType=?)"

    .line 256
    .local v13, wherePart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v14}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDirectoryProviderPackages(Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 261
    .local v12, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 262
    const-string v14, "ContactDirectoryManager"

    const-string v15, "  skipping self"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x88

    invoke-virtual {v14, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 270
    .local v11, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_0

    .line 275
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/android/providers/contacts/ContactDirectoryManager;->updateDirectoriesForPackage(Landroid/content/pm/PackageInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 276
    .local v6, directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 277
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v1, v14

    .line 280
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;

    .line 282
    .local v9, info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    const-string v14, " OR "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v14, "(packageName=? AND authority=? AND accountName=? AND accountType=?)"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v14, v9, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v14, v9, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v14, v9, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v14, v9, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v6           #directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
    .end local v11           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v10

    .line 272
    .local v10, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 292
    .end local v10           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_2
    const-string v14, ")"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v15, "directories"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 296
    .local v5, deletedRows:I
    const-string v14, "ContactDirectoryManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deleted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stale rows which don\'t have any relevant directory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v1
.end method

.method public scanAllPackages(Z)V
    .locals 3
    .parameter "rescan"

    .prologue
    .line 177
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->areTypeResourceIdsValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->getDbHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    const-string v1, "directoryScanComplete"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackagesIfNeeded()V

    .line 182
    return-void
.end method

.method public scanPackagesByUid(I)V
    .locals 3
    .parameter "callingUid"

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, callerPackages:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 122
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/ContactDirectoryManager;->onPackageChanged(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1           #i:I
    :cond_0
    return-void
.end method
