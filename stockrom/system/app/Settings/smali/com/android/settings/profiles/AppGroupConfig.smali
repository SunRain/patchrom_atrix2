.class public Lcom/android/settings/profiles/AppGroupConfig;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;,
        Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;,
        Lcom/android/settings/profiles/AppGroupConfig$PackageItem;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAppAdapter:Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNamePreference:Lcom/android/settings/profiles/NamePreference;

.field private mNotificationGroup:Landroid/app/NotificationGroup;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageToDelete:Ljava/lang/String;

.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "AppGroupConfig"

    sput-object v0, Lcom/android/settings/profiles/AppGroupConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/AppGroupConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->updatePackages()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/AppGroupConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->doDelete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/profiles/AppGroupConfig;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/profiles/AppGroupConfig;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/profiles/AppGroupConfig;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/AppGroupConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addNewApp()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/AppGroupConfig;->showDialog(I)V

    .line 240
    return-void
.end method

.method private deleteAppFromGroup(Lcom/android/settings/profiles/AppGroupConfig$PackageItem;)V
    .locals 2
    .parameter "selectedGroup"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p1, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->updatePackages()V

    .line 201
    :cond_0
    return-void
.end method

.method private deleteNotificationGroup()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/AppGroupConfig;->showDialog(I)V

    .line 249
    return-void
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->updatePackages()V

    .line 323
    return-void
.end method

.method private removeApp(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/AppGroupConfig;->showDialog(I)V

    .line 245
    return-void
.end method

.method private updatePackages()V
    .locals 14

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 148
    .local v10, prefSet:Landroid/preference/PreferenceScreen;
    const-string v11, "general_section"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 149
    .local v3, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 153
    new-instance v11, Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v13}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/settings/profiles/NamePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    .line 154
    iget-object v11, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {v11, p0}, Lcom/android/settings/profiles/NamePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v11, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_0
    const-string v11, "applications_list"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 159
    .local v0, applicationsList:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 161
    iget-object v11, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v11}, Landroid/app/NotificationGroup;->getPackages()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v8, v1, v5

    .line 162
    .local v8, pkg:Ljava/lang/String;
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 164
    .local v9, pref:Landroid/preference/Preference;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 165
    .local v4, group:Landroid/content/pm/PackageInfo;
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 166
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 168
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 170
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 171
    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v4           #group:Landroid/content/pm/PackageInfo;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #pkg:Ljava/lang/String;
    .end local v9           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 187
    .local v0, aMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/android/settings/profiles/AppGroupConfig;->mListView:Landroid/widget/ListView;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;

    .line 188
    .local v1, selectedGroup:Lcom/android/settings/profiles/AppGroupConfig$PackageItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 190
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/profiles/AppGroupConfig;->deleteAppFromGroup(Lcom/android/settings/profiles/AppGroupConfig$PackageItem;)V

    .line 191
    const/4 v2, 0x1

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b07a9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileManager;

    iput-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 96
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/AppGroupConfig;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "NotificationGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    iput-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mInstalledPackages:Ljava/util/List;

    .line 103
    new-instance v1, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v2, p0, Lcom/android/settings/profiles/AppGroupConfig;->mInstalledPackages:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;-><init>(Lcom/android/settings/profiles/AppGroupConfig;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mAppAdapter:Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;

    .line 104
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mAppAdapter:Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;

    invoke-virtual {v1}, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->update()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->updatePackages()V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/AppGroupConfig;->setHasOptionsMenu(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v1, 0x7f0b07a9

    const/4 v0, 0x0

    .line 181
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 182
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f0b07a9

    const v6, 0x1040013

    const v5, 0x1040009

    const v4, 0x1010355

    .line 253
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 257
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 258
    .local v2, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/profiles/AppGroupConfig;->mAppAdapter:Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    const v3, 0x7f0b07db

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 262
    .restart local v1       #dialog:Landroid/app/Dialog;
    new-instance v3, Lcom/android/settings/profiles/AppGroupConfig$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/profiles/AppGroupConfig$1;-><init>(Lcom/android/settings/profiles/AppGroupConfig;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 273
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v2           #list:Landroid/widget/ListView;
    :pswitch_1
    const v3, 0x7f0b07b9

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 276
    new-instance v3, Lcom/android/settings/profiles/AppGroupConfig$2;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/AppGroupConfig$2;-><init>(Lcom/android/settings/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    new-instance v3, Lcom/android/settings/profiles/AppGroupConfig$3;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/AppGroupConfig$3;-><init>(Lcom/android/settings/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 290
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 292
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_2
    const v3, 0x7f0b07d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 295
    new-instance v3, Lcom/android/settings/profiles/AppGroupConfig$4;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/AppGroupConfig$4;-><init>(Lcom/android/settings/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    new-instance v3, Lcom/android/settings/profiles/AppGroupConfig$5;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/AppGroupConfig$5;-><init>(Lcom/android/settings/profiles/AppGroupConfig;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 311
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 114
    const/4 v2, 0x1

    const v3, 0x7f0b07a9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020056

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 116
    .local v1, delete:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 119
    const/4 v2, 0x2

    const v3, 0x7f0b07a8

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020050

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x61

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    .local v0, addApplication:Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->deleteNotificationGroup()V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig;->addNewApp()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 208
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 209
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 213
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    if-ne p1, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {v1}, Lcom/android/settings/profiles/NamePreference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v1, v0}, Landroid/app/ProfileManager;->notificationGroupExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1, v0}, Landroid/app/NotificationGroup;->setName(Ljava/lang/String;)V

    .line 224
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 219
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    iget-object v2, p0, Lcom/android/settings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/profiles/NamePreference;->setName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/profiles/AppGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b07b5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 229
    instance-of v1, p2, Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, deleteItem:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/profiles/AppGroupConfig;->removeApp(Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x1

    .line 234
    .end local v0           #deleteItem:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
