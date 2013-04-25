.class public Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;
.super Landroid/os/AsyncTask;
.source "FetchAlbumImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/tasks/FetchAlbumImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getAlbums"
.end annotation

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
.field final synthetic this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/tasks/FetchAlbumImages;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "album"

    aput-object v4, v2, v0

    .line 79
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "album_key"

    .line 80
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 81
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    #getter for: Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->access$000(Lcom/andrew/apollo/tasks/FetchAlbumImages;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 82
    .local v8, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v7, artistIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 84
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 85
    .local v9, count:I
    if-lez v9, :cond_0

    .line 86
    const-string v0, "album"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, ARTIST_IDX:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 88
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 89
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 92
    .end local v6           #ARTIST_IDX:I
    .end local v10           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 93
    const/4 v8, 0x0

    .line 95
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
    .line 72
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    #getter for: Lcom/andrew/apollo/tasks/FetchAlbumImages;->choice:I
    invoke-static {v1}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->access$100(Lcom/andrew/apollo/tasks/FetchAlbumImages;)I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 103
    aget-object v1, p1, v0

    const-string v2, "albumimage"

    iget-object v3, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    #getter for: Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->access$000(Lcom/andrew/apollo/tasks/FetchAlbumImages;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    iget-object v2, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    #getter for: Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->access$000(Lcom/andrew/apollo/tasks/FetchAlbumImages;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v8, v5}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    invoke-virtual {v4}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->getAlbumArtists()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    #getter for: Lcom/andrew/apollo/tasks/FetchAlbumImages;->choice:I
    invoke-static {v1}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->access$100(Lcom/andrew/apollo/tasks/FetchAlbumImages;)I

    move-result v1

    if-ne v1, v6, :cond_0

    if-eqz p1, :cond_0

    .line 109
    new-instance v1, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    iget-object v2, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    #getter for: Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->access$000(Lcom/andrew/apollo/tasks/FetchAlbumImages;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v8, v5}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->this$0:Lcom/andrew/apollo/tasks/FetchAlbumImages;

    invoke-virtual {v4}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->getAlbumArtists()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 113
    :cond_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
