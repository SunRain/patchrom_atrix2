.class public Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;
.super Landroid/os/AsyncTask;
.source "LastfmGetArtistImagesOriginal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final aq:Lcom/androidquery/AQuery;

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

.field private final imageviewReference:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "context"
    .parameter "iv"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->contextReference:Ljava/lang/ref/WeakReference;

    .line 47
    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->imageviewReference:Ljava/lang/ref/WeakReference;

    .line 49
    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->imageviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mImageView:Landroid/widget/ImageView;

    .line 52
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->aq:Lcom/androidquery/AQuery;

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "artistname"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 57
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/andrew/apollo/utils/ApolloUtils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    aget-object v3, p1, v7

    const-string v4, "0bec3f7ec1f914d7c960c12a916c8fb3"

    invoke-static {v3, v5, v5, v4}, Lcom/andrew/apollo/lastfm/api/Artist;->getImages(Ljava/lang/String;IILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v0

    .line 59
    .local v0, artist:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<Lcom/andrew/apollo/lastfm/api/Image;>;"
    invoke-virtual {v0}, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->getPageResults()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/api/Image;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/lastfm/api/Image;

    .line 62
    .local v2, mTemp:Lcom/andrew/apollo/lastfm/api/Image;
    sget-object v3, Lcom/andrew/apollo/lastfm/api/ImageSize;->ORIGINAL:Lcom/andrew/apollo/lastfm/api/ImageSize;

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/lastfm/api/Image;->getImageURL(Lcom/andrew/apollo/lastfm/api/ImageSize;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    goto :goto_0

    .line 64
    .end local v2           #mTemp:Lcom/andrew/apollo/lastfm/api/Image;
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->aq:Lcom/androidquery/AQuery;

    iget-object v4, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/androidquery/AQuery;->cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;

    .line 65
    aget-object v3, p1, v7

    iget-object v4, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    const-string v5, "artistimageoriginal"

    iget-object v6, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5, v6}, Lcom/andrew/apollo/utils/ApolloUtils;->setImageURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 66
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    .line 70
    .end local v0           #artist:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<Lcom/andrew/apollo/lastfm/api/Image;>;"
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/api/Image;>;"
    :goto_1
    return-object v3

    .line 68
    :cond_1
    aget-object v3, p1, v7

    const-string v4, "artistimageoriginal"

    iget-object v5, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/andrew/apollo/tasks/BitmapFromURL;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/andrew/apollo/tasks/BitmapFromURL;-><init>(Landroid/widget/ImageView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/tasks/BitmapFromURL;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
