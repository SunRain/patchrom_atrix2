.class Lcom/andrew/apollo/service/ApolloService$MultiPlayer;
.super Ljava/lang/Object;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentMediaPlayer:Landroid/media/MediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mNextMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/andrew/apollo/service/ApolloService;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 2
    .parameter

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 2096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z

    .line 2185
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$1;-><init>(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2207
    new-instance v0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer$2;-><init>(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2099
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2100
    return-void
.end method

.method static synthetic access$2600(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/andrew/apollo/service/ApolloService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2089
    iput-boolean p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method private setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z
    .locals 5
    .parameter "player"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 2111
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 2112
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2113
    const-string v3, "content://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2114
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2118
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2119
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2125
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2126
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2127
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2128
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2129
    const-string v2, "android.media.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2130
    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v2, v1}, Lcom/andrew/apollo/service/ApolloService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2131
    const/4 v2, 0x1

    .end local v1           #i:Landroid/content/Intent;
    :goto_1
    return v2

    .line 2116
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    .local v0, ex:Ljava/io/IOException;
    goto :goto_1

    .line 2122
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2123
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2157
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2179
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->stop()V

    .line 2174
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2175
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2242
    return-wide p1
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 2251
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z

    .line 2104
    iget-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 2105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setNextDataSource(Ljava/lang/String;)V

    .line 2107
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 2183
    return-void
.end method

.method public setNextDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 2135
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 2136
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2138
    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 2140
    :cond_0
    if-nez p1, :cond_1

    .line 2154
    :goto_0
    return-void

    .line 2143
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 2144
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2145
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 2146
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->setDataSourceImpl(Landroid/media/MediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2147
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2151
    :cond_2
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2152
    iput-object v3, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2247
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2162
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/service/ApolloService$MultiPlayer;->mIsInitialized:Z

    .line 2167
    return-void
.end method
