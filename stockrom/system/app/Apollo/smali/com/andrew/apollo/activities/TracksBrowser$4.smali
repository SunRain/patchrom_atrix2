.class Lcom/andrew/apollo/activities/TracksBrowser$4;
.super Ljava/lang/Object;
.source "TracksBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/activities/TracksBrowser;->setAlbumImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/activities/TracksBrowser;

.field final synthetic val$mSecondHalfImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/activities/TracksBrowser;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    iput-object p2, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->val$mSecondHalfImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 396
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/TracksBrowser;->getAlbum()Ljava/lang/String;

    move-result-object v0

    const-string v1, "albumimage"

    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->val$mSecondHalfImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v4}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v3}, Lcom/andrew/apollo/activities/TracksBrowser;->getArtist()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v3}, Lcom/andrew/apollo/activities/TracksBrowser;->getAlbum()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    :cond_0
    new-instance v0, Lcom/andrew/apollo/tasks/GetCachedImages;

    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->val$mSecondHalfImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v4, v2}, Lcom/andrew/apollo/tasks/GetCachedImages;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser$4;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v3}, Lcom/andrew/apollo/activities/TracksBrowser;->getAlbum()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/tasks/GetCachedImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 403
    return-void
.end method
