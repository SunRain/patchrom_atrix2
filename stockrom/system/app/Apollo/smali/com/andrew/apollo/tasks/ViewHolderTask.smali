.class public Lcom/andrew/apollo/tasks/ViewHolderTask;
.super Landroid/os/AsyncTask;
.source "ViewHolderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final albumart:I

.field private final aquery:Lcom/androidquery/AQuery;

.field private bitmapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final choice:I

.field private final contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final holderChoice:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mPosition:I

.field private final mViewHolderGrid:Lcom/andrew/apollo/views/ViewHolderGrid;

.field private final mViewHolderList:Lcom/andrew/apollo/views/ViewHolderList;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/views/ViewHolderList;Lcom/andrew/apollo/views/ViewHolderGrid;ILandroid/content/Context;IILandroid/widget/ImageView;)V
    .locals 2
    .parameter "vh"
    .parameter "vhg"
    .parameter "position"
    .parameter "c"
    .parameter "opt"
    .parameter "holderOpt"
    .parameter "iv"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mViewHolderList:Lcom/andrew/apollo/views/ViewHolderList;

    .line 57
    iput-object p2, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mViewHolderGrid:Lcom/andrew/apollo/views/ViewHolderGrid;

    .line 58
    iput p3, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mPosition:I

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 60
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mContext:Landroid/content/Context;

    .line 61
    iput p5, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->choice:I

    .line 62
    iput p6, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->holderChoice:I

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 64
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mImageView:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->aquery:Lcom/androidquery/AQuery;

    .line 67
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->albumart:I

    .line 68
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->choice:I

    if-nez v0, :cond_0

    .line 73
    aget-object v0, p1, v3

    const-string v1, "artistimage"

    iget-object v2, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->url:Ljava/lang/String;

    .line 74
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->choice:I

    if-ne v0, v4, :cond_1

    .line 75
    aget-object v0, p1, v3

    const-string v1, "albumimage"

    iget-object v2, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->url:Ljava/lang/String;

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->aquery:Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->bitmapReference:Ljava/lang/ref/WeakReference;

    .line 77
    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->holderChoice:I

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->albumart:I

    iget v2, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->albumart:I

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_2
    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->holderChoice:I

    if-ne v0, v4, :cond_3

    .line 80
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/ViewHolderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->holderChoice:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mViewHolderList:Lcom/andrew/apollo/views/ViewHolderList;

    iget v0, v0, Lcom/andrew/apollo/views/ViewHolderList;->position:I

    iget v1, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mPosition:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mViewHolderList:Lcom/andrew/apollo/views/ViewHolderList;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->holderChoice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mViewHolderGrid:Lcom/andrew/apollo/views/ViewHolderGrid;

    iget v0, v0, Lcom/andrew/apollo/views/ViewHolderGrid;->position:I

    iget v1, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mPosition:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mViewHolderGrid:Lcom/andrew/apollo/views/ViewHolderGrid;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/ViewHolderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
