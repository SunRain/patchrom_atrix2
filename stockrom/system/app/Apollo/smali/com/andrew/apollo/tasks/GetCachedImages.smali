.class public Lcom/andrew/apollo/tasks/GetCachedImages;
.super Landroid/os/AsyncTask;
.source "GetCachedImages.java"


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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 2
    .parameter "c"
    .parameter "opt"
    .parameter "iv"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->contextReference:Ljava/lang/ref/WeakReference;

    .line 44
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->choice:I

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 47
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mImageView:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->aquery:Lcom/androidquery/AQuery;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 55
    iget v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->choice:I

    if-nez v0, :cond_0

    .line 56
    aget-object v0, p1, v3

    const-string v1, "artistimageoriginal"

    iget-object v2, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->url:Ljava/lang/String;

    .line 57
    :cond_0
    iget v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->choice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 58
    aget-object v0, p1, v3

    const-string v1, "albumimage"

    iget-object v2, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->url:Ljava/lang/String;

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->aquery:Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->url:Ljava/lang/String;

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->bitmapReference:Ljava/lang/ref/WeakReference;

    .line 60
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->bitmapReference:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/GetCachedImages;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/andrew/apollo/utils/ApolloUtils;->runnableBackground(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 71
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->aquery:Lcom/androidquery/AQuery;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->getCachedImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/andrew/apollo/tasks/GetCachedImages;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/andrew/apollo/utils/ApolloUtils;->runnableBackground(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/GetCachedImages;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
