.class public Lcom/andrew/apollo/adapters/QuickQueueAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "QuickQueueAdapter.java"


# instance fields
.field private holderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/views/ViewHolderQueue;",
            ">;"
        }
    .end annotation
.end field


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
    .line 33
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 42
    .local v12, view:Landroid/view/View;
    if-eqz v12, :cond_0

    .line 44
    new-instance v13, Lcom/andrew/apollo/views/ViewHolderQueue;

    invoke-direct {v13, v12}, Lcom/andrew/apollo/views/ViewHolderQueue;-><init>(Landroid/view/View;)V

    .line 45
    .local v13, viewholder:Lcom/andrew/apollo/views/ViewHolderQueue;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 46
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    new-instance v9, Lcom/androidquery/AQuery;

    invoke-direct {v9, v12}, Lcom/androidquery/AQuery;-><init>(Landroid/view/View;)V

    .line 56
    .local v9, aq:Lcom/androidquery/AQuery;
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mArtistIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, artistName:Ljava/lang/String;
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mAlbumIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, albumName:Ljava/lang/String;
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mTitleIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, trackName:Ljava/lang/String;
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v1, v1, Lcom/andrew/apollo/views/ViewHolderQueue;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/views/ViewHolderQueue;

    iput p1, v1, Lcom/andrew/apollo/views/ViewHolderQueue;->position:I

    .line 67
    const-string v1, ""

    move-object/from16 v0, p3

    invoke-virtual {v9, p1, v12, v0, v1}, Lcom/androidquery/AQuery;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v1, v1, Lcom/andrew/apollo/views/ViewHolderQueue;->mArtistImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_1
    const-string v1, ""

    move-object/from16 v0, p3

    invoke-virtual {v9, p1, v12, v0, v1}, Lcom/androidquery/AQuery;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v1, v1, Lcom/andrew/apollo/views/ViewHolderQueue;->mAlbumArt:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_2
    return-object v12

    .line 49
    .end local v8           #albumName:Ljava/lang/String;
    .end local v9           #aq:Lcom/androidquery/AQuery;
    .end local v10           #artistName:Ljava/lang/String;
    .end local v11           #trackName:Ljava/lang/String;
    .end local v13           #viewholder:Lcom/andrew/apollo/views/ViewHolderQueue;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/andrew/apollo/views/ViewHolderQueue;

    .restart local v13       #viewholder:Lcom/andrew/apollo/views/ViewHolderQueue;
    goto :goto_0

    .line 71
    .restart local v8       #albumName:Ljava/lang/String;
    .restart local v9       #aq:Lcom/androidquery/AQuery;
    .restart local v10       #artistName:Ljava/lang/String;
    .restart local v11       #trackName:Ljava/lang/String;
    :cond_1
    const-string v1, "artistimage"

    iget-object v2, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;

    iget-object v2, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 75
    :cond_2
    new-instance v1, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;

    iget-object v2, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v4, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v7, v3, Lcom/andrew/apollo/views/ViewHolderQueue;->mArtistImage:Landroid/widget/ImageView;

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;-><init>(Lcom/andrew/apollo/views/ViewHolderQueue;ILandroid/content/Context;IILandroid/widget/ImageView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 86
    :cond_3
    const-string v1, "albumimage"

    iget-object v2, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 87
    new-instance v1, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    iget-object v2, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 90
    :cond_4
    new-instance v1, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;

    iget-object v2, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v4, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderQueue;

    iget-object v7, v3, Lcom/andrew/apollo/views/ViewHolderQueue;->mAlbumArt:Landroid/widget/ImageView;

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;-><init>(Lcom/andrew/apollo/views/ViewHolderQueue;ILandroid/content/Context;IILandroid/widget/ImageView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method
