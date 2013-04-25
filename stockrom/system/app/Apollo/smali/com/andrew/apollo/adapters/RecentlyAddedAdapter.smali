.class public Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "RecentlyAddedAdapter.java"


# instance fields
.field private holderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/views/ViewHolderList;",
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
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 46
    .local v20, view:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 48
    new-instance v21, Lcom/andrew/apollo/views/ViewHolderList;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/andrew/apollo/views/ViewHolderList;-><init>(Landroid/view/View;)V

    .line 49
    .local v21, viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    new-instance v12, Lcom/androidquery/AQuery;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    .line 59
    .local v12, aq:Lcom/androidquery/AQuery;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mTitleIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 60
    .local v19, trackName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mArtistIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineTwo:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mAlbumIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    move/from16 v0, p1

    iput v0, v3, Lcom/andrew/apollo/views/ViewHolderList;->position:I

    .line 71
    const-string v3, ""

    move/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/androidquery/AQuery;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContext:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 88
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v16

    .line 89
    .local v16, currentaudioid:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;->mMediaIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 90
    .local v14, audioid:J
    cmp-long v3, v16, v14

    if-nez v3, :cond_4

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 96
    :try_start_0
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v3}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_2
    return-object v20

    .line 53
    .end local v11           #albumName:Ljava/lang/String;
    .end local v12           #aq:Lcom/androidquery/AQuery;
    .end local v13           #artistName:Ljava/lang/String;
    .end local v14           #audioid:J
    .end local v16           #currentaudioid:J
    .end local v19           #trackName:Ljava/lang/String;
    .end local v21           #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/andrew/apollo/views/ViewHolderList;

    .restart local v21       #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    goto/16 :goto_0

    .line 75
    .restart local v11       #albumName:Ljava/lang/String;
    .restart local v12       #aq:Lcom/androidquery/AQuery;
    .restart local v13       #artistName:Ljava/lang/String;
    .restart local v19       #trackName:Ljava/lang/String;
    :cond_1
    const-string v3, "albumimage"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 76
    new-instance v3, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 79
    :cond_2
    new-instance v3, Lcom/andrew/apollo/tasks/ViewHolderTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/views/ViewHolderList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v10, v6, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderImage:Landroid/widget/ImageView;

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/andrew/apollo/tasks/ViewHolderTask;-><init>(Lcom/andrew/apollo/views/ViewHolderList;Lcom/andrew/apollo/views/ViewHolderGrid;ILandroid/content/Context;IILandroid/widget/ImageView;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/ViewHolderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 100
    .restart local v14       #audioid:J
    .restart local v16       #currentaudioid:J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 103
    :catch_0
    move-exception v18

    .line 104
    .local v18, e:Landroid/os/RemoteException;
    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 107
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/andrew/apollo/adapters/RecentlyAddedAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method
