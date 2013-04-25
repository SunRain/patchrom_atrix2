.class public Lcom/andrew/apollo/BottomActionBarControlsFragment;
.super Landroid/support/v4/app/Fragment;
.source "BottomActionBarControlsFragment.java"


# instance fields
.field private mDivider:Landroid/widget/ImageView;

.field private mNext:Landroid/widget/ImageButton;

.field private mPlay:Landroid/widget/ImageButton;

.field private mPrev:Landroid/widget/ImageButton;

.field private mRepeat:Landroid/widget/ImageButton;

.field private mShuffle:Landroid/widget/ImageButton;

.field private final mStatusListener:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 116
    new-instance v0, Lcom/andrew/apollo/BottomActionBarControlsFragment$6;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment$6;-><init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$100(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->doPauseResume()V

    return-void
.end method

.method static synthetic access$200(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$300(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$500(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setRepeatButtonImage()V

    return-void
.end method

.method private cycleRepeat()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 143
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 147
    :cond_0
    :try_start_0
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v1

    .line 148
    .local v1, mode:I
    if-nez v1, :cond_1

    .line 149
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 150
    const v2, 0x7f0b0016

    iget-object v3, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V

    .line 162
    :goto_1
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1           #mode:I
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #mode:I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 152
    :try_start_1
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 153
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 155
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setShuffleButtonImage()V

    .line 157
    :cond_2
    const v2, 0x7f0b0015

    iget-object v3, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V

    goto :goto_1

    .line 159
    :cond_3
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 160
    const v2, 0x7f0b0017

    iget-object v3, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doPauseResume()V
    .locals 2

    .prologue
    .line 174
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->pause()V

    .line 181
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setPauseButtonImage()V

    .line 185
    :goto_1
    return-void

    .line 178
    :cond_1
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setPauseButtonImage()V
    .locals 4

    .prologue
    .line 269
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPlay:Landroid/widget/ImageButton;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 272
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPlay:Landroid/widget/ImageButton;

    const-string v3, "apollo_pause"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPlay:Landroid/widget/ImageButton;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 276
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPlay:Landroid/widget/ImageButton;

    const-string v3, "apollo_play"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 4

    .prologue
    .line 218
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 229
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 231
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mRepeat:Landroid/widget/ImageButton;

    const-string v3, "apollo_repeat_normal"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
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
    .line 243
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 256
    :pswitch_0
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 250
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mShuffle:Landroid/widget/ImageButton;

    const-string v3, "apollo_shuffle_normal"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
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

    .line 191
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 195
    :cond_0
    :try_start_0
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v1

    .line 196
    .local v1, shuffle:I
    if-nez v1, :cond_3

    .line 197
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 198
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 199
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 200
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setRepeatButtonImage()V

    .line 202
    :cond_1
    const v2, 0x7f0b0019

    iget-object v3, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V

    .line 208
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->setShuffleButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1           #shuffle:I
    :catch_0
    move-exception v0

    .line 210
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #shuffle:I
    :cond_3
    if-eq v1, v4, :cond_4

    if-ne v1, v3, :cond_2

    .line 205
    :cond_4
    :try_start_1
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 206
    const v2, 0x7f0b0018

    iget-object v3, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showToast(ILandroid/widget/Toast;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mRepeat:Landroid/widget/ImageButton;

    .line 44
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mRepeat:Landroid/widget/ImageButton;

    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment$1;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment$1;-><init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0e0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPrev:Landroid/widget/ImageButton;

    .line 53
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPrev:Landroid/widget/ImageButton;

    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment$2;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment$2;-><init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPlay:Landroid/widget/ImageButton;

    .line 73
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPlay:Landroid/widget/ImageButton;

    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment$3;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment$3;-><init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mNext:Landroid/widget/ImageButton;

    .line 82
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mNext:Landroid/widget/ImageButton;

    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment$4;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment$4;-><init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mShuffle:Landroid/widget/ImageButton;

    .line 97
    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mShuffle:Landroid/widget/ImageButton;

    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment$5;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment$5;-><init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mDivider:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mPrev:Landroid/widget/ImageButton;

    const-string v3, "apollo_previous"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mNext:Landroid/widget/ImageButton;

    const-string v3, "apollo_next"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mDivider:Landroid/widget/ImageView;

    const-string v3, "bottom_action_bar_info_divider"

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 136
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method
