.class public Lcom/andrew/apollo/activities/AudioPlayerHolder;
.super Landroid/support/v4/app/FragmentActivity;
.source "AudioPlayerHolder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

.field private mToken:Lcom/andrew/apollo/service/ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 119
    new-instance v0, Lcom/andrew/apollo/activities/AudioPlayerHolder$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder$1;-><init>(Lcom/andrew/apollo/activities/AudioPlayerHolder;)V

    iput-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initActionBar()V
    .locals 8

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showUpTitleOnly(Landroid/app/ActionBar;)V

    .line 240
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_title"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, titleId:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "up"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, upId:I
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    .local v0, actionBarTitle:Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 247
    .local v1, actionBarUp:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const-string v5, "action_bar_background"

    invoke-static {p0, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setActionBarBackground(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 248
    const-string v4, "action_bar_title_color"

    invoke-static {p0, v0, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 249
    const-string v4, "action_bar_up"

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 250
    return-void
.end method

.method private initColorstrip()V
    .locals 3

    .prologue
    .line 305
    const v1, 0x7f0e001a

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 306
    .local v0, mColorstrip:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 307
    const-string v1, "colorstrip"

    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private shareCurrentTrack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 261
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v1, shareIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, currentTrackMessage:Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-object v0
.end method


# virtual methods
.method public initPager()V
    .locals 5

    .prologue
    .line 280
    new-instance v2, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "_id"

    const-wide/16 v3, -0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    iget-object v2, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    new-instance v3, Lcom/andrew/apollo/list/fragments/TracksFragment;

    invoke-direct {v3, v0}, Lcom/andrew/apollo/list/fragments/TracksFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 286
    iget-object v2, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    new-instance v3, Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/AudioPlayerFragment;-><init>()V

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 289
    const v2, 0x7f0e000a

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 290
    .local v1, mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 291
    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 292
    iget-object v2, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 293
    iget-object v2, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 297
    const-string v2, "viewpager"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 298
    const-string v2, "viewpager_margin"

    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setMarginDrawable(Landroid/content/Context;Landroid/support/v4/view/ViewPager;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/andrew/apollo/utils/ThemeUtils;->overflowLight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->setTheme(I)V

    .line 75
    :goto_0
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->setRequestedOrientation(I)V

    .line 79
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->setVolumeControlStream(I)V

    .line 82
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->initColorstrip()V

    .line 88
    invoke-direct {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->initActionBar()V

    .line 91
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->initPager()V

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    return-void

    .line 72
    :cond_1
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    const v1, 0x7f0b0001

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 157
    const v1, 0x7f0b0002

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 161
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/PagerAdapter;->refresh()V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 233
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 188
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    const-class v1, Lcom/andrew/apollo/activities/MusicLibrary;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->finish()V

    goto :goto_0

    .line 196
    :sswitch_1
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->toggleFavorite()V

    .line 197
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->invalidateOptionsMenu()V

    goto :goto_0

    .line 201
    :sswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->onSearchRequested()Z

    goto :goto_0

    .line 205
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.andrew.apollo.ADD_TO_PLAYLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 207
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 208
    const-string v2, "playlistlist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0, v4}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 219
    :sswitch_5
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->shopFor(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :sswitch_6
    invoke-direct {p0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->shareCurrentTrack()Ljava/lang/String;

    goto :goto_0

    .line 227
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x102002c -> :sswitch_0
        0x7f0e0064 -> :sswitch_7
        0x7f0e0067 -> :sswitch_3
        0x7f0e0068 -> :sswitch_4
        0x7f0e0069 -> :sswitch_5
        0x7f0e006a -> :sswitch_6
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    .line 167
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    .local v0, favorite:Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 169
    .local v1, search:Landroid/view/MenuItem;
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 170
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->isFavorite(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const v2, 0x7f020006

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    :cond_0
    :goto_0
    const-string v2, "apollo_search"

    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setActionBarItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 173
    :cond_1
    const v2, 0x7f020005

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 175
    const-string v2, "apollo_favorite_normal"

    invoke-static {p0, v0, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setActionBarItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 108
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 109
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 131
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 139
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 151
    return-void
.end method
