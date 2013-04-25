.class public Lcom/andrew/apollo/NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingCursor.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private final mProjection:[Ljava/lang/String;

.field private final mService:Lcom/andrew/apollo/IApolloService;

.field private mSize:I


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/IApolloService;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "projection"
    .parameter "c"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/andrew/apollo/NowPlayingCursor;->mProjection:[Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/andrew/apollo/NowPlayingCursor;->mService:Lcom/andrew/apollo/IApolloService;

    .line 20
    invoke-direct {p0}, Lcom/andrew/apollo/NowPlayingCursor;->makeNowPlayingCursor()V

    .line 21
    iput-object p3, p0, Lcom/andrew/apollo/NowPlayingCursor;->context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 15

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    .line 32
    iget v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 28
    :catch_0
    move-exception v8

    .line 29
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 36
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    if-ge v9, v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    aget-wide v0, v0, v9

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    iget v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge v9, v0, :cond_2

    .line 41
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 44
    :cond_3
    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->context:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/andrew/apollo/NowPlayingCursor;->mProjection:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 49
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    goto :goto_1

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 55
    .local v11, size:I
    new-array v0, v11, [J

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCursorIdxs:[J

    .line 56
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 58
    .local v6, colidx:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_5

    .line 59
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCursorIdxs:[J

    iget-object v1, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v9

    .line 60
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 58
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    const/4 v10, 0x0

    .line 65
    .local v10, removed:I
    :try_start_1
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    :goto_4
    if-ltz v9, :cond_7

    .line 66
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    aget-wide v12, v0, v9

    .line 67
    .local v12, trackid:J
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 68
    .local v7, crsridx:I
    if-gez v7, :cond_6

    .line 69
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, v12, v13}, Lcom/andrew/apollo/IApolloService;->removeTrack(J)I

    move-result v0

    add-int/2addr v10, v0

    .line 65
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 72
    .end local v7           #crsridx:I
    .end local v12           #trackid:J
    :cond_7
    if-lez v10, :cond_0

    .line 73
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    .line 74
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    .line 75
    iget v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCursorIdxs:[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 80
    :catch_1
    move-exception v8

    .line 81
    .restart local v8       #ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    goto/16 :goto_1
.end method


# virtual methods
.method public deactivate()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 173
    :cond_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/NowPlayingCursor;->onChange(Z)V

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 140
    :goto_0
    return-wide v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/NowPlayingCursor;->onChange(Z)V

    .line 140
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/NowPlayingCursor;->onChange(Z)V

    .line 115
    const-string v1, ""

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x1

    .line 92
    if-ne p1, p2, :cond_0

    .line 106
    :goto_0
    return v3

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCursorIdxs:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    array-length v4, v4

    if-lt p2, v4, :cond_2

    .line 96
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/andrew/apollo/NowPlayingCursor;->mNowPlaying:[J

    aget-wide v1, v4, p2

    .line 104
    .local v1, newid:J
    iget-object v4, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 105
    .local v0, crsridx:I
    iget-object v4, p0, Lcom/andrew/apollo/NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/andrew/apollo/NowPlayingCursor;->makeNowPlayingCursor()V

    .line 178
    const/4 v0, 0x1

    return v0
.end method
