.class Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "ApolloService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2185
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2600(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2700(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2600(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2190
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2700(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2602(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2191
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2702(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2192
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2800(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2204
    :goto_0
    return-void

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    iget-object v0, v0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$1400(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2200
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2800(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2201
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2800(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
