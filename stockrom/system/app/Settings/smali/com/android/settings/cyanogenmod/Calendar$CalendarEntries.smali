.class Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarEntries"
.end annotation


# static fields
.field private static projection:[Ljava/lang/String;

.field private static uri:Landroid/net/Uri;


# instance fields
.field private final mEntries:[Ljava/lang/CharSequence;

.field private final mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 190
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->uri:Landroid/net/Uri;

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->projection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, mEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, mEntryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->mEntries:[Ljava/lang/CharSequence;

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->mEntryValues:[Ljava/lang/CharSequence;

    .line 220
    return-void
.end method

.method static findCalendars(Landroid/app/Activity;)Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 203
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v7, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v8, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v1, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->projection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, calendarCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :cond_1
    new-instance v0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;

    invoke-direct {v0, v7, v8}, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method
