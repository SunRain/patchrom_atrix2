.class public Lcom/andrew/apollo/grid/fragments/AlbumsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AlbumsFragment.java"

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


# instance fields
.field private final ADD_TO_PLAYLIST:I

.field private final PLAY_SELECTION:I

.field private final SEARCH:I

.field private mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mGridView:Landroid/widget/GridView;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->PLAY_SELECTION:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->ADD_TO_PLAYLIST:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->SEARCH:I

    .line 153
    new-instance v0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;-><init>(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->PLAY_SELECTION:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->ADD_TO_PLAYLIST:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->SEARCH:I

    .line 153
    new-instance v0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;-><init>(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)Lcom/andrew/apollo/adapters/AlbumAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    return-object v0
.end method

.method private tracksBrowser(J)V
    .locals 5
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mArtistNameIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumNameIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.dir/albums"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "artist"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "album"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "_id"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    const-string v0, "upStartsAlbumActivity"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v3, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
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
    new-instance v0, Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03000d

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/AlbumAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    .line 93
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 94
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setTextFilterEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 100
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 237
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 219
    .local v1, list:[J
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 223
    .end local v1           #list:[J
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.ADD_TO_PLAYLIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    .line 226
    .restart local v1       #list:[J
    const-string v2, "playlistlist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:[J
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumNameIndex:I

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->doSearch(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x3
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

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 204
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 205
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 207
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCurrentAlbumId:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->setHeaderLayout()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 211
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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

    .line 111
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "album_art"

    aput-object v1, v3, v0

    .line 114
    .local v3, projection:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 115
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "album_key"

    .line 116
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 104
    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0e0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;

    .line 106
    return-object v0
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
    .line 147
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p4, p5}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->tracksBrowser(J)V

    .line 148
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
    .line 122
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumIdIndex:I

    .line 127
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumNameIndex:I

    .line 128
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mArtistNameIndex:I

    .line 129
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/AlbumAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    iput-object p2, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 135
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 177
    return-void
.end method

.method public setHeaderLayout()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 245
    iget-object v6, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v7, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumNameIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, albumName:Ljava/lang/String;
    iget-object v6, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mCursor:Landroid/database/Cursor;

    sget v7, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mArtistNameIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, artistName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 251
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030007

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, header:Landroid/view/View;
    const v6, 0x7f0e001e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 257
    .local v3, headerImage:Landroid/widget/ImageView;
    const-string v6, "albumimage"

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 258
    new-instance v6, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v8, v9}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v9

    aput-object v0, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    :cond_0
    new-instance v6, Lcom/andrew/apollo/tasks/GetCachedImages;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v10, v3}, Lcom/andrew/apollo/tasks/GetCachedImages;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v10, [Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/andrew/apollo/tasks/GetCachedImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    const v6, 0x7f0e001f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 267
    .local v4, headerText:Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 269
    return-object v2
.end method
