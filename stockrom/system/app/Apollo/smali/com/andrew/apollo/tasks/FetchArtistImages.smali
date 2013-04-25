.class public Lcom/andrew/apollo/tasks/FetchArtistImages;
.super Landroid/os/AsyncTask;
.source "FetchArtistImages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "opt"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    .line 35
    iput p2, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->choice:I

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/FetchArtistImages;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "artist"

    aput-object v4, v2, v0

    .line 43
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "artist_key"

    .line 44
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 45
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 47
    .local v8, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v7, artistIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 49
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 50
    .local v9, count:I
    if-lez v9, :cond_0

    .line 51
    const-string v0, "artist"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 52
    .local v6, ARTIST_IDX:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 53
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 54
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 57
    .end local v6           #ARTIST_IDX:I
    .end local v10           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 58
    const/4 v8, 0x0

    .line 60
    .end local v9           #count:I
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/FetchArtistImages;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 67
    iget v1, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->choice:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 68
    aget-object v2, p1, v0

    const-string v3, "artistimage"

    iget-object v1, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    new-instance v2, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/String;

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget v1, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->choice:I

    if-ne v1, v5, :cond_0

    if-eqz p1, :cond_0

    .line 74
    new-instance v2, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;

    iget-object v1, p0, Lcom/andrew/apollo/tasks/FetchArtistImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/String;

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lcom/andrew/apollo/tasks/LastfmGetArtistImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 78
    :cond_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public runTask()V
    .locals 2

    .prologue
    .line 85
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/tasks/FetchArtistImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method
