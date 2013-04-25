.class Lcom/andrew/apollo/service/ApolloService$1;
.super Landroid/os/Handler;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/andrew/apollo/service/ApolloService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 264
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x3e4ccccd

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    .line 271
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$200(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 274
    :cond_1
    iput v6, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    goto :goto_1

    .line 279
    :pswitch_1
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    .line 280
    iget v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :goto_2
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$200(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 283
    :cond_2
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    goto :goto_2

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$300(Lcom/andrew/apollo/service/ApolloService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, v3}, Lcom/andrew/apollo/service/ApolloService;->gotoNext(Z)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #calls: Lcom/andrew/apollo/service/ApolloService;->openCurrentAndNext()V
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$400(Lcom/andrew/apollo/service/ApolloService;)V

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$500(Lcom/andrew/apollo/service/ApolloService;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$600(Lcom/andrew/apollo/service/ApolloService;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mNextPlayPos:I
    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService;->access$500(Lcom/andrew/apollo/service/ApolloService;)I

    move-result v1

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I
    invoke-static {v0, v1}, Lcom/andrew/apollo/service/ApolloService;->access$702(Lcom/andrew/apollo/service/ApolloService;I)I

    .line 301
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$800(Lcom/andrew/apollo/service/ApolloService;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$800(Lcom/andrew/apollo/service/ApolloService;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 303
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const/4 v1, 0x0

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/andrew/apollo/service/ApolloService;->access$802(Lcom/andrew/apollo/service/ApolloService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPlayList:[J
    invoke-static {v2}, Lcom/andrew/apollo/service/ApolloService;->access$600(Lcom/andrew/apollo/service/ApolloService;)[J

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPlayPos:I
    invoke-static {v3}, Lcom/andrew/apollo/service/ApolloService;->access$700(Lcom/andrew/apollo/service/ApolloService;)I

    move-result v3

    aget-wide v2, v2, v3

    #calls: Lcom/andrew/apollo/service/ApolloService;->getCursorForId(J)Landroid/database/Cursor;
    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/service/ApolloService;->access$900(Lcom/andrew/apollo/service/ApolloService;J)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/andrew/apollo/service/ApolloService;->access$802(Lcom/andrew/apollo/service/ApolloService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 306
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const-string v1, "com.andrew.apollo.metachanged"

    #calls: Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/andrew/apollo/service/ApolloService;->access$1000(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #calls: Lcom/andrew/apollo/service/ApolloService;->updateNotification()V
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$1100(Lcom/andrew/apollo/service/ApolloService;)V

    .line 308
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #calls: Lcom/andrew/apollo/service/ApolloService;->setNextTrack()V
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$1200(Lcom/andrew/apollo/service/ApolloService;)V

    goto/16 :goto_0

    .line 312
    :pswitch_4
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mRepeatMode:I
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$1300(Lcom/andrew/apollo/service/ApolloService;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 313
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    .line 314
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto/16 :goto_0

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/service/ApolloService;->gotoNext(Z)V

    goto/16 :goto_0

    .line 320
    :pswitch_5
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$1400(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 327
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 359
    :pswitch_7
    const-string v0, "MediaPlaybackService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 329
    :pswitch_8
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/andrew/apollo/service/ApolloService;->access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    goto/16 :goto_0

    .line 336
    :pswitch_9
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 340
    :pswitch_a
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v3}, Lcom/andrew/apollo/service/ApolloService;->access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z

    .line 344
    :cond_7
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    goto/16 :goto_0

    .line 347
    :pswitch_b
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$1500(Lcom/andrew/apollo/service/ApolloService;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 349
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/andrew/apollo/service/ApolloService;->access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    .line 351
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mPlayer:Lcom/andrew/apollo/service/ApolloService$MultiPlayer;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$200(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/service/ApolloService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/service/ApolloService$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setVolume(F)V

    .line 352
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v0}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto/16 :goto_0

    .line 354
    :cond_8
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$1;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 327
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
