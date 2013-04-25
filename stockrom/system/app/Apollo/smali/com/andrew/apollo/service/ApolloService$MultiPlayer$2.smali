.class Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "ApolloService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 2207
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2210
    packed-switch p2, :pswitch_data_0

    .line 2225
    const-string v0, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2228
    :goto_0
    return v0

    .line 2212
    :pswitch_0
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #setter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v2, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2902(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Z)Z

    .line 2213
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2600(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 2219
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2602(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2220
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2600(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    iget-object v2, v2, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2222
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2800(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;->this$1:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    #getter for: Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->access$2800(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2210
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
