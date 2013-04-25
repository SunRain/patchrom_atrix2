.class Lcom/andrew/apollo/AudioPlayerFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/andrew/apollo/AudioPlayerFragment$8;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$8;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #getter for: Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/AudioPlayerFragment;->access$500(Lcom/andrew/apollo/AudioPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment$8;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #getter for: Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/andrew/apollo/AudioPlayerFragment;->access$500(Lcom/andrew/apollo/AudioPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$8;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->setPauseButtonImage()V
    invoke-static {v0}, Lcom/andrew/apollo/AudioPlayerFragment;->access$600(Lcom/andrew/apollo/AudioPlayerFragment;)V

    .line 193
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$8;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->setShuffleButtonImage()V
    invoke-static {v0}, Lcom/andrew/apollo/AudioPlayerFragment;->access$700(Lcom/andrew/apollo/AudioPlayerFragment;)V

    .line 194
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$8;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->setRepeatButtonImage()V
    invoke-static {v0}, Lcom/andrew/apollo/AudioPlayerFragment;->access$800(Lcom/andrew/apollo/AudioPlayerFragment;)V

    .line 195
    return-void
.end method
