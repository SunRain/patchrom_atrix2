.class Lcom/andrew/apollo/AudioPlayerFragment$11;
.super Landroid/os/Handler;
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
    .line 475
    iput-object p1, p0, Lcom/andrew/apollo/AudioPlayerFragment$11;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 478
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 480
    :pswitch_0
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment$11;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J
    invoke-static {v2}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1100(Lcom/andrew/apollo/AudioPlayerFragment;)J

    move-result-wide v0

    .line 481
    .local v0, next:J
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment$11;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->queueNextRefresh(J)V
    invoke-static {v2, v0, v1}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1200(Lcom/andrew/apollo/AudioPlayerFragment;J)V

    goto :goto_0

    .line 484
    .end local v0           #next:J
    :pswitch_1
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment$11;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->updateMusicInfo()V
    invoke-static {v2}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1300(Lcom/andrew/apollo/AudioPlayerFragment;)V

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
