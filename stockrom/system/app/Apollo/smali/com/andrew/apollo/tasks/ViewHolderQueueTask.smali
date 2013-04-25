.class public Lcom/andrew/apollo/tasks/ViewHolderQueueTask;
.super Landroid/os/AsyncTask;
.source "ViewHolderQueueTask.java"


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

.field private final mViewHolderQueue:Lcom/andrew/apollo/views/ViewHolderQueue;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/views/ViewHolderQueue;ILandroid/content/Context;IILandroid/widget/ImageView;)V
    .locals 2
    .parameter "vh"
    .parameter "position"
    .parameter "c"
    .parameter "opt"
    .parameter "holderOpt"
    .parameter "iv"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mViewHolderQueue:Lcom/andrew/apollo/views/ViewHolderQueue;

    .line 51
    iput p2, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mPosition:I

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mContext:Landroid/content/Context;

    .line 54
    iput p4, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->choice:I

    .line 55
    iput p5, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->holderChoice:I

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 57
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mImageView:Landroid/widget/ImageView;

    .line 60
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->aquery:Lcom/androidquery/AQuery;

    .line 61
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->choice:I

    if-nez v0, :cond_0

    .line 66
    aget-object v0, p1, v3

    const-string v1, "artistimage"

    iget-object v2, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->url:Ljava/lang/String;

    .line 67
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->choice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    aget-object v0, p1, v3

    const-string v1, "albumimage"

    iget-object v2, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->url:Ljava/lang/String;

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->aquery:Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->bitmapReference:Ljava/lang/ref/WeakReference;

    .line 70
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->holderChoice:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mViewHolderQueue:Lcom/andrew/apollo/views/ViewHolderQueue;

    iget v0, v0, Lcom/andrew/apollo/views/ViewHolderQueue;->position:I

    iget v1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mPosition:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mViewHolderQueue:Lcom/andrew/apollo/views/ViewHolderQueue;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->aquery:Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, p1}, Lcom/androidquery/AQuery;->image(Landroid/graphics/Bitmap;)Lcom/androidquery/AbstractAQuery;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->holderChoice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mViewHolderQueue:Lcom/andrew/apollo/views/ViewHolderQueue;

    iget v0, v0, Lcom/andrew/apollo/views/ViewHolderQueue;->position:I

    iget v1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mPosition:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mViewHolderQueue:Lcom/andrew/apollo/views/ViewHolderQueue;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->aquery:Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, p1}, Lcom/androidquery/AQuery;->image(Landroid/graphics/Bitmap;)Lcom/androidquery/AbstractAQuery;

    .line 81
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/ViewHolderQueueTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
