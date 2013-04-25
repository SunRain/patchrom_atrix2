.class public Lcom/andrew/apollo/adapters/ArtistAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "ArtistAdapter.java"


# instance fields
.field private holderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/views/ViewHolderGrid;",
            ">;"
        }
    .end annotation
.end field

.field private mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 38
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 46
    .local v21, view:Landroid/view/View;
    if-eqz v21, :cond_1

    .line 48
    new-instance v22, Lcom/andrew/apollo/views/ViewHolderGrid;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/andrew/apollo/views/ViewHolderGrid;-><init>(Landroid/view/View;)V

    .line 49
    .local v22, viewholder:Lcom/andrew/apollo/views/ViewHolderGrid;
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    new-instance v12, Lcom/androidquery/AQuery;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    .line 60
    .local v12, aq:Lcom/androidquery/AQuery;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNameIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 61
    .local v13, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderLineOne:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistNumAlbumsIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 65
    .local v11, albums_plural:I
    if-eqz v13, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v20, 0x1

    .line 66
    .local v20, unknown:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move/from16 v0, v20

    invoke-static {v3, v11, v4, v0}, Lcom/andrew/apollo/utils/MusicUtils;->makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v19

    .line 67
    .local v19, numAlbums:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderLineTwo:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    move/from16 v0, p1

    iput v0, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->position:I

    .line 70
    const-string v3, ""

    move/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/androidquery/AQuery;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_2
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentArtistId()J

    move-result-wide v16

    .line 85
    .local v16, currentartistid:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 86
    .local v14, artistid:J
    cmp-long v3, v16, v14

    if-nez v3, :cond_6

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 92
    :try_start_0
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v3}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_3
    return-object v21

    .line 53
    .end local v11           #albums_plural:I
    .end local v12           #aq:Lcom/androidquery/AQuery;
    .end local v13           #artistName:Ljava/lang/String;
    .end local v14           #artistid:J
    .end local v16           #currentartistid:J
    .end local v19           #numAlbums:Ljava/lang/String;
    .end local v20           #unknown:Z
    .end local v22           #viewholder:Lcom/andrew/apollo/views/ViewHolderGrid;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/andrew/apollo/views/ViewHolderGrid;

    .restart local v22       #viewholder:Lcom/andrew/apollo/views/ViewHolderGrid;
    goto/16 :goto_0

    .line 65
    .restart local v11       #albums_plural:I
    .restart local v12       #aq:Lcom/androidquery/AQuery;
    .restart local v13       #artistName:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 74
    .restart local v19       #numAlbums:Ljava/lang/String;
    .restart local v20       #unknown:Z
    :cond_3
    const-string v3, "artistimage"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mContext:Landroid/content/Context;

    invoke-static {v13, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 75
    new-instance v3, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 78
    :cond_4
    new-instance v3, Lcom/andrew/apollo/tasks/ViewHolderTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/andrew/apollo/views/ViewHolderGrid;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v10, v6, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderImage:Landroid/widget/ImageView;

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/andrew/apollo/tasks/ViewHolderTask;-><init>(Lcom/andrew/apollo/views/ViewHolderList;Lcom/andrew/apollo/views/ViewHolderGrid;ILandroid/content/Context;IILandroid/widget/ImageView;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/ViewHolderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 96
    .restart local v14       #artistid:J
    .restart local v16       #currentartistid:J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 99
    :catch_0
    move-exception v18

    .line 100
    .local v18, e:Landroid/os/RemoteException;
    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 103
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/ArtistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method
