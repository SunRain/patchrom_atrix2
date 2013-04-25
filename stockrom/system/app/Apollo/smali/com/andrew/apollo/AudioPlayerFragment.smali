.class public Lcom/andrew/apollo/AudioPlayerFragment;
.super Landroid/support/v4/app/Fragment;
.source "AudioPlayerFragment.java"


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:J

.field private final mFfwdListener:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;

.field private mFromTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastSeekEventTime:J

.field private mNext:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

.field private mPlay:Landroid/widget/ImageButton;

.field private mPosOverride:J

.field private mPrev:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

.field private mProgress:Landroid/widget/SeekBar;

.field private mRepeat:Landroid/widget/ImageButton;

.field private final mRewListener:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShuffle:Landroid/widget/ImageButton;

.field private mStartSeekPos:J

.field private final mStatusListener:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->paused:Z

    .line 187
    new-instance v0, Lcom/andrew/apollo/AudioPlayerFragment$8;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/AudioPlayerFragment$8;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/andrew/apollo/AudioPlayerFragment$9;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/AudioPlayerFragment$9;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRewListener:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;

    .line 280
    new-instance v0, Lcom/andrew/apollo/AudioPlayerFragment$10;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/AudioPlayerFragment$10;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mFfwdListener:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;

    .line 475
    new-instance v0, Lcom/andrew/apollo/AudioPlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/AudioPlayerFragment$11;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Lcom/andrew/apollo/AudioPlayerFragment$12;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/AudioPlayerFragment$12;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->tracksBrowser()V

    return-void
.end method

.method static synthetic access$100(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->tracksBrowserArtist()V

    return-void
.end method

.method static synthetic access$1000(Lcom/andrew/apollo/AudioPlayerFragment;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/AudioPlayerFragment;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/andrew/apollo/AudioPlayerFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/andrew/apollo/AudioPlayerFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/AudioPlayerFragment;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->updateMusicInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/andrew/apollo/AudioPlayerFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/andrew/apollo/AudioPlayerFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/andrew/apollo/AudioPlayerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mFromTouch:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/andrew/apollo/AudioPlayerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mFromTouch:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/andrew/apollo/AudioPlayerFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/andrew/apollo/AudioPlayerFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/andrew/apollo/AudioPlayerFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$300(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->doPauseResume()V

    return-void
.end method

.method static synthetic access$400(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$500(Lcom/andrew/apollo/AudioPlayerFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$700(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/andrew/apollo/AudioPlayerFragment;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/AudioPlayerFragment;->scanBackward(IJ)V

    return-void
.end method

.method private cycleRepeat()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 222
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_0

    .line 246
    :goto_0
    return-void

    .line 226
    :cond_0
    :try_start_0
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v1

    .line 227
    .local v1, mode:I
    if-nez v1, :cond_1

    .line 228
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 229
    const v2, 0x7f0b0016

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V

    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v1           #mode:I
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #mode:I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 231
    :try_start_1
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 232
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 234
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setShuffleButtonImage()V

    .line 236
    :cond_2
    const v2, 0x7f0b0015

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V

    goto :goto_1

    .line 238
    :cond_3
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 239
    const v2, 0x7f0b0017

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doPauseResume()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->pause()V

    .line 270
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J

    .line 271
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setPauseButtonImage()V

    .line 275
    :goto_1
    return-void

    .line 267
    :cond_1
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 465
    iget-boolean v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->paused:Z

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private refreshNow()J
    .locals 14

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x3e8

    .line 534
    sget-object v8, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 568
    :goto_0
    return-wide v4

    .line 537
    :cond_0
    :try_start_0
    iget-wide v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    sget-object v8, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v8}, Lcom/andrew/apollo/IApolloService;->position()J

    move-result-wide v2

    .line 538
    .local v2, pos:J
    :goto_1
    const-wide/16 v8, 0x3e8

    rem-long v8, v2, v8

    sub-long v4, v12, v8

    .line 539
    .local v4, remaining:J
    cmp-long v8, v2, v10

    if-ltz v8, :cond_4

    iget-wide v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mDuration:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 540
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    invoke-static {v9, v10, v11}, Lcom/andrew/apollo/utils/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    sget-object v8, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v8}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 543
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f07

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    const-string v10, "audio_player_text_color"

    invoke-static {v8, v9, v10}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 559
    :goto_2
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    mul-long v9, v12, v2

    iget-wide v11, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mDuration:J

    div-long/2addr v9, v11

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    .end local v2           #pos:J
    .end local v4           #remaining:J
    :catch_0
    move-exception v1

    .line 566
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-wide v4, v6

    .line 568
    goto :goto_0

    .line 537
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    goto :goto_1

    .line 549
    .restart local v2       #pos:J
    .restart local v4       #remaining:J
    :cond_2
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 550
    .local v0, col:I
    iget-object v9, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v10, 0x7f07

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    if-ne v0, v8, :cond_3

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f070001

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    const-wide/16 v4, 0x1f4

    .line 556
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    const-string v10, "audio_player_text_color"

    invoke-static {v8, v9, v10}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 550
    :cond_3
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v10, 0x7f07

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    goto :goto_3

    .line 561
    .end local v0           #col:I
    :cond_4
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v8, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private scanBackward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    .line 315
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v5, :cond_0

    .line 351
    :goto_0
    return-void

    .line 318
    :cond_0
    if-nez p1, :cond_1

    .line 319
    :try_start_0
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->position()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    .line 320
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v5, 0x1388

    cmp-long v5, p2, v5

    if-gez v5, :cond_5

    .line 324
    const-wide/16 v5, 0xa

    mul-long/2addr p2, v5

    .line 329
    :goto_1
    :try_start_1
    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    sub-long v3, v5, p2

    .line 330
    .local v3, newpos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 332
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->prev()V

    .line 333
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->duration()J

    move-result-wide v0

    .line 334
    .local v0, duration:J
    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    .line 335
    add-long/2addr v3, v0

    .line 337
    .end local v0           #duration:J
    :cond_2
    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p1, :cond_4

    .line 338
    :cond_3
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5, v3, v4}, Lcom/andrew/apollo/IApolloService;->seek(J)J

    .line 339
    iput-wide p2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J

    .line 341
    :cond_4
    if-ltz p1, :cond_6

    .line 342
    iput-wide v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    .line 346
    :goto_2
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J

    goto :goto_0

    .line 327
    .end local v3           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    const-wide/16 v7, 0x1388

    sub-long v7, p2, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p2, v5, v7

    goto :goto_1

    .line 344
    .restart local v3       #newpos:J
    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v7, 0x1388

    .line 354
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v5, :cond_0

    .line 390
    :goto_0
    return-void

    .line 357
    :cond_0
    if-nez p1, :cond_1

    .line 358
    :try_start_0
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->position()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    .line 359
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 361
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_1
    cmp-long v5, p2, v7

    if-gez v5, :cond_5

    .line 363
    const-wide/16 v5, 0xa

    mul-long/2addr p2, v5

    .line 368
    :goto_1
    :try_start_1
    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    add-long v3, v5, p2

    .line 369
    .local v3, newpos:J
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->duration()J

    move-result-wide v0

    .line 370
    .local v0, duration:J
    cmp-long v5, v3, v0

    if-ltz v5, :cond_2

    .line 372
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->next()V

    .line 373
    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStartSeekPos:J

    .line 374
    sub-long/2addr v3, v0

    .line 376
    :cond_2
    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p1, :cond_4

    .line 377
    :cond_3
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5, v3, v4}, Lcom/andrew/apollo/IApolloService;->seek(J)J

    .line 378
    iput-wide p2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J

    .line 380
    :cond_4
    if-ltz p1, :cond_6

    .line 381
    iput-wide v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J

    .line 385
    :goto_2
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J

    goto :goto_0

    .line 366
    .end local v0           #duration:J
    .end local v3           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    sub-long v7, p2, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p2, v5, v7

    goto :goto_1

    .line 383
    .restart local v0       #duration:J
    .restart local v3       #newpos:J
    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setPauseButtonImage()V
    .locals 4

    .prologue
    .line 447
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPlay:Landroid/widget/ImageButton;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 450
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPlay:Landroid/widget/ImageButton;

    const-string v3, "apollo_pause"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPlay:Landroid/widget/ImageButton;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 454
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPlay:Landroid/widget/ImageButton;

    const-string v3, "apollo_play"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 4

    .prologue
    .line 396
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 399
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 407
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 409
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRepeat:Landroid/widget/ImageButton;

    const-string v3, "apollo_repeat_normal"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .locals 4

    .prologue
    .line 421
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 424
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 434
    :pswitch_0
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 428
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mShuffle:Landroid/widget/ImageButton;

    const-string v3, "apollo_shuffle_normal"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private toggleShuffle()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 291
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v1

    .line 296
    .local v1, shuffle:I
    if-nez v1, :cond_3

    .line 297
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 298
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 299
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 300
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setRepeatButtonImage()V

    .line 302
    :cond_1
    const v2, 0x7f0b0019

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V

    .line 308
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->setShuffleButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v1           #shuffle:I
    :catch_0
    move-exception v0

    .line 310
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #shuffle:I
    :cond_3
    if-eq v1, v4, :cond_4

    if-ne v1, v3, :cond_2

    .line 305
    :cond_4
    :try_start_1
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 306
    const v2, 0x7f0b0018

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private tracksBrowser()V
    .locals 7

    .prologue
    .line 607
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v2

    .line 611
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 612
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.dir/albums"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v5, "artist"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "album"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v0, "_id"

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 619
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 620
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 621
    return-void
.end method

.method private tracksBrowserArtist()V
    .locals 6

    .prologue
    .line 629
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentArtistId()J

    move-result-wide v1

    .line 632
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 633
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.dir/artists"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v4, "artist"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v4, "_id"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 637
    const-string v4, "artistid"

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v0, v1, v2, v4, v5}, Lcom/andrew/apollo/utils/ApolloUtils;->setArtistId(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 641
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 643
    return-void
.end method

.method private updateMusicInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 575
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v3, :cond_0

    .line 599
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, artistName:Ljava/lang/String;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, albumName:Ljava/lang/String;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArtistName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getDuration()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mDuration:J

    .line 585
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-wide v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mDuration:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/andrew/apollo/utils/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const-string v3, "albumimage"

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 588
    new-instance v3, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArt:Landroid/widget/ImageView;

    invoke-direct {v3, v4, v5, v9}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v10

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/LastfmGetAlbumImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 591
    :cond_1
    new-instance v3, Lcom/andrew/apollo/tasks/GetCachedImages;

    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArt:Landroid/widget/ImageView;

    invoke-direct {v3, v4, v9, v5}, Lcom/andrew/apollo/tasks/GetCachedImages;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v9, [Ljava/lang/String;

    aput-object v0, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/tasks/GetCachedImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 595
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTrackName:Landroid/widget/TextView;

    const-string v5, "audio_player_text_color"

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArtistName:Landroid/widget/TextView;

    const-string v5, "audio_player_text_color"

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTotalTime:Landroid/widget/TextView;

    const-string v5, "audio_player_text_color"

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x104

    .line 81
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, root:Landroid/view/View;
    const v2, 0x7f0e0008

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTrackName:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTrackName:Landroid/widget/TextView;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$1;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$1;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v2, 0x7f0e0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArtistName:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArtistName:Landroid/widget/TextView;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$2;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$2;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f0e0001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mTotalTime:Landroid/widget/TextView;

    .line 101
    const/high16 v2, 0x7f0e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mCurrentTime:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0e0007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mAlbumArt:Landroid/widget/ImageView;

    .line 105
    const v2, 0x7f0e0002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRepeat:Landroid/widget/ImageButton;

    .line 106
    const v2, 0x7f0e0003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPrev:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    .line 107
    const v2, 0x7f0e0004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPlay:Landroid/widget/ImageButton;

    .line 108
    const v2, 0x7f0e0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mNext:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    .line 109
    const v2, 0x7f0e0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mShuffle:Landroid/widget/ImageButton;

    .line 111
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRepeat:Landroid/widget/ImageButton;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$3;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$3;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPrev:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mRewListener:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v4, v5}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->setRepeatListener(Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;J)V

    .line 120
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPrev:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$4;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$4;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPlay:Landroid/widget/ImageButton;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$5;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$5;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mNext:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mFfwdListener:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v4, v5}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->setRepeatListener(Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;J)V

    .line 148
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mNext:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$6;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$6;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mShuffle:Landroid/widget/ImageButton;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment$7;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/AudioPlayerFragment$7;-><init>(Lcom/andrew/apollo/AudioPlayerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    .line 171
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    instance-of v2, v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    .line 173
    .local v1, seeker:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    .end local v1           #seeker:Landroid/widget/SeekBar;
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 178
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mPrev:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    const-string v4, "apollo_previous"

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mNext:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    const-string v4, "apollo_next"

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mProgress:Landroid/widget/SeekBar;

    const-string v4, "apollo_seekbar_background"

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setProgessDrawable(Landroid/content/Context;Landroid/widget/SeekBar;Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 213
    iput-boolean v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->paused:Z

    .line 214
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v3, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/AudioPlayerFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-direct {p0}, Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J

    move-result-wide v1

    .line 207
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/andrew/apollo/AudioPlayerFragment;->queueNextRefresh(J)V

    .line 208
    return-void
.end method
