.class Lcom/andrew/apollo/activities/TracksBrowser$1;
.super Landroid/content/BroadcastReceiver;
.source "TracksBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/activities/TracksBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/activities/TracksBrowser;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/activities/TracksBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/andrew/apollo/activities/TracksBrowser$1;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser$1;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/andrew/apollo/activities/TracksBrowser;->access$000(Lcom/andrew/apollo/activities/TracksBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isArtist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser$1;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/andrew/apollo/activities/TracksBrowser;->access$000(Lcom/andrew/apollo/activities/TracksBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isAlbum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser$1;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/TracksBrowser;->setArtistImage()V

    .line 139
    :cond_1
    return-void
.end method
