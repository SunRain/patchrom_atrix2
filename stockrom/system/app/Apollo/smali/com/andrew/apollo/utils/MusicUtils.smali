.class public Lcom/andrew/apollo/utils/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field public static mService:Lcom/andrew/apollo/IApolloService;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/andrew/apollo/service/ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sContentValuesCache:[Landroid/content/ContentValues;

.field private static final sEmptyList:[J

.field private static final sFormatBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 61
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 63
    sput-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 71
    sput-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 7
    .parameter "mContext"
    .parameter "list"

    .prologue
    .line 771
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 780
    :goto_0
    return-void

    .line 774
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/andrew/apollo/IApolloService;->enqueue([JI)V

    .line 775
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToFavorites(Landroid/content/Context;J)V
    .locals 17
    .parameter "context"
    .parameter "id"

    .prologue
    .line 607
    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-gez v5, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 612
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "name=\'Favorites\'"

    .line 613
    .local v4, favorites_where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v3, v5

    .line 616
    .local v3, favorites_cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 617
    .local v2, favorites_uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 619
    .local v13, cursor:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_2

    .line 620
    const-string v5, "Favorites"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/andrew/apollo/utils/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    .line 627
    .local v14, favorites_id:J
    :goto_1
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "audio_id"

    aput-object v8, v7, v5

    .line 630
    .local v7, cols:[Ljava/lang/String;
    const-string v5, "external"

    invoke-static {v5, v14, v15}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 631
    .local v6, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 633
    .local v12, cur:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 634
    .local v11, base:I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 635
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 636
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-eqz v5, :cond_0

    .line 638
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 622
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #cols:[Ljava/lang/String;
    .end local v11           #base:I
    .end local v12           #cur:Landroid/database/Cursor;
    .end local v14           #favorites_id:J
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 623
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 624
    .restart local v14       #favorites_id:J
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 640
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #cols:[Ljava/lang/String;
    .restart local v11       #base:I
    .restart local v12       #cur:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 642
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v16, values:Landroid/content/ContentValues;
    const-string v5, "audio_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 644
    const-string v5, "play_order"

    add-int/lit8 v8, v11, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    move-object/from16 v0, v16

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJ)V
    .locals 16
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object/from16 v0, p1

    array-length v13, v0

    .line 535
    .local v13, size:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 538
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 541
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 542
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 543
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 544
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 545
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v12, 0x0

    .line 547
    .local v12, numinserted:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 548
    const/16 v5, 0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v10, v5, v8}, Lcom/andrew/apollo/utils/MusicUtils;->makeInsertItems([JIII)V

    .line 549
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v12, v5

    .line 547
    add-int/lit16 v10, v10, 0x3e8

    goto :goto_1

    .line 551
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0001

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v14

    invoke-virtual {v5, v6, v12, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 553
    .local v11, message:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 87
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    check-cast p0, Landroid/app/Activity;

    .line 91
    :goto_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    new-instance v0, Lcom/andrew/apollo/service/ServiceBinder;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/service/ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 94
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lcom/andrew/apollo/service/ServiceToken;

    invoke-direct {v0, v1}, Lcom/andrew/apollo/service/ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 98
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static bindToService(Landroid/support/v4/app/FragmentActivity;)Lcom/andrew/apollo/service/ServiceToken;
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v0

    return-object v0
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    .line 520
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 521
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 12
    .parameter "context"
    .parameter "name"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 435
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v11, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v2, v1

    .line 440
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 443
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 444
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 445
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 447
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 451
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #whereclause:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_0
    return-wide v4

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #whereclause:Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    :cond_0
    move-wide v4, v9

    .line 449
    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #whereclause:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    move-wide v4, v9

    .line 451
    goto :goto_0
.end method

.method public static doSearch(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "mContext"
    .parameter "mCursor"
    .parameter "index"

    .prologue
    .line 909
    const/4 v2, 0x0

    .line 910
    .local v2, title:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, query:Ljava/lang/String;
    const-string v2, ""

    .line 915
    const-string v3, ""

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 918
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 920
    return-void
.end method

.method public static getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 871
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getAlbumName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    .line 872
    :catch_0
    move-exception v0

    .line 875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAlbumName(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 10
    .parameter "mContext"
    .parameter "album_id"
    .parameter "default_name"

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0b0026

    const/4 v8, 0x0

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v8

    .line 1005
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1006
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1007
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1008
    const-string v7, "<unknown>"

    .line 1025
    :cond_0
    :goto_0
    return-object v7

    .line 1010
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1011
    if-eqz p3, :cond_2

    .line 1012
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1014
    :cond_2
    const-string v7, "<unknown>"

    goto :goto_0

    .line 1016
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1017
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1018
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1019
    if-eqz v7, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    :cond_4
    if-eqz p3, :cond_5

    .line 1021
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1023
    :cond_5
    const-string v7, "<unknown>"

    goto :goto_0
.end method

.method public static getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 857
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getArtistName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 861
    :goto_0
    return-object v0

    .line 858
    :catch_0
    move-exception v0

    .line 861
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getArtistName(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 10
    .parameter "mContext"
    .parameter "artist_id"
    .parameter "default_name"

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0b0026

    const/4 v8, 0x0

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v8

    .line 970
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 971
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 972
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 973
    const-string v7, "<unknown>"

    .line 990
    :cond_0
    :goto_0
    return-object v7

    .line 975
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 976
    if-eqz p3, :cond_2

    .line 977
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 979
    :cond_2
    const-string v7, "<unknown>"

    goto :goto_0

    .line 981
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 982
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 983
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 984
    if-eqz v7, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    :cond_4
    if-eqz p3, :cond_5

    .line 986
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 988
    :cond_5
    const-string v7, "<unknown>"

    goto :goto_0
.end method

.method public static getCardId(Landroid/content/Context;)I
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, res:Landroid/content/ContentResolver;
    const-string v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 157
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_0
    return v7
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 813
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 815
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 819
    :goto_0
    return-wide v0

    .line 816
    :catch_0
    move-exception v0

    .line 819
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 827
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 829
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 833
    :goto_0
    return-wide v0

    .line 830
    :catch_0
    move-exception v0

    .line 833
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 841
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 843
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 847
    :goto_0
    return-wide v0

    .line 844
    :catch_0
    move-exception v0

    .line 847
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getDuration()J
    .locals 2

    .prologue
    .line 896
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 898
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->duration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 902
    :goto_0
    return-wide v0

    .line 899
    :catch_0
    move-exception v0

    .line 902
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getFavoritesId(Landroid/content/Context;)J
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 459
    const-wide/16 v7, -0x1

    .line 460
    .local v7, favorites_id:J
    const-string v3, "name=\'Favorites\'"

    .line 461
    .local v3, favorites_where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 464
    .local v2, favorites_cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v1, favorites_uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v5, v4

    .line 465
    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 466
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 467
    const-string v0, "Favorites"

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 473
    :goto_0
    return-wide v7

    .line 469
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getGenreName(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 10
    .parameter "mContext"
    .parameter "genre_id"
    .parameter "default_name"

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0b0026

    const/4 v8, 0x0

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    .line 1062
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1063
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1064
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1065
    const-string v7, "<unknown>"

    .line 1082
    :cond_0
    :goto_0
    return-object v7

    .line 1067
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1068
    if-eqz p3, :cond_2

    .line 1069
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1071
    :cond_2
    const-string v7, "<unknown>"

    goto :goto_0

    .line 1073
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1074
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1075
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1076
    if-eqz v7, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    :cond_4
    if-eqz p3, :cond_5

    .line 1078
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1080
    :cond_5
    const-string v7, "<unknown>"

    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPlaylistName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "mContext"
    .parameter "playlist_id"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1035
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    .line 1038
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1039
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1040
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1041
    const-string v7, ""

    .line 1048
    :goto_0
    return-object v7

    .line 1043
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1044
    const-string v7, ""

    goto :goto_0

    .line 1045
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1046
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1047
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getQueue()[J
    .locals 2

    .prologue
    .line 318
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 319
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    .line 326
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 322
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 326
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getQueuePosition()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1125
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 1131
    :goto_0
    return v0

    .line 1128
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 369
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 372
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_music"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, selection:Ljava/lang/String;
    const-string v5, "track"

    .line 375
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 376
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 378
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 379
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 347
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 350
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_music"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, selection:Ljava/lang/String;
    const-string v5, "album_key,track"

    .line 353
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 354
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 356
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 357
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 7
    .parameter "cursor"

    .prologue
    .line 256
    if-nez p0, :cond_1

    .line 257
    sget-object v4, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    .line 272
    :cond_0
    return-object v4

    .line 259
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 260
    .local v3, len:I
    new-array v4, v3, [J

    .line 261
    .local v4, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 262
    const/4 v0, -0x1

    .line 264
    .local v0, colidx:I
    :try_start_0
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 268
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 269
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 270
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 266
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getSongListForGenre(Landroid/content/Context;J)[J
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 391
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 394
    .local v2, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v8, selection:Ljava/lang/StringBuilder;
    const-string v0, "is_music=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v0, " AND title!=\'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 398
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 401
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 402
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 414
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v0

    .line 417
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "play_order"

    .line 418
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v3

    .line 419
    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 421
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 422
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 425
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 885
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getTrackName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 889
    :goto_0
    return-object v0

    .line 886
    :catch_0
    move-exception v0

    .line 889
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFavorite(Landroid/content/Context;J)Z
    .locals 14
    .parameter "context"
    .parameter "id"

    .prologue
    .line 658
    const-wide/16 v7, 0x0

    cmp-long v4, p1, v7

    if-gez v4, :cond_0

    .line 695
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 661
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 663
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name=\'Favorites\'"

    .line 664
    .local v3, favorites_where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v4

    .line 667
    .local v2, favorites_cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 668
    .local v1, favorites_uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 670
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 671
    const-string v4, "Favorites"

    invoke-static {p0, v4}, Lcom/andrew/apollo/utils/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    .line 678
    .local v12, favorites_id:J
    :goto_1
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "audio_id"

    aput-object v7, v6, v4

    .line 681
    .local v6, cols:[Ljava/lang/String;
    const-string v4, "external"

    invoke-static {v4, v12, v13}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 682
    .local v5, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 684
    .local v10, cur:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 685
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 686
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v4, v7, p1

    if-nez v4, :cond_2

    .line 687
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 688
    const/4 v4, 0x1

    goto :goto_0

    .line 673
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #cols:[Ljava/lang/String;
    .end local v10           #cur:Landroid/database/Cursor;
    .end local v12           #favorites_id:J
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 674
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 675
    .restart local v12       #favorites_id:J
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 690
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v6       #cols:[Ljava/lang/String;
    .restart local v10       #cur:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 692
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 693
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1111
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v0, :cond_0

    .line 1118
    :goto_0
    return v1

    .line 1115
    :cond_0
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 7
    .parameter "mContext"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 133
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p3, :cond_0

    .line 134
    const/high16 v3, 0x7f0a

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 137
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 139
    .end local v0           #f:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0a0002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 141
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 142
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static makeInsertItems([JIII)V
    .locals 5
    .parameter "ids"
    .parameter "offset"
    .parameter "len"
    .parameter "base"

    .prologue
    .line 566
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_0

    .line 567
    array-length v1, p0

    sub-int p2, v1, p1

    .line 571
    :cond_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_2

    .line 572
    :cond_1
    new-array v1, p2, [Landroid/content/ContentValues;

    sput-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 575
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_4

    .line 576
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 577
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 580
    :cond_3
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "play_order"

    add-int v3, p3, p1

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_4
    return-void
.end method

.method public static makePlaylistList(Landroid/content/Context;ZLjava/util/List;)V
    .locals 11
    .parameter "mContext"
    .parameter "create_shortcut"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1144
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    const-string v1, "name"

    aput-object v1, v2, v10

    .line 1147
    .local v2, cols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1149
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1150
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "resolver = null"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-string v1, "name != \'\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    const-string v1, " AND name != \'Favorites\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1157
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1164
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1165
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    const-wide/16 v3, -0x3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v1, "name"

    const v3, 0x7f0b0035

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1170
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    const-wide/16 v3, -0x4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    const-string v1, "name"

    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1175
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1176
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1177
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string v1, "name"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1184
    :cond_2
    if-eqz v6, :cond_0

    .line 1185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 789
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    const v2, 0x7f0b0012

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 798
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 799
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 800
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 801
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 802
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 803
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 805
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 789
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f0b0013

    goto :goto_0
.end method

.method public static parseGenreName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mContext"
    .parameter "genre"

    .prologue
    const v3, 0x7f0b0026

    .line 1091
    const/4 v1, -0x1

    .line 1093
    .local v1, genre_id:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1094
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1104
    .end local p1
    :goto_0
    return-object p1

    .line 1097
    .restart local p1
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1101
    if-ltz v1, :cond_2

    sget-object v2, Lcom/andrew/apollo/Constants;->GENRES_DB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1102
    sget-object v2, Lcom/andrew/apollo/Constants;->GENRES_DB:[Ljava/lang/String;

    aget-object p1, v2, v1

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1104
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {p0, p1, v0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 219
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 228
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 247
    invoke-static {p1}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 248
    .local v0, list:[J
    invoke-static {p0, v0, p2, p3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 249
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 1
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 237
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZ)V
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/4 v5, -0x1

    .line 282
    array-length v6, p1

    if-eqz v6, :cond_0

    sget-object v6, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v6, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-eqz p3, :cond_2

    .line 287
    :try_start_0
    sget-object v6, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 289
    :cond_2
    sget-object v6, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v6}, Lcom/andrew/apollo/IApolloService;->getAudioId()J

    move-result-wide v0

    .line 290
    .local v0, curid:J
    sget-object v6, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v6}, Lcom/andrew/apollo/IApolloService;->getQueuePosition()I

    move-result v2

    .line 291
    .local v2, curpos:I
    if-eq p2, v5, :cond_3

    if-ne v2, p2, :cond_3

    aget-wide v6, p1, p2

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    .line 295
    sget-object v6, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v6}, Lcom/andrew/apollo/IApolloService;->getQueue()[J

    move-result-object v4

    .line 296
    .local v4, playlist:[J
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v0           #curid:J
    .end local v2           #curpos:I
    .end local v4           #playlist:[J
    :catch_0
    move-exception v3

    .line 309
    .local v3, ex:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v0       #curid:J
    .restart local v2       #curpos:I
    :cond_3
    if-gez p2, :cond_4

    .line 304
    const/4 p2, 0x0

    .line 306
    :cond_4
    :try_start_1
    sget-object v6, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz p3, :cond_5

    :goto_1
    invoke-interface {v6, p1, v5}, Lcom/andrew/apollo/IApolloService;->open([JI)V

    .line 307
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    move v5, p2

    .line 306
    goto :goto_1
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 202
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 187
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 182
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-lez p6, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 185
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 186
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 187
    goto :goto_0
.end method

.method public static removeAllTracks()V
    .locals 4

    .prologue
    .line 927
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 928
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v0

    .line 929
    .local v0, current:[J
    if-eqz v0, :cond_0

    .line 930
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v2, 0x0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/andrew/apollo/IApolloService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static removeFromFavorites(Landroid/content/Context;J)V
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 704
    const-wide/16 v10, 0x0

    cmp-long v5, p1, v10

    if-gez v5, :cond_0

    .line 724
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 707
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name=\'Favorites\'"

    .line 708
    .local v3, favorites_where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v12

    .line 711
    .local v2, favorites_cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v1, favorites_uri:Landroid/net/Uri;
    move-object v5, v4

    .line 712
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 714
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 715
    const-string v5, "Favorites"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 721
    .local v7, favorites_id:J
    :goto_1
    const-string v5, "external"

    invoke-static {v5, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 722
    .local v9, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio_id="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v9, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 717
    .end local v7           #favorites_id:J
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 718
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 719
    .restart local v7       #favorites_id:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static removeTrack(J)I
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 942
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_0

    .line 950
    :goto_0
    return v1

    .line 946
    :cond_0
    :try_start_0
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2, p0, p1}, Lcom/andrew/apollo/IApolloService;->removeTrack(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static renamePlaylist(Landroid/content/Context;JLjava/lang/String;)V
    .locals 7
    .parameter "mContext"
    .parameter "id"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 753
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 755
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 756
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 761
    const-string v2, "Playlist renamed"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 763
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static setFavoriteImage(Landroid/widget/ImageButton;)V
    .locals 4
    .parameter "mImageButton"

    .prologue
    .line 733
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getAudioId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/andrew/apollo/IApolloService;->isFavorite(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    const v1, 0x7f020006

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 744
    :goto_0
    return-void

    .line 736
    :cond_0
    const v1, 0x7f020005

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 738
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "apollo_favorite_normal"

    invoke-static {v1, p0, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 957
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 960
    :cond_0
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, p0}, Lcom/andrew/apollo/IApolloService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 483
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 485
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 486
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "is_alarm"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 498
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 505
    const v0, 0x7f0b0011

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .end local v8           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 513
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v7

    .line 491
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 509
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 211
    return-void
.end method

.method public static toggleFavorite()V
    .locals 2

    .prologue
    .line 590
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 593
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->toggleFavorite()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 105
    if-nez p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/service/ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 109
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/service/ServiceBinder;

    .line 110
    .local v1, sb:Lcom/andrew/apollo/service/ServiceBinder;
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 114
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x0

    sput-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    goto :goto_0
.end method
