.class public Lcom/andrew/apollo/adapters/AlbumAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "AlbumAdapter.java"


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
    .line 36
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 45
    .local v19, view:Landroid/view/View;
    if-eqz v19, :cond_0

    .line 47
    new-instance v20, Lcom/andrew/apollo/views/ViewHolderGrid;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/andrew/apollo/views/ViewHolderGrid;-><init>(Landroid/view/View;)V

    .line 48
    .local v20, viewholder:Lcom/andrew/apollo/views/ViewHolderGrid;
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    new-instance v14, Lcom/androidquery/AQuery;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    .line 59
    .local v14, aq:Lcom/androidquery/AQuery;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumNameIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderLineOne:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mArtistNameIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderLineTwo:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    move/from16 v0, p1

    iput v0, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->position:I

    .line 68
    const-string v3, ""

    move/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/androidquery/AQuery;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_1
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v16

    .line 83
    .local v16, currentalbumid:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 84
    .local v12, albumid:J
    cmp-long v3, v16, v12

    if-nez v3, :cond_4

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 90
    :try_start_0
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v3}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_2
    return-object v19

    .line 52
    .end local v11           #albumName:Ljava/lang/String;
    .end local v12           #albumid:J
    .end local v14           #aq:Lcom/androidquery/AQuery;
    .end local v15           #artistName:Ljava/lang/String;
    .end local v16           #currentalbumid:J
    .end local v20           #viewholder:Lcom/andrew/apollo/views/ViewHolderGrid;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/andrew/apollo/views/ViewHolderGrid;

    .restart local v20       #viewholder:Lcom/andrew/apollo/views/ViewHolderGrid;
    goto/16 :goto_0

    .line 72
    .restart local v11       #albumName:Ljava/lang/String;
    .restart local v14       #aq:Lcom/androidquery/AQuery;
    .restart local v15       #artistName:Ljava/lang/String;
    :cond_1
    const-string v3, "albumimage"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 73
    new-instance v3, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 76
    :cond_2
    new-instance v3, Lcom/andrew/apollo/tasks/ViewHolderTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/andrew/apollo/views/ViewHolderGrid;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

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

    aput-object v11, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/ViewHolderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 94
    .restart local v12       #albumid:J
    .restart local v16       #currentalbumid:J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 97
    :catch_0
    move-exception v18

    .line 98
    .local v18, e:Landroid/os/RemoteException;
    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/AlbumAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderGrid;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method
