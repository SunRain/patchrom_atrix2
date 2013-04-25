.class public Lcom/andrew/apollo/list/fragments/GenresFragment;
.super Landroid/support/v4/app/Fragment;
.source "GenresFragment.java"

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
.field public static mGenreIdIndex:I

.field public static mGenreNameIndex:I


# instance fields
.field private final PLAY_SELECTION:I

.field private mCurrentGenreId:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mGenreAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    const/16 v0, 0xe

    iput v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->PLAY_SELECTION:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    const/16 v0, 0xe

    iput v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->PLAY_SELECTION:I

    .line 65
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/list/fragments/GenresFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method private tracksBrowser(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreNameIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.dir/genre"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "genres"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "_id"

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030012

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/GenreAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    .line 74
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 80
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForGenre(Landroid/content/Context;J)[J

    move-result-object v0

    .line 160
    .local v0, list:[J
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 145
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 147
    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCurrentGenreId:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreNameIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, title:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 152
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

    .line 91
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v3, v0

    .line 94
    .local v3, projection:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 95
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "name"

    .line 96
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 84
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, root:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mListView:Landroid/widget/ListView;

    .line 86
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
    .line 126
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3, p4, p5}, Lcom/andrew/apollo/list/fragments/GenresFragment;->tracksBrowser(IJ)V

    .line 127
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
    .line 102
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreIdIndex:I

    .line 107
    const-string v0, "name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreNameIndex:I

    .line 108
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/GenreAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 109
    iput-object p2, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/list/fragments/GenresFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 114
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/GenreAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/GenresFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method
