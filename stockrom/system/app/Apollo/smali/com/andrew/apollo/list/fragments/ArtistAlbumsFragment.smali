.class public Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ArtistAlbumsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static mAlbumIdIndex:I

.field public static mAlbumNameIndex:I

.field public static mArtistNameIndex:I

.field public static mSongCountIndex:I


# instance fields
.field private final ADD_TO_PLAYLIST:I

.field private final PLAY_SELECTION:I

.field private final SEARCH:I

.field private mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    const/16 v0, 0xf

    iput v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->PLAY_SELECTION:I

    .line 70
    const/16 v0, 0x10

    iput v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->ADD_TO_PLAYLIST:I

    .line 72
    const/16 v0, 0x11

    iput v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->SEARCH:I

    .line 165
    new-instance v0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;-><init>(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    const/16 v0, 0xf

    iput v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->PLAY_SELECTION:I

    .line 70
    const/16 v0, 0x10

    iput v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->ADD_TO_PLAYLIST:I

    .line 72
    const/16 v0, 0x11

    iput v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->SEARCH:I

    .line 165
    new-instance v0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;-><init>(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    return-object v0
.end method

.method private tracksBrowser(J)V
    .locals 5
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistNameIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mAlbumNameIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.dir/albums"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "album"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "artist"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "_id"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v3, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030012

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    .line 93
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 94
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 99
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 247
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 227
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 229
    .local v1, list:[J
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 233
    .end local v1           #list:[J
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.ADD_TO_PLAYLIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 236
    .restart local v1       #list:[J
    const-string v2, "playlistlist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:[J
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mAlbumNameIndex:I

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->doSearch(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 213
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 214
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 215
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCurrentAlbumId:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->setHeaderLayout()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 221
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
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
    const/4 v4, 0x0

    .line 117
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "numsongs"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v3, v0

    .line 121
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 123
    .local v7, artistId:J
    const-string v0, "external"

    invoke-static {v0, v7, v8}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 124
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "album_key"

    .line 125
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v2           #uri:Landroid/net/Uri;
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v7           #artistId:J
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 103
    const v0, 0x7f030011

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 104
    .local v7, root:Landroid/view/View;
    const v0, 0x102000a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;

    .line 107
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, header:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 109
    .local v2, left:I
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 110
    .local v4, right:I
    invoke-static {p0, v7, v6}, Lcom/andrew/apollo/utils/ApolloUtils;->listHeader(Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/ApolloUtils;->setListPadding(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;IIII)V

    .line 112
    return-object v7
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 159
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p4, p5}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->tracksBrowser(J)V

    .line 160
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 133
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mAlbumIdIndex:I

    .line 138
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mAlbumNameIndex:I

    .line 139
    const-string v0, "numsongs"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mSongCountIndex:I

    .line 140
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistNameIndex:I

    .line 141
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 142
    iput-object p2, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 147
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 189
    return-void
.end method

.method public setHeaderLayout()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 255
    iget-object v6, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v7, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mAlbumNameIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, albumName:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v7, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistNameIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, artistName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 261
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030007

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 264
    .local v2, header:Landroid/view/View;
    const v6, 0x7f0e001e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 267
    .local v3, headerImage:Landroid/widget/ImageView;
    const-string v6, "albumimage"

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 268
    new-instance v6, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v8, v9}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v9

    aput-object v0, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    :cond_0
    new-instance v6, Lcom/andrew/apollo/tasks/GetCachedImages;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v10, v3}, Lcom/andrew/apollo/tasks/GetCachedImages;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v10, [Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/andrew/apollo/tasks/GetCachedImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    const v6, 0x7f0e001f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 277
    .local v4, headerText:Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 279
    return-object v2
.end method
