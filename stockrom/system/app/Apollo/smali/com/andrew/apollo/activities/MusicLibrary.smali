.class public Lcom/andrew/apollo/activities/MusicLibrary;
.super Landroid/support/v4/app/FragmentActivity;
.source "MusicLibrary.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mToken:Lcom/andrew/apollo/service/ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initBottomActionBar()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/MusicLibrary;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 163
    .local v0, pagerAdatper:Lcom/andrew/apollo/adapters/PagerAdapter;
    new-instance v2, Lcom/andrew/apollo/BottomActionBarFragment;

    invoke-direct {v2}, Lcom/andrew/apollo/BottomActionBarFragment;-><init>()V

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 164
    new-instance v2, Lcom/andrew/apollo/BottomActionBarControlsFragment;

    invoke-direct {v2}, Lcom/andrew/apollo/BottomActionBarControlsFragment;-><init>()V

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 165
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/MusicLibrary;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 166
    .local v1, viewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 167
    return-void
.end method


# virtual methods
.method public initPager()V
    .locals 6

    .prologue
    .line 110
    new-instance v1, Lcom/andrew/apollo/adapters/PagerAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/activities/MusicLibrary;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 112
    .local v1, mPagerAdapter:Lcom/andrew/apollo/adapters/PagerAdapter;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "_id"

    const-wide/16 v4, -0x6

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    new-instance v3, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;

    invoke-direct {v3, v0}, Lcom/andrew/apollo/list/fragments/RecentlyAddedFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 118
    new-instance v3, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;-><init>()V

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 120
    new-instance v3, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;-><init>()V

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 122
    new-instance v3, Lcom/andrew/apollo/list/fragments/TracksFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/list/fragments/TracksFragment;-><init>()V

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 124
    new-instance v3, Lcom/andrew/apollo/list/fragments/PlaylistsFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/list/fragments/PlaylistsFragment;-><init>()V

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 126
    new-instance v3, Lcom/andrew/apollo/list/fragments/GenresFragment;

    invoke-direct {v3}, Lcom/andrew/apollo/list/fragments/GenresFragment;-><init>()V

    invoke-virtual {v1, v3}, Lcom/andrew/apollo/adapters/PagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 129
    const v3, 0x7f0e000a

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/activities/MusicLibrary;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 130
    .local v2, mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/MusicLibrary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 131
    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 132
    invoke-virtual {v1}, Lcom/andrew/apollo/adapters/PagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 134
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/MusicLibrary;->initScrollableTabs(Landroid/support/v4/view/ViewPager;)V

    .line 140
    const-string v3, "viewpager"

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 141
    const-string v3, "viewpager_margin"

    invoke-static {p0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->setMarginDrawable(Landroid/content/Context;Landroid/support/v4/view/ViewPager;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public initScrollableTabs(Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .parameter "mViewPager"

    .prologue
    .line 148
    const v2, 0x7f0e0045

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/activities/MusicLibrary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;

    .line 149
    .local v0, mScrollingTabs:Lcom/andrew/apollo/ui/widgets/ScrollableTabView;
    new-instance v1, Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 150
    .local v1, mScrollingTabsAdapter:Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;
    invoke-virtual {v0, v1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->setAdapter(Lcom/andrew/apollo/adapters/TabAdapter;)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 154
    const-string v2, "scrollable_tab_background"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/andrew/apollo/utils/ThemeUtils;->initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/MusicLibrary;->setRequestedOrientation(I)V

    .line 58
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/MusicLibrary;->requestWindowFeature(I)Z

    .line 61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/MusicLibrary;->setVolumeControlStream(I)V

    .line 64
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/activities/MusicLibrary;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/MusicLibrary;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 70
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/MusicLibrary;->initPager()V

    .line 73
    invoke-direct {p0}, Lcom/andrew/apollo/activities/MusicLibrary;->initBottomActionBar()V

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 79
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 85
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 90
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/activities/MusicLibrary;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 95
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/andrew/apollo/activities/MusicLibrary;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 103
    return-void
.end method
