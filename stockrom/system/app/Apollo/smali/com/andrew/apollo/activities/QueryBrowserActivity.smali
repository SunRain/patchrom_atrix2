.class public Lcom/andrew/apollo/activities/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mToken:Lcom/andrew/apollo/service/ServiceToken;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/andrew/apollo/activities/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/andrew/apollo/activities/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/andrew/apollo/activities/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 284
    if-nez p2, :cond_0

    .line 285
    const-string p2, ""

    .line 287
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "artist"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "title"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "data1"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "data2"

    aput-object v5, v4, v0

    .line 292
    .local v4, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 294
    .local v3, search:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 295
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 296
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-object v11

    :cond_1
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 298
    invoke-static/range {v5 .. v10}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 223
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 77
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    .line 78
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V

    .line 201
    iget-boolean v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 208
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iput-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    .line 213
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 214
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 446
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->finish()V

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0e004a

    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 234
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "artist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.dir/artists"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "artist"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "_id"

    invoke-virtual {v2, v0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 251
    const-class v0, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 255
    :cond_2
    const-string v1, "album"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    const v1, 0x7f0e004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 263
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.dir/albums"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "artist"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "album"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "_id"

    invoke-virtual {v2, v0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    const-class v1, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 270
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 273
    :cond_3
    if-ltz p3, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4

    .line 274
    const/4 v0, 0x1

    new-array v0, v0, [J

    aput-wide p4, v0, v3

    .line 277
    invoke-static {p0, v0, v3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto/16 :goto_0

    .line 279
    :cond_4
    const-string v0, "QueryBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position/id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapterSent:Z

    .line 188
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 84
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v5, "content://media/external/audio/media/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-array v1, v6, [J

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 101
    invoke-static {p0, v1, v7}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 102
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->finish()V

    .line 178
    :goto_1
    return-void

    :cond_1
    move-object v0, v4

    .line 89
    goto :goto_0

    .line 104
    :cond_2
    const-string v5, "content://media/external/audio/albums/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "album"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->finish()V

    goto :goto_1

    .line 112
    :cond_3
    const-string v5, "content://media/external/audio/artists/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.dir/artists"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "artist"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "_id"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v4, "artistid"

    invoke-static {v2, v4, p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getArtistId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    const-class v2, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 128
    :cond_4
    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 129
    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    const-string v0, "android.intent.extra.focus"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v2, "android.intent.extra.artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    const-string v5, "android.intent.extra.title"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v0, :cond_5

    .line 135
    const-string v5, "audio/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    .line 136
    iput-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 152
    :cond_5
    :goto_2
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 154
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_9

    .line 156
    new-instance v0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030012

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/andrew/apollo/activities/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    .line 158
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 176
    :goto_3
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 137
    :cond_6
    const-string v1, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    if-eqz v3, :cond_5

    .line 139
    iput-object v3, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 140
    if-eqz v2, :cond_5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_2

    .line 144
    :cond_7
    const-string v1, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    if-eqz v2, :cond_5

    .line 146
    iput-object v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 163
    iput-object v4, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto :goto_3

    .line 166
    :cond_9
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/andrew/apollo/activities/QueryBrowserActivity;)V

    .line 167
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 169
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    .line 170
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_3

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mAdapter:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 183
    return-void
.end method
