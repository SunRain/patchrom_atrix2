.class public Lcom/andrew/apollo/adapters/GenreAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "GenreAdapter.java"


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

.field private final left:I

.field private final showContextMenu:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 36
    new-instance v0, Lcom/andrew/apollo/adapters/GenreAdapter$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/adapters/GenreAdapter$1;-><init>(Lcom/andrew/apollo/adapters/GenreAdapter;)V

    iput-object v0, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->showContextMenu:Landroid/view/View$OnClickListener;

    .line 29
    iget-object v0, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->left:I

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 51
    new-instance v2, Lcom/andrew/apollo/views/ViewHolderList;

    invoke-direct {v2, v1}, Lcom/andrew/apollo/views/ViewHolderList;-><init>(Landroid/view/View;)V

    .line 52
    .local v2, viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/andrew/apollo/list/fragments/GenresFragment;->mGenreNameIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, genreName:Ljava/lang/String;
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/andrew/apollo/utils/MusicUtils;->parseGenreName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    iget v4, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->left:I

    const/16 v5, 0x28

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineTwo:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->holderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/views/ViewHolderList;

    iget-object v3, v3, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContext:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/andrew/apollo/adapters/GenreAdapter;->showContextMenu:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-object v1

    .line 56
    .end local v0           #genreName:Ljava/lang/String;
    .end local v2           #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/views/ViewHolderList;

    .restart local v2       #viewholder:Lcom/andrew/apollo/views/ViewHolderList;
    goto :goto_0
.end method
