.class public Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecentlyAddedFragment.java"

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
.field public static mAlbumIndex:I

.field public static mArtistIndex:I

.field public static mMediaIdIndex:I

.field public static mTitleIndex:I


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 142
    new-instance v0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment$1;-><init>(Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 142
    new-instance v0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment$1;-><init>(Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;)Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030012

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    .line 69
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 70
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 75
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 11
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
    .line 86
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v3, v0

    .line 89
    .local v3, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v6, "date_added DESC"

    .line 91
    .local v6, sortOrder:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 92
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "numweeks"

    const/4 v4, 0x5

    invoke-static {v0, v1, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v7, v0, 0x7

    .line 93
    .local v7, X:I
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #where:Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .restart local v8       #where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " AND is_music=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    int-to-long v9, v7

    sub-long/2addr v4, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 79
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, root:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mListView:Landroid/widget/ListView;

    .line 81
    return-object v0
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
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/andrew/apollo/NowPlayingCursor;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p3}, Lcom/andrew/apollo/utils/MusicUtils;->setQueuePosition(I)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1, p3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
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
    .line 104
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mMediaIdIndex:I

    .line 109
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mTitleIndex:I

    .line 110
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mArtistIndex:I

    .line 111
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mAlbumIndex:I

    .line 112
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 113
    iput-object p2, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 118
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mRecentlyAddedAdapter:Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 166
    return-void
.end method
