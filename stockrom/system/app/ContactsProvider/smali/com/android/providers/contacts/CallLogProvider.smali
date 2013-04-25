.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field private static final EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mUseStrictPhoneNumberComparation:Z

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const-string v0, "type"

    const-wide/16 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->getInequalityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 59
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/filter/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_read"

    const-string v2, "is_read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "geocoded_location"

    const-string v2, "geocoded_location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup_uri"

    const-string v2, "lookup_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "matched_number"

    const-string v2, "matched_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "formatted_number"

    const-string v2, "formatted_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkIsAllowVoicemailRequest(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri %s cannot be used for voicemail record. Please set \'%s=true\' in the uri."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "allow_voicemails"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    return-void
.end method

.method private checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V
    .locals 1
    .parameter "uri"
    .parameter "selectionBuilder"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0
.end method

.method private getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "insertHelper"

    .prologue
    .line 272
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "db"

    .prologue
    .line 264
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private hasVoicemailValue(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 276
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowVoicemailRequest(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 300
    const-string v0, "allow_voicemails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private parseCallIdFromUri(Landroid/net/Uri;)J
    .locals 4
    .parameter "uri"

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid call id in uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 239
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 242
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 244
    .local v1, matchedUriId:I
    packed-switch v1, :pswitch_data_0

    .line 249
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 168
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 169
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/calls"

    .line 175
    :goto_0
    return-object v1

    .line 173
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/calls"

    goto :goto_0

    .line 175
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/calls"

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 183
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-static {v4, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 186
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 188
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v4}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v4, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 192
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v5, "calls"

    invoke-direct {v4, v1, v5}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 195
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 198
    .local v0, copiedValues:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v4, v0}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 200
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 201
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 202
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 204
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 97
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    .line 105
    new-instance v1, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 107
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 126
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 127
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "calls"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 129
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 131
    new-instance v13, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v13, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v13}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 134
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 135
    .local v11, match:I
    packed-switch v11, :pswitch_data_0

    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :pswitch_0
    const-string v3, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 157
    :goto_0
    :pswitch_1
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 158
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 160
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 163
    :cond_0
    return-object v10

    .line 146
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #c:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 147
    .local v12, phoneNumber:Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v1, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 149
    iget-boolean v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v3, :cond_1

    const-string v3, ", 1)"

    :goto_1
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v3, ", 0)"

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 209
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 212
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 216
    :cond_0
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 219
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 220
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 221
    .local v1, matchedUriId:I
    packed-switch v1, :pswitch_data_0

    .line 230
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :pswitch_0
    const-string v3, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 233
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
