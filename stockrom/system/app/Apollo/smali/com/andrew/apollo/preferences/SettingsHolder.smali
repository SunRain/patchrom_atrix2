.class public Lcom/andrew/apollo/preferences/SettingsHolder;
.super Landroid/preference/PreferenceActivity;
.source "SettingsHolder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/andrew/apollo/service/ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/andrew/apollo/preferences/SettingsHolder$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/preferences/SettingsHolder$1;-><init>(Lcom/andrew/apollo/preferences/SettingsHolder;)V

    iput-object v0, p0, Lcom/andrew/apollo/preferences/SettingsHolder;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    const-string v0, "themepreview"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/preferences/ThemePreview;

    .line 168
    invoke-virtual {v0}, Lcom/andrew/apollo/preferences/ThemePreview;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    const-class v1, Lcom/andrew/apollo/activities/MusicLibrary;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->finish()V

    .line 175
    return-void
.end method

.method public getThemes(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 181
    const-string v2, "https://market.android.com/search?q=ApolloThemes&c=apps&featured=APP_STORE_SEARCH"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, marketIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->finish()V

    .line 186
    return-void
.end method

.method public initActionBar()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030008

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 136
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 137
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v7, 0x7f0b000d

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 138
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 142
    const v6, 0x7f0e0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 143
    .local v1, mAlbumArt:Landroid/widget/ImageView;
    const v6, 0x7f0e0022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 144
    .local v3, mTrackName:Landroid/widget/TextView;
    const v6, 0x7f0e0023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 146
    .local v2, mAlbumName:Landroid/widget/TextView;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "albumimage"

    invoke-static {v6, v7, p0}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    .line 148
    .local v0, aq:Lcom/androidquery/AQuery;
    invoke-virtual {v0, v4}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v6, Lcom/andrew/apollo/preferences/SettingsHolder$2;

    invoke-direct {v6, p0}, Lcom/andrew/apollo/preferences/SettingsHolder$2;-><init>(Lcom/andrew/apollo/preferences/SettingsHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method public initThemeChooser()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 193
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v12, "themePackageName"

    const-string v13, "Apollo"

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, themePackage:Ljava/lang/String;
    const-string v12, "themePackageName"

    invoke-virtual {p0, v12}, Lcom/andrew/apollo/preferences/SettingsHolder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 195
    .local v6, themeLp:Landroid/preference/ListPreference;
    new-instance v12, Lcom/andrew/apollo/preferences/SettingsHolder$3;

    invoke-direct {v12, p0}, Lcom/andrew/apollo/preferences/SettingsHolder$3;-><init>(Lcom/andrew/apollo/preferences/SettingsHolder;)V

    invoke-virtual {v6, v12}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.andrew.apollo.THEMES"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 207
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 208
    .local v10, themes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    new-array v1, v12, [Ljava/lang/String;

    .line 209
    .local v1, entries:[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    new-array v11, v12, [Ljava/lang/String;

    .line 210
    .local v11, values:[Ljava/lang/String;
    const-string v12, "Apollo"

    aput-object v12, v1, v14

    .line 211
    const-string v12, "Apollo"

    aput-object v12, v11, v14

    .line 212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_0

    .line 213
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, appPackageName:Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v12, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, themeName:Ljava/lang/String;
    add-int/lit8 v12, v2, 0x1

    aput-object v7, v1, v12

    .line 216
    add-int/lit8 v12, v2, 0x1

    aput-object v0, v11, v12

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0           #appPackageName:Ljava/lang/String;
    .end local v7           #themeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 220
    const-string v12, "themepreview"

    invoke-virtual {p0, v12}, Lcom/andrew/apollo/preferences/SettingsHolder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/andrew/apollo/preferences/ThemePreview;

    .line 221
    .local v9, themePreview:Lcom/andrew/apollo/preferences/ThemePreview;
    invoke-virtual {v9, v8}, Lcom/andrew/apollo/preferences/ThemePreview;->setTheme(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f050004

    .line 63
    .local v0, preferencesResId:I
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->initThemeChooser()V

    .line 69
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->initActionBar()V

    .line 70
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/SettingsHolder;->finish()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 84
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 85
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 90
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 108
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/service/ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/preferences/SettingsHolder;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "com.andrew.apollo.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.andrew.apollo.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/andrew/apollo/preferences/SettingsHolder;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/andrew/apollo/preferences/SettingsHolder;->mToken:Lcom/andrew/apollo/service/ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/service/ServiceToken;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/preferences/SettingsHolder;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 127
    return-void
.end method
