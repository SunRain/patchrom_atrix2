.class Lcom/andrew/apollo/service/ApolloService$ServiceStub;
.super Lcom/andrew/apollo/IApolloService$Stub;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/andrew/apollo/service/ApolloService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 2266
    invoke-direct {p0}, Lcom/andrew/apollo/IApolloService$Stub;-><init>()V

    .line 2267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 2268
    return-void
.end method


# virtual methods
.method public addToFavorites(J)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->addToFavorites(J)V

    .line 2428
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->enqueue([JI)V

    .line 2353
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getIdFromPath(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/service/ApolloService;->getIdFromPath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFavorite(J)Z
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->isFavorite(J)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/service/ApolloService;->gotoNext(Z)V

    .line 2323
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->open([JI)V

    .line 2278
    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/service/ApolloService;->open(Ljava/lang/String;)Z

    .line 2273
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 2308
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    .line 2313
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->prev()V

    .line 2318
    return-void
.end method

.method public removeFromFavorites(J)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->removeFromFavorites(J)V

    .line 2433
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1, p2}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/service/ApolloService;->setQueuePosition(I)V

    .line 2293
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/service/ApolloService;->setRepeatMode(I)V

    .line 2408
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/service/ApolloService;->setShuffleMode(I)V

    .line 2388
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->stop()V

    .line 2303
    return-void
.end method

.method public toggleFavorite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->toggleFavorite()V

    .line 2443
    return-void
.end method
