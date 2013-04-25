.class public Lcom/andrew/apollo/tasks/FetchAlbumImages;
.super Ljava/lang/Object;
.source "FetchAlbumImages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;
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

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "opt"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    .line 37
    iget-object v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->choice:I

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/tasks/FetchAlbumImages;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/tasks/FetchAlbumImages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->choice:I

    return v0
.end method


# virtual methods
.method public getAlbumArtists()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "artist"

    aput-object v4, v2, v0

    .line 48
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "album_key"

    .line 49
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 50
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/andrew/apollo/tasks/FetchAlbumImages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v7, artistIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 54
    .local v9, count:I
    if-lez v9, :cond_0

    .line 55
    const-string v0, "artist"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 56
    .local v6, ARTIST_IDX:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 57
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 58
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 61
    .end local v6           #ARTIST_IDX:I
    .end local v10           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 62
    const/4 v8, 0x0

    .line 64
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

.method public runTask()V
    .locals 3

    .prologue
    .line 121
    new-instance v1, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;-><init>(Lcom/andrew/apollo/tasks/FetchAlbumImages;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/andrew/apollo/tasks/FetchAlbumImages$getAlbums;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method
