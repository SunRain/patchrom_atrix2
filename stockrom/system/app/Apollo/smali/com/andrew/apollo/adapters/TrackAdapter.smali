.class public Lcom/andrew/apollo/adapters/TrackAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "TrackAdapter.java"


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

.field private final showContextMenu:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 35
    new-instance v0, Lcom/andrew/apollo/adapters/TrackAdapter$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/adapters/TrackAdapter$1;-><init>(Lcom/andrew/apollo/adapters/TrackAdapter;)V

    iput-object v0, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->showContextMenu:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 48
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 50
    new-instance v8, Lcom/andrew/apollo/views/ViewHolderList;

    invoke-direct {v8, v7}, Lcom/andrew/apollo/views/ViewHolderList;-><init>(Landroid/view/View;)V

    .line 51
    .local v8, viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 52
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mCursor:Landroid/database/Cursor;

    sget v10, Lcom/andrew/apollo/list/fragments/TracksFragment;->mTitleIndex:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, trackName:Ljava/lang/String;
    iget-object v9, v8, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mCursor:Landroid/database/Cursor;

    sget v10, Lcom/andrew/apollo/list/fragments/TracksFragment;->mArtistIndex:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, artistName:Ljava/lang/String;
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineTwo:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderImage:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContext:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->showContextMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v3

    .line 73
    .local v3, currentaudioid:J
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mCursor:Landroid/database/Cursor;

    sget v10, Lcom/andrew/apollo/list/fragments/TracksFragment;->mMediaIdIndex:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 74
    .local v1, audioid:J
    cmp-long v9, v3, v1

    if-nez v9, :cond_2

    .line 75
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    const/high16 v10, 0x7f04

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    const v10, 0x7f040001

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 78
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    :try_start_0
    sget-object v9, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v9}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 82
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    return-object v7

    .line 55
    .end local v0           #artistName:Ljava/lang/String;
    .end local v1           #audioid:J
    .end local v3           #currentaudioid:J
    .end local v6           #trackName:Ljava/lang/String;
    .end local v8           #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/andrew/apollo/views/ViewHolderList;

    .restart local v8       #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    goto/16 :goto_0

    .line 84
    .restart local v0       #artistName:Ljava/lang/String;
    .restart local v1       #audioid:J
    .restart local v3       #currentaudioid:J
    .restart local v6       #trackName:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mPeakOneAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 85
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->mPeakTwoAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v5

    .line 88
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v9, p0, Lcom/andrew/apollo/adapters/TrackAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v9, v9, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
