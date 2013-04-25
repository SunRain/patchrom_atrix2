.class public Lcom/andrew/apollo/activities/TracksBrowser;
.super Landroid/support/v4/app/FragmentActivity;
.source "TracksBrowser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private intent:Landroid/content/Intent;

.field private final mHits:[J

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/andrew/apollo/service/ServiceToken;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J

    .line 133
    new-instance v0, Lcom/andrew/apollo/activities/TracksBrowser$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/activities/TracksBrowser$1;-><init>(Lcom/andrew/apollo/activities/TracksBrowser;)V

    iput-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/activities/TracksBrowser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J

    return-object v0
.end method

.method private initActionBar()V
    .locals 8

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/utils/ApolloUtils;->showUpTitleOnly(Landroid/app/ActionBar;)V

    .line 220
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_title"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, titleId:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "up"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, upId:I
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    .local v0, actionBarTitle:Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 227
    .local v1, actionBarUp:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const-string v5, "action_bar_background"

    invoke-static {p0, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setActionBarBackground(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 228
    const-string v4, "action_bar_title_color"

    invoke-static {p0, v0, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 229
    const-string v4, "action_bar_up"

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method private initBottomActionBar()V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 294
    .local v0, pagerAdatper:Lcom/andrew/apollo/adapters/PagerAdapter;
    new-instance v2, Lcom/andrew/apollo/BottomActionBarFragment;

    invoke-direct {v2}, Lcom/andrew/apollo/BottomActionBarFragment;-><init>()V

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 295
    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment;

    invoke-direct {v2}, Lcom/andrew/apollo/BottomActionBarControlsFragment;-><init>()V

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 296
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 297
    .local v1, viewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 298
    return-void
.end method

.method private initColorstrip()V
    .locals 3

    .prologue
    .line 208
    const v1, 0x7f0e001a

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 209
    .local v0, mColorstrip:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 210
    const-string v1, "colorstrip"

    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private initPager()V
    .locals 4

    .prologue
    .line 270
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 271
    .local v0, mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;
    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/andrew/apollo/utils/ApolloUtils;->isArtist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;

    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 275
    :cond_0
    new-instance v2, Lcom/andrew/apollo/list/fragments/TracksFragment;

    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Lcom/andrew/apollo/list/fragments/TracksFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 278
    const v2, 0x7f0e000a

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 279
    .local v1, mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 280
    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 281
    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 282
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 285
    const-string v2, "viewpager"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 286
    const-string v2, "viewpager_margin"

    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setMarginDrawable(Landroid/content/Context;Landroid/support/v4/view/ViewPager;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private initUpperHalf()V
    .locals 6

    .prologue
    const/high16 v5, 0x7f07

    const/4 v4, 0x0

    .line 238
    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/andrew/apollo/utils/ApolloUtils;->isArtist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/andrew/apollo/utils/ApolloUtils;->isAlbum(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->setAlbumImage()V

    .line 245
    const v3, 0x7f0e0041

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    .local v1, mArtistName:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 251
    const v3, 0x7f0e0044

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    .local v0, mAlbumName:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 256
    const v3, 0x7f0e0042

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 258
    .local v2, mSecondHalfContainer:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 261
    .end local v0           #mAlbumName:Landroid/widget/TextView;
    .end local v1           #mArtistName:Landroid/widget/TextView;
    .end local v2           #mSecondHalfContainer:Landroid/widget/RelativeLayout;
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->setPromoImage()V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 7

    .prologue
    const/high16 v6, 0x7f0b

    const/4 v5, 0x1

    .line 428
    const-string v3, "vnd.android.cursor.dir/playlist"

    iget-object v4, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 430
    .local v0, id:J
    long-to-int v3, v0

    packed-switch v3, :pswitch_data_0

    .line 438
    :pswitch_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 439
    invoke-virtual {p0, v6}, Lcom/andrew/apollo/activities/TracksBrowser;->setTitle(I)V

    .line 458
    .end local v0           #id:J
    :goto_0
    return-void

    .line 432
    .restart local v0       #id:J
    :pswitch_1
    const v3, 0x7f0b000a

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/TracksBrowser;->setTitle(I)V

    goto :goto_0

    .line 435
    :pswitch_2
    const v3, 0x7f0b0034

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/TracksBrowser;->setTitle(I)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->getPlaylistName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, name:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/TracksBrowser;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 444
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    const-string v3, "vnd.android.cursor.dir/artists"

    iget-object v4, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 446
    .restart local v0       #id:J
    invoke-static {p0, v0, v1, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_1

    .line 447
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    const-string v3, "vnd.android.cursor.dir/albums"

    iget-object v4, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 449
    .restart local v0       #id:J
    invoke-static {p0, v0, v1, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_1

    .line 450
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    const-string v3, "vnd.android.cursor.dir/genre"

    iget-object v4, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 451
    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 452
    .restart local v0       #id:J
    invoke-static {p0, v0, v1, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getGenreName(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/andrew/apollo/utils/MusicUtils;->parseGenreName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_1

    .line 454
    .end local v0           #id:J
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v6}, Lcom/andrew/apollo/activities/TracksBrowser;->setTitle(I)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tracksBrowser(J)V
    .locals 3
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.dir/artists"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const-class v1, Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "genres"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "genres"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlaylist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser;->setRequestedOrientation(I)V

    .line 89
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser;->setVolumeControlStream(I)V

    .line 92
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser;->setContentView(I)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/activities/TracksBrowser;->whatBundle(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->initColorstrip()V

    .line 101
    invoke-direct {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->initActionBar()V

    .line 104
    invoke-direct {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->initUpperHalf()V

    .line 107
    invoke-direct {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->initPager()V

    .line 110
    invoke-direct {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->initBottomActionBar()V

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 170
    :pswitch_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 171
    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v3, "upStartsAlbumActivity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getArtist()Ljava/lang/String;

    move-result-object v2

    const-string v3, "artistid"

    invoke-static {v2, v3, p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getArtistId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 175
    .local v0, artistID:J
    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/andrew/apollo/utils/ApolloUtils;->isAlbum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/activities/TracksBrowser;->tracksBrowser(J)V

    .line 178
    .end local v0           #artistID:J
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outcicle"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 122
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 128
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 146
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/activities/TracksBrowser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    invoke-direct {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->setTitle()V

    .line 153
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 154
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 164
    return-void
.end method

.method public setAlbumImage()V
    .locals 2

    .prologue
    .line 390
    const v1, 0x7f0e0043

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 392
    .local v0, mSecondHalfImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/andrew/apollo/activities/TracksBrowser$4;

    invoke-direct {v1, p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser$4;-><init>(Lcom/andrew/apollo/activities/TracksBrowser;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public setArtistImage()V
    .locals 2

    .prologue
    .line 354
    const v1, 0x7f0e0040

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 356
    .local v0, mFirstHalfImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/andrew/apollo/activities/TracksBrowser$2;

    invoke-direct {v1, p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser$2;-><init>(Lcom/andrew/apollo/activities/TracksBrowser;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 369
    new-instance v1, Lcom/andrew/apollo/activities/TracksBrowser$3;

    invoke-direct {v1, p0, v0}, Lcom/andrew/apollo/activities/TracksBrowser$3;-><init>(Lcom/andrew/apollo/activities/TracksBrowser;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    return-void
.end method

.method public setPromoImage()V
    .locals 4

    .prologue
    .line 342
    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/TracksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 344
    .local v1, mFirstHalfImage:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    .local v0, header:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->runnableBackground(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 346
    return-void
.end method

.method public whatBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/TracksBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->intent:Landroid/content/Intent;

    .line 191
    if-eqz p1, :cond_3

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    .line 192
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "action"

    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "mimetype"

    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->bundle:Landroid/os/Bundle;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->mimeType:Ljava/lang/String;

    .line 202
    return-void

    .line 191
    .restart local p1
    :cond_3
    iget-object v0, p0, Lcom/andrew/apollo/activities/TracksBrowser;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0
.end method
