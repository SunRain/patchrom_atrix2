.class public Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;
.super Landroid/support/v4/app/Fragment;
.source "QuickQueueFragment.java"

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
.field private final PLAY_SELECTION:I

.field private final REMOVE:I

.field private mCursor:Landroid/database/Cursor;

.field private mGridView:Landroid/widget/GridView;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->PLAY_SELECTION:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->REMOVE:I

    .line 237
    new-instance v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;-><init>(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->PLAY_SELECTION:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->REMOVE:I

    .line 237
    new-instance v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;-><init>(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)Lcom/andrew/apollo/adapters/QuickQueueAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    return-object v0
.end method

.method private reloadQueueCursor()V
    .locals 13

    .prologue
    .line 209
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "album"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "artist"

    aput-object v3, v2, v0

    .line 212
    .local v2, projection:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v12, selection:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 214
    .local v1, uri:Landroid/net/Uri;
    const-string v5, "title_key"

    .line 215
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 216
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v9

    .line 217
    .local v9, mNowPlaying:[J
    array-length v0, v9

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #selection:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .restart local v12       #selection:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lez v0, :cond_0

    .line 223
    move-object v6, v9

    .local v6, arr$:[J
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-wide v10, v6, v7

    .line 224
    .local v10, queue_id:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 226
    .end local v10           #queue_id:J
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    .line 231
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private removePlaylistItem(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 199
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    sget v3, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mMediaIdIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 200
    .local v0, id:J
    invoke-static {v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->removeTrack(J)I

    .line 201
    invoke-direct {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->reloadQueueCursor()V

    .line 202
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->invalidateViews()V

    .line 203
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 77
    new-instance v0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030015

    new-array v4, v6, [Ljava/lang/String;

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/adapters/QuickQueueAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    .line 79
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 80
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 170
    :pswitch_0
    iget v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mSelectedPosition:I

    .line 171
    .local v0, position:I
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 172
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 175
    .end local v0           #position:I
    :pswitch_1
    iget v1, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->removePlaylistItem(I)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v0, p3

    .line 157
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 158
    .local v0, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mSelectedPosition:I

    .line 159
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mSelectedPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    sget v3, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mTitleIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, title:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 164
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 14
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
    .line 101
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

    .line 104
    .local v3, projection:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v13, selection:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 106
    .local v2, uri:Landroid/net/Uri;
    const-string v6, "title_key"

    .line 107
    .local v6, sortOrder:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 108
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v10

    .line 109
    .local v10, mNowPlaying:[J
    array-length v0, v10

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13           #selection:Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .restart local v13       #selection:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    if-eqz v10, :cond_1

    array-length v0, v10

    if-gtz v0, :cond_2

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_2
    move-object v7, v10

    .local v7, arr$:[J
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-wide v11, v7, v8

    .line 116
    .local v11, queue_id:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 118
    .end local v11           #queue_id:J
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 90
    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, root:Landroid/view/View;
    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    .line 92
    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 94
    const v2, 0x7f0e004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    .local v0, mQueueHolder:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 96
    return-object v1
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
    .line 185
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/andrew/apollo/NowPlayingCursor;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p3}, Lcom/andrew/apollo/utils/MusicUtils;->setQueuePosition(I)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1, p3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 191
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 192
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
    .line 128
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mMediaIdIndex:I

    .line 133
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mTitleIndex:I

    .line 134
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mArtistIndex:I

    .line 135
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mAlbumIndex:I

    .line 136
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    invoke-virtual {v0, p2}, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 137
    iput-object p2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 142
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    return-void

    .line 148
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v1, "com.andrew.apollo.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 268
    return-void
.end method
