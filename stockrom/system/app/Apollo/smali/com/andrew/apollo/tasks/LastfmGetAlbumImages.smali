.class public Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;
.super Landroid/os/AsyncTask;
.source "LastfmGetAlbumImages.java"


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
.field private album:Lcom/andrew/apollo/lastfm/api/Album;

.field private final aq:Lcom/androidquery/AQuery;

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

.field private final mImageView:Landroid/widget/ImageView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "context"
    .parameter "iv"
    .parameter "opt"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->imageviewReference:Ljava/lang/ref/WeakReference;

    .line 47
    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->imageviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->mImageView:Landroid/widget/ImageView;

    .line 48
    iput p3, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->choice:I

    .line 51
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p2}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->aq:Lcom/androidquery/AQuery;

    .line 52
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/andrew/apollo/utils/ApolloUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const-string v3, "0bec3f7ec1f914d7c960c12a916c8fb3"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/lastfm/api/Album;->getInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Album;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->album:Lcom/andrew/apollo/lastfm/api/Album;

    .line 59
    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->album:Lcom/andrew/apollo/lastfm/api/Album;

    sget-object v2, Lcom/andrew/apollo/lastfm/api/ImageSize;->LARGE:Lcom/andrew/apollo/lastfm/api/ImageSize;

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/lastfm/api/Album;->getImageURL(Lcom/andrew/apollo/lastfm/api/ImageSize;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->aq:Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/androidquery/AQuery;->cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;

    .line 61
    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;

    const-string v4, "albumimage"

    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v4, v1}, Lcom/andrew/apollo/utils/ApolloUtils;->setImageURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    aget-object v2, p1, v2

    const-string v3, "albumimage"

    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->choice:I

    if-ne v0, v2, :cond_0

    .line 75
    new-instance v0, Lcom/andrew/apollo/tasks/BitmapFromURL;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/andrew/apollo/tasks/BitmapFromURL;-><init>(Landroid/widget/ImageView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/tasks/BitmapFromURL;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
