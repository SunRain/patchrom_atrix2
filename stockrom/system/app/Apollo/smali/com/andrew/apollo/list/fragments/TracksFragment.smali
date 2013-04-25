.class public Lcom/andrew/apollo/list/fragments/TracksFragment;
.super Lcom/andrew/apollo/utils/RefreshableFragment;
.source "TracksFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/andrew/apollo/utils/RefreshableFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static mAlbumIndex:I

.field public static mArtistIndex:I

.field public static mMediaIdIndex:I

.field public static mTitleIndex:I


# instance fields
.field private final ADD_TO_PLAYLIST:I

.field private final PLAY_SELECTION:I

.field private final REMOVE:I

.field private final SEARCH:I

.field private final USE_AS_RINGTONE:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditMode:Z

.field private mListView:Landroid/widget/ListView;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaylistId:J

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/andrew/apollo/utils/RefreshableFragment;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->PLAY_SELECTION:I

    .line 80
    const/4 v0, 0x7

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->USE_AS_RINGTONE:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->ADD_TO_PLAYLIST:I

    .line 84
    const/16 v0, 0x9

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->SEARCH:I

    .line 86
    const/16 v0, 0xa

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->REMOVE:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mEditMode:Z

    .line 368
    new-instance v0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/list/fragments/TracksFragment$1;-><init>(Lcom/andrew/apollo/list/fragments/TracksFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/andrew/apollo/utils/RefreshableFragment;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->PLAY_SELECTION:I

    .line 80
    const/4 v0, 0x7

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->USE_AS_RINGTONE:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->ADD_TO_PLAYLIST:I

    .line 84
    const/16 v0, 0x9

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->SEARCH:I

    .line 86
    const/16 v0, 0xa

    iput v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->REMOVE:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mEditMode:Z

    .line 368
    new-instance v0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/list/fragments/TracksFragment$1;-><init>(Lcom/andrew/apollo/list/fragments/TracksFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/list/fragments/TracksFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/list/fragments/TracksFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/list/fragments/TracksFragment;)Lcom/andrew/apollo/adapters/TrackAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/list/fragments/TracksFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    return-wide v0
.end method

.method private reloadQueueCursor()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 428
    iget-wide v9, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    const-wide/16 v11, -0x3

    cmp-long v0, v9, v11

    if-nez v0, :cond_3

    .line 429
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "album"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "artist"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "artist_id"

    aput-object v3, v2, v0

    .line 433
    .local v2, cols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v8, selection:Ljava/lang/StringBuilder;
    const-string v0, "is_music=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v0, " AND title != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 437
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v7

    .line 438
    .local v7, mNowPlaying:[J
    array-length v0, v7

    if-nez v0, :cond_0

    .line 440
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #selection:Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .restart local v8       #selection:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_2

    .line 443
    aget-wide v9, v7, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 444
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    .line 445
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 448
    :cond_2
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    .line 450
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/andrew/apollo/adapters/TrackAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 452
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #mNowPlaying:[J
    .end local v8           #selection:Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private removePlaylistItem(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 409
    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 410
    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 411
    .local v0, id:J
    iget-wide v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 412
    const-string v3, "external"

    iget-wide v4, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 413
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 422
    return-void

    .line 415
    :cond_1
    iget-wide v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    const-wide/16 v5, -0x3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 416
    invoke-static {v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->removeTrack(J)I

    .line 417
    invoke-direct {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->reloadQueueCursor()V

    goto :goto_0

    .line 418
    :cond_2
    iget-wide v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    const-wide/16 v5, -0x5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->removeFromFavorites(Landroid/content/Context;J)V

    goto :goto_0
.end method


# virtual methods
.method public isEditMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 458
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    .line 462
    iget-wide v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    long-to-int v1, v1

    packed-switch v1, :pswitch_data_0

    .line 470
    :pswitch_0
    iget-wide v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 471
    iput-boolean v5, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mEditMode:Z

    .line 477
    .end local v0           #mimetype:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 464
    .restart local v0       #mimetype:Ljava/lang/String;
    :pswitch_1
    iput-boolean v5, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mEditMode:Z

    goto :goto_0

    .line 467
    :pswitch_2
    iput-boolean v5, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mEditMode:Z

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/andrew/apollo/utils/RefreshableFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->isEditMode()V

    .line 108
    new-instance v0, Lcom/andrew/apollo/adapters/TrackAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030012

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/TrackAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    .line 110
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 111
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 116
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 351
    :goto_0
    invoke-super {p0, p1}, Lcom/andrew/apollo/utils/RefreshableFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 325
    :pswitch_0
    iget v2, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedPosition:I

    .line 326
    .local v2, position:I
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v3, v4, v2}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0

    .line 329
    .end local v2           #position:I
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.andrew.apollo.ADD_TO_PLAYLIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    new-array v1, v3, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedId:J

    aput-wide v4, v1, v3

    .line 333
    .local v1, list:[J
    const-string v3, "playlistlist"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:[J
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedId:J

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_0

    .line 341
    :pswitch_3
    iget v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedPosition:I

    invoke-direct {p0, v3}, Lcom/andrew/apollo/list/fragments/TracksFragment;->removePlaylistItem(I)V

    goto :goto_0

    .line 345
    :pswitch_4
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    sget v5, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->doSearch(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 298
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 299
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 300
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 301
    iget-boolean v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mEditMode:Z

    if-eqz v3, :cond_0

    .line 302
    const/16 v3, 0xa

    const v4, 0x7f0b0022

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 304
    :cond_0
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v1, p3

    .line 306
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 307
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedPosition:I

    .line 308
    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, title:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/andrew/apollo/utils/RefreshableFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 319
    return-void

    .line 312
    .end local v2           #title:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v3, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mSelectedId:J

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 25
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "artist"

    aput-object v3, v5, v2

    .line 165
    .local v5, projection:[Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v8, "title_key"

    .line 167
    .local v8, sortOrder:Ljava/lang/String;
    const-string v2, "is_music=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND title != \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 169
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 172
    .local v21, mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.dir/playlist"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    new-instance v24, Ljava/lang/StringBuilder;

    .end local v24           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .restart local v24       #where:Ljava/lang/StringBuilder;
    const-string v2, "is_music=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v2, " AND title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    long-to-int v2, v2

    packed-switch v2, :pswitch_data_0

    .line 202
    :pswitch_0
    if-gez p1, :cond_5

    .line 203
    const/4 v2, 0x0

    .line 237
    .end local v21           #mimeType:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 178
    .restart local v21       #mimeType:Ljava/lang/String;
    :pswitch_1
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 179
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v20

    .line 180
    .local v20, mNowPlaying:[J
    move-object/from16 v0, v20

    array-length v2, v0

    if-nez v2, :cond_0

    .line 181
    const/4 v2, 0x0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    .end local v24           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .restart local v24       #where:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v2, v0

    if-gtz v2, :cond_2

    .line 185
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    :cond_2
    move-object/from16 v11, v20

    .local v11, arr$:[J
    array-length v0, v11

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-wide v22, v11, v18

    .line 187
    .local v22, queue_id:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 189
    .end local v22           #queue_id:J
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, ")"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .end local v11           #arr$:[J
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v20           #mNowPlaying:[J
    .end local v21           #mimeType:Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v2, Landroid/support/v4/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .restart local v21       #mimeType:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/andrew/apollo/utils/MusicUtils;->getFavoritesId(Landroid/content/Context;)J

    move-result-wide v14

    .line 194
    .local v14, favorites_id:J
    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "audio_id"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "album"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "artist"

    aput-object v3, v5, v2

    .line 198
    .restart local v5       #projection:[Ljava/lang/String;
    const-string v2, "external"

    invoke-static {v2, v14, v15}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 199
    const-string v8, "play_order"

    .line 200
    goto :goto_2

    .line 204
    .end local v14           #favorites_id:J
    :cond_5
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "audio_id"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "album"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "artist"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    const-string v3, "duration"

    aput-object v3, v5, v2

    .line 210
    .restart local v5       #projection:[Ljava/lang/String;
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    invoke-static {v2, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 211
    const-string v8, "play_order"

    goto :goto_2

    .line 214
    :cond_6
    const-string v2, "vnd.android.cursor.dir/genre"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 216
    .local v16, genreId:J
    const-string v2, "external"

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 217
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    .end local v5           #projection:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "artist"

    aput-object v3, v5, v2

    .line 221
    .restart local v5       #projection:[Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    .end local v24           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .restart local v24       #where:Ljava/lang/StringBuilder;
    const-string v2, "is_music=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND title != \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v8, "title_key"

    .line 225
    goto/16 :goto_2

    .line 226
    .end local v16           #genreId:J
    :cond_7
    const-string v2, "vnd.android.cursor.dir/albums"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 228
    .local v9, albumId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 230
    goto/16 :goto_2

    .end local v9           #albumId:J
    :cond_8
    const-string v2, "vnd.android.cursor.dir/artists"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    const-string v8, "title"

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 233
    .local v12, artist_id:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 176
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 128
    const v0, 0x7f030011

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 129
    .local v11, root:Landroid/view/View;
    const v0, 0x102000a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    .line 132
    const v0, 0x7f0e0047

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 133
    .local v9, mHeader:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 135
    .local v6, eight:I
    invoke-virtual {v9, v6, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, header:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 140
    .local v2, left:I
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 141
    .local v4, right:I
    invoke-static {p0, v11, v8}, Lcom/andrew/apollo/utils/ApolloUtils;->listHeader(Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/ApolloUtils;->setListPadding(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;IIII)V

    .line 146
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    .line 148
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, mimeType:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-wide v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 157
    .end local v10           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v11

    .line 152
    .restart local v10       #mimeType:Ljava/lang/String;
    :pswitch_0
    const v0, 0x7f0e0048

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 153
    .local v7, emptyness:Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/andrew/apollo/NowPlayingCursor;

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p3}, Lcom/andrew/apollo/utils/MusicUtils;->setQueuePosition(I)V

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1, p3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 282
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "vnd.android.cursor.dir/playlist"

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 251
    :cond_1
    const-string v0, "audio_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    .line 252
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    .line 253
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mAlbumIndex:I

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/TrackAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 280
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 281
    iput-object p2, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "vnd.android.cursor.dir/genre"

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    .line 260
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    .line 261
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mArtistIndex:I

    .line 262
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mAlbumIndex:I

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "vnd.android.cursor.dir/artists"

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    .line 267
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mArtistIndex:I

    goto :goto_1

    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "vnd.android.cursor.dir/albums"

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    .line 271
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    .line 272
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mArtistIndex:I

    goto/16 :goto_1

    .line 274
    :cond_5
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    .line 275
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    .line 276
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mArtistIndex:I

    .line 277
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mAlbumIndex:I

    goto/16 :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/list/fragments/TracksFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/TrackAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 293
    invoke-super {p0, p1}, Lcom/andrew/apollo/utils/RefreshableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    return-void

    .line 292
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Lcom/andrew/apollo/utils/RefreshableFragment;->onStart()V

    .line 391
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "com.andrew.apollo.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    invoke-super {p0}, Lcom/andrew/apollo/utils/RefreshableFragment;->onStop()V

    .line 402
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 124
    :cond_0
    return-void
.end method
