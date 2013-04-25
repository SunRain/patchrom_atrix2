.class public Lcom/android/settings/inputmethod/StylusGestures;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StylusGestures.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableGestures:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwipeDouble:Landroid/preference/ListPreference;

.field private mSwipeDown:Landroid/preference/ListPreference;

.field private mSwipeLeft:Landroid/preference/ListPreference;

.field private mSwipeLong:Landroid/preference/ListPreference;

.field private mSwipeRight:Landroid/preference/ListPreference;

.field private mSwipeUp:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 16
    .parameter "pref"
    .parameter "packageName"

    .prologue
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/StylusGestures;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 200
    .local v10, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 202
    .local v13, resources:Landroid/content/res/Resources;
    const v14, 0x7f07009a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, actionNames:[Ljava/lang/String;
    const v14, 0x7f07009b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, actionValues:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v4, entryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v5, entryListValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 211
    .local v11, prefMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/4 v14, 0x0

    invoke-virtual {v10, v7, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 216
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v12, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 218
    .local v9, pkgName:Ljava/lang/String;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, appName:Ljava/lang/String;
    invoke-interface {v11, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    .end local v3           #appName:Ljava/lang/String;
    .end local v9           #pkgName:Ljava/lang/String;
    .end local v12           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5, v4}, Lcom/android/settings/inputmethod/StylusGestures;->getSortedListsUsingMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 223
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 225
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 231
    iget-object v4, p0, Lcom/android/settings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 234
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, applicationName:Ljava/lang/String;
    return-object v1

    .line 235
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 236
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 238
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSortedListsUsingMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter "map"
    .parameter "list1"
    .parameter "list2"

    .prologue
    .line 244
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 245
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method private mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 165
    iget-object v4, p0, Lcom/android/settings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 167
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x7f07009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, actionNames:[Ljava/lang/String;
    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, actionValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 172
    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    aget-object v4, v0, v2

    .line 176
    :goto_1
    return-object v4

    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 4
    .parameter "pref"
    .parameter "packageName"

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 196
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/StylusGestures;->mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/StylusGestures;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, appName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/StylusGestures;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/StylusGestures;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    .line 78
    const-string v1, "enable_spen"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mEnableGestures:Landroid/preference/CheckBoxPreference;

    .line 79
    iget-object v4, p0, Lcom/android/settings/inputmethod/StylusGestures;->mEnableGestures:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "enable_stylus_gestures"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    const-string v1, "gestures_left"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    .line 83
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_left_swipe"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    const-string v1, "gestures_right"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    .line 89
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_right_swipe"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    const-string v1, "gestures_up"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    .line 95
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_up_swipe"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v1, "gestures_down"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    .line 101
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_down_swipe"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    const-string v1, "gestures_long"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    .line 107
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_long_press"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    const-string v1, "gestures_double"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    .line 113
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_double_tap"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    return-void

    .end local v0           #packageName:Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 79
    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_left_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_right_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_up_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_down_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 152
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_long_press"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gestures_double_tap"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    iget-object v1, p0, Lcom/android/settings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/settings/inputmethod/StylusGestures;->mEnableGestures:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/settings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "enable_stylus_gestures"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_1
    return v1

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method
