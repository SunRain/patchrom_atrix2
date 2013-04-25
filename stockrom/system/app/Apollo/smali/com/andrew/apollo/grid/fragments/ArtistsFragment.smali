.class public Lcom/andrew/apollo/grid/fragments/ArtistsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ArtistsFragment.java"

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
.field public static mArtistIdIndex:I

.field public static mArtistNameIndex:I

.field public static mArtistNumAlbumsIndex:I


# instance fields
.field private final ADD_TO_PLAYLIST:I

.field private final PLAY_SELECTION:I

.field private final SEARCH:I

.field private mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mGridView:Landroid/widget/GridView;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->PLAY_SELECTION:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->ADD_TO_PLAYLIST:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->SEARCH:I

    .line 217
    new-instance v0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;-><init>(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->PLAY_SELECTION:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->ADD_TO_PLAYLIST:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->SEARCH:I

    .line 217
    new-instance v0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;-><init>(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)Lcom/andrew/apollo/adapters/ArtistAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

    return-object v0
.end method

.method private tracksBrowser(J)V
    .locals 4
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNameIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 160
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.dir/artists"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "artist"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 164
    const-string v2, "artistid"

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, p1, p2, v2, v3}, Lcom/andrew/apollo/utils/ApolloUtils;->setArtistId(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Lcom/andrew/apollo/adapters/ArtistAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03000d

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/ArtistAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 96
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setTextFilterEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 102
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 189
    :pswitch_0
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v1

    .line 192
    .local v1, list:[J
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 189
    .end local v1           #list:[J
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    goto :goto_1

    .line 196
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.andrew.apollo.ADD_TO_PLAYLIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v1

    .line 200
    .restart local v1       #list:[J
    :goto_2
    const-string v2, "playlistlist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    .end local v1           #list:[J
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v1

    goto :goto_2

    .line 205
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNameIndex:I

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->doSearch(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 174
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 176
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentArtistId:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCurrentAlbumId:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->setHeaderLayout()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 183
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

    .line 113
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "number_of_albums"

    aput-object v1, v3, v0

    .line 116
    .local v3, projection:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 117
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "artist_key"

    .line 118
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 106
    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0e0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;

    .line 108
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
    .line 149
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p4, p5}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->tracksBrowser(J)V

    .line 150
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
    .line 124
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistIdIndex:I

    .line 129
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNameIndex:I

    .line 130
    const-string v0, "number_of_albums"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNumAlbumsIndex:I

    .line 131
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/ArtistAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 132
    iput-object p2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

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
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 137
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/ArtistAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 241
    return-void
.end method

.method public setHeaderLayout()Landroid/view/View;
    .locals 8

    .prologue
    .line 248
    iget-object v5, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mCursor:Landroid/database/Cursor;

    sget v6, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNameIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, artistName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 252
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, header:Landroid/view/View;
    const v5, 0x7f0e001e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 257
    .local v4, mHanderImage:Landroid/widget/ImageView;
    new-instance v5, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;

    invoke-direct {v5, p0, v0, v4}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;-><init>(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 273
    const v5, 0x7f0e001f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 274
    .local v2, headerText:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 276
    return-object v1
.end method
