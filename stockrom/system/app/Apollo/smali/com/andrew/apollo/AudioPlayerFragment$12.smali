.class Lcom/andrew/apollo/AudioPlayerFragment$12;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 495
    iput-object p1, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 504
    if-eqz p3, :cond_0

    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v3, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 507
    .local v1, now:J
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #getter for: Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J
    invoke-static {v3}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1400(Lcom/andrew/apollo/AudioPlayerFragment;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 508
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J
    invoke-static {v3, v1, v2}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1402(Lcom/andrew/apollo/AudioPlayerFragment;J)J

    .line 509
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    iget-object v4, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #getter for: Lcom/andrew/apollo/AudioPlayerFragment;->mDuration:J
    invoke-static {v4}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1700(Lcom/andrew/apollo/AudioPlayerFragment;)J

    move-result-wide v4

    int-to-long v6, p2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1602(Lcom/andrew/apollo/AudioPlayerFragment;J)J

    .line 511
    :try_start_0
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    iget-object v4, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #getter for: Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J
    invoke-static {v4}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1600(Lcom/andrew/apollo/AudioPlayerFragment;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/andrew/apollo/IApolloService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_1
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #getter for: Lcom/andrew/apollo/AudioPlayerFragment;->mFromTouch:Z
    invoke-static {v3}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1500(Lcom/andrew/apollo/AudioPlayerFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->refreshNow()J
    invoke-static {v3}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1100(Lcom/andrew/apollo/AudioPlayerFragment;)J

    .line 518
    iget-object v3, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    const-wide/16 v4, -0x1

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1602(Lcom/andrew/apollo/AudioPlayerFragment;J)J

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    const-wide/16 v1, 0x0

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1402(Lcom/andrew/apollo/AudioPlayerFragment;J)J

    .line 499
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    const/4 v1, 0x1

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mFromTouch:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1502(Lcom/andrew/apollo/AudioPlayerFragment;Z)Z

    .line 500
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    const-wide/16 v1, -0x1

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1602(Lcom/andrew/apollo/AudioPlayerFragment;J)J

    .line 526
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$12;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    const/4 v1, 0x0

    #setter for: Lcom/andrew/apollo/AudioPlayerFragment;->mFromTouch:Z
    invoke-static {v0, v1}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1502(Lcom/andrew/apollo/AudioPlayerFragment;Z)Z

    .line 527
    return-void
.end method
