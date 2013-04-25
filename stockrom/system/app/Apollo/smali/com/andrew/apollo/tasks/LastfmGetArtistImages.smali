.class public Lcom/andrew/apollo/tasks/LastfmGetArtistImages;
.super Landroid/os/AsyncTask;
.source "LastfmGetArtistImages.java"


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

.field private artist:Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<",
            "Lcom/andrew/apollo/lastfm/api/Image;",
            ">;"
        }
    .end annotation
.end field

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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v0, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->aq:Lcom/androidquery/AQuery;

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "artistname"

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/andrew/apollo/utils/ApolloUtils;->isOnline(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v4

    if-eqz v3, :cond_1

    .line 50
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "0bec3f7ec1f914d7c960c12a916c8fb3"

    invoke-static {v3, v4, v5, v6}, Lcom/andrew/apollo/lastfm/api/Artist;->getImages(Ljava/lang/String;IILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->artist:Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    .line 51
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->artist:Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    invoke-virtual {v3}, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->getPageResults()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/api/Image;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/lastfm/api/Image;

    .line 54
    .local v2, mTemp:Lcom/andrew/apollo/lastfm/api/Image;
    sget-object v3, Lcom/andrew/apollo/lastfm/api/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/api/ImageSize;

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/lastfm/api/Image;->getImageURL(Lcom/andrew/apollo/lastfm/api/ImageSize;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;

    goto :goto_0

    .line 59
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/api/Image;>;"
    .end local v2           #mTemp:Lcom/andrew/apollo/lastfm/api/Image;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 56
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/api/Image;>;"
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->aq:Lcom/androidquery/AQuery;

    iget-object v4, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/androidquery/AQuery;->cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;

    .line 57
    const/4 v3, 0x0

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;

    const-string v6, "artistimage"

    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v4, v5, v6, v3}, Lcom/andrew/apollo/utils/ApolloUtils;->setImageURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/andrew/apollo/lastfm/api/Image;>;"
    :cond_1
    aget-object v4, p1, v4

    const-string v5, "artistimage"

    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v4, v5, v3}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->url:Ljava/lang/String;

    goto :goto_1
.end method
