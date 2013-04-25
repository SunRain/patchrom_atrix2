.class public Lcom/andrew/apollo/adapters/PlaylistAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "PlaylistAdapter.java"


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
    .line 27
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 33
    new-instance v0, Lcom/andrew/apollo/adapters/PlaylistAdapter$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/adapters/PlaylistAdapter$1;-><init>(Lcom/andrew/apollo/adapters/PlaylistAdapter;)V

    iput-object v0, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->showContextMenu:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 48
    new-instance v3, Lcom/andrew/apollo/views/ViewHolderList;

    invoke-direct {v3, v2}, Lcom/andrew/apollo/views/ViewHolderList;-><init>(Landroid/view/View;)V

    .line 49
    .local v3, viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 50
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mCursor:Landroid/database/Cursor;

    sget v5, Lcom/andrew/apollo/list/fragments/PlaylistsFragment;->mPlaylistNameIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, playlist_name:Ljava/lang/String;
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v4, v4, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    .local v0, left:I
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v4, v4, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    const/16 v5, 0x28

    invoke-virtual {v4, v0, v5, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v4, v4, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v4, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v4, v4, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContext:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter;->showContextMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-object v2

    .line 53
    .end local v0           #left:I
    .end local v1           #playlist_name:Ljava/lang/String;
    .end local v3           #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    .restart local v3       #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    goto :goto_0
.end method
