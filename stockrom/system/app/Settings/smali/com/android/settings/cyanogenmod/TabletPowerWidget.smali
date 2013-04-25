.class public Lcom/android/settings/cyanogenmod/TabletPowerWidget;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TabletPowerWidget.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mPowerWidgets:Ljava/lang/String;


# instance fields
.field private mToggles:[Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mToggles:[Landroid/preference/CheckBoxPreference;

    .line 107
    return-void
.end method

.method private refreshToggles()V
    .locals 5

    .prologue
    .line 68
    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_widget_buttons_tablet"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 70
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 71
    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS_DEFAULT:Ljava/lang/String;

    sput-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 72
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mToggles:[Landroid/preference/CheckBoxPreference;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mToggles:[Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    aput-object v2, v3, v0

    .line 74
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mToggles:[Landroid/preference/CheckBoxPreference;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method private setWidgetButtons()V
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS_DEFAULT:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    const-string v1, "no_toggles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons_tablet"

    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons_tablet"

    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    const v0, 0x7f050049

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->refreshToggles()V

    .line 64
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 91
    const-string v1, ""

    sput-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mToggles:[Landroid/preference/CheckBoxPreference;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mToggles:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v1, "no_toggles"

    sput-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->mPowerWidgets:Ljava/lang/String;

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget;->setWidgetButtons()V

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method
